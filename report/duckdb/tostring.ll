inline.NumInlined: 298
inline.NumDeleted: 135
begin_hunk_0_@_ZN10duckdb_re2L12AppendCCCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.am) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.u

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.aq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.w

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.41, i32 noundef %1)
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #16
          to label %.noexc30 unwind label %bb.v

.noexc30:                                         ; preds = %bb.t
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29: ; preds = %bb.s
  %i.ay = load ptr, ptr %3, align 8, !tbaa !42
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32 unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29
  %i.ba = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32
  call void @_ZdlPv(ptr noundef %i.ba) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit21, %bb.e
  ret void

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29, %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.be) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ]
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE12WalkInternalEPS0_ib(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %5 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  tail call void @_ZN10duckdb_re26Regexp6WalkerIiE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i8 0, ptr %4, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.c)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.42, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.l) #17
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #15
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.thread82

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %1, ptr %5, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.s, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %2, ptr %i.t, align 4, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  %.not.i.i.i = icmp eq ptr %i.w, %i.z
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !89
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !74
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.thread80

.thread80:                                        ; preds = %.thread80.backedge, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !75, !noalias !92 ; 2 uses
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !71, !noalias !92
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit

bb.g:                                             ; preds = %.thread80
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !70, !noalias !92
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit: ; preds = %.thread80, %bb.g
  %i.ar = phi ptr [ %i.aq, %bb.g ], [ %i.ak, %.thread80 ] ; 12 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79 ; 6 uses
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 6 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !86 ; 2 uses
  %cond = icmp eq i32 %i.av, -1
  br i1 %cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.ae, align 4, !tbaa !32
  %i.ay = icmp slt i32 %i.aw, 1
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ai, align 8, !tbaa !17
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !87
  %i.bb = load ptr, ptr %0, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.at, i32 noundef %i.ba)
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !95
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !87
  %i.bh = load ptr, ptr %0, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.at, i32 noundef %i.bg, ptr noundef nonnull %i.a) ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ar, i64 -16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !96
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !95, !range !33, !noundef !34
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8, !tbaa !86
  %i.bo = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !82 ; 2 uses
  switch i16 %i.bq, label %bb.m [
    i16 1, label %bb.l
    i16 0, label %.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds i8, ptr %i.ar, i64 -12
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !83
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bs = zext i16 %i.bq to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #19
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !83
  %.pre87.pre.pre = load i32, ptr %i.au, align 8, !tbaa !86
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  %.pre87.pre = phi i32 [ 0, %bb.k ], [ %.pre87.pre.pre, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.y

bb.o:                                             ; preds = %.thread, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %.pre87 = phi i32 [ %.pre87.pre, %.thread ], [ %i.av, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 6 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !82 ; 3 uses
  %.not71 = icmp eq i16 %i.bw, 0
  br i1 %.not71, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp eq i16 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.0.i = select i1 %i.bx, ptr %i.by, ptr %i.bz   ; 3 uses
  %i.ca = zext i16 %i.bw to i32
  %.not72 = icmp slt i32 %.pre87, %i.ca
  br i1 %.not72, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp sgt i32 %.pre87, 0
  %or.cond = and i1 %3, %i.cb
  br i1 %or.cond, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.phi.trans.insert = sext i32 %.pre87 to i64
  %.phi.trans.insert86 = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert86, align 8, !tbaa !90
  br label %._crit_edge90

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %.pre87, -1
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.cg = zext nneg i32 %.pre87 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !90 ; 2 uses
  %i.cj = icmp eq ptr %i.cf, %i.ci
  br i1 %i.cj, label %bb.s, label %._crit_edge90

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cd
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = load ptr, ptr %0, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.cn)
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !83
  %i.ct = load i32, ptr %i.au, align 8, !tbaa !86
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !3
  %i.cw = load i32, ptr %i.au, align 8, !tbaa !86
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.au, align 8, !tbaa !86
  br label %.thread80.backedge

._crit_edge90:                                    ; preds = %bb.r, %._crit_edge
  %7 = phi ptr [ %.pre, %._crit_edge ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cy = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !96
  store ptr %7, ptr %6, align 8, !tbaa !79
  store i32 -1, ptr %i.af, align 8, !tbaa !86
  store i32 %i.cz, ptr %i.ag, align 4, !tbaa !87
  store ptr null, ptr %i.ah, align 8, !tbaa !83
  %i.da = load ptr, ptr %i.v, align 8, !tbaa !74  ; 2 uses
  %i.db = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -32
  %.not.i.i.i74 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i.i74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !89
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store ptr %i.de, ptr %i.v, align 8, !tbaa !74
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

bb.u:                                             ; preds = %._crit_edge90
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.thread80.backedge

.thread80.backedge:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75, %bb.s, %bb.ad
  br label %.thread80, !llvm.loop !97

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87
  %i.dh = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !96
  %i.dj = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !83
  %i.dl = load ptr, ptr %0, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.at, i32 noundef %i.dg, i32 noundef %i.di, ptr noundef %i.dk, i32 noundef %.pre87) ; 3 uses
  %i.dp = load i16, ptr %i.bv, align 2, !tbaa !82
  %i.dq = icmp ugt i16 %i.dp, 1
  br i1 %i.dq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %i.dj, align 8, !tbaa !83 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.v, %bb.x, %bb.w, %bb.i
  %.3 = phi i32 [ %i.be, %bb.i ], [ %i.do, %bb.w ], [ %i.do, %bb.x ], [ %i.do, %bb.v ], [ %i.bk, %bb.n ] ; 4 uses
  %i.dt = load ptr, ptr %i.v, align 8, !tbaa !74  ; 2 uses
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.y
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -32 ; 4 uses
  store ptr %i.dv, ptr %i.v, align 8, !tbaa !74
  %i.dw = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %.thread82, label %bb.z

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.du) #17
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 2 uses
  store ptr %i.dz, ptr %i.ad, align 8, !tbaa !70
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !39 ; 3 uses
  store ptr %i.ea, ptr %i.ac, align 8, !tbaa !71
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 512
  store ptr %i.eb, ptr %i.x, align 8, !tbaa !72
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 480 ; 3 uses
  store ptr %i.ec, ptr %i.v, align 8, !tbaa !74
  %i.ed = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %.thread82, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.z:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.ef = icmp eq ptr %i.dv, %i.du
  br i1 %i.ef, label %bb.aa, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %i.ad, align 8, !tbaa !70, !noalias !98
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !39
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 512
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76: ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %bb.z, %bb.aa
  %i.ek = phi ptr [ %i.ej, %bb.aa ], [ %i.dv, %bb.z ], [ %i.ec, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ] ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !83 ; 2 uses
  %.not73 = icmp eq ptr %i.em, null
  br i1 %.not73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 -24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !86
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ep
  store i32 %.3, ptr %i.eq, align 4, !tbaa !3
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.er = getelementptr inbounds i8, ptr %i.ek, i64 -12
  store i32 %.3, ptr %i.er, align 4, !tbaa !101
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.es = getelementptr inbounds i8, ptr %i.ek, i64 -24 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !86
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !86
  br label %.thread80.backedge

.thread82:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZN10LogMessageD2Ev.exit
  %.2 = phi i32 [ %2, %_ZN10LogMessageD2Ev.exit ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit ]
  ret i32 %.2
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ag = load ptr, ptr %0, align 8, !tbaa !36
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !39
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !89
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !70
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !72
  store ptr %i.as, ptr %i.a, align 8, !tbaa !74
  ret void
}

end_hunk_0
