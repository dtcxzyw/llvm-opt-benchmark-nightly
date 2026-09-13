Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SocketAddress?download=true
inline.NumInlined: 545
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5folly13SocketAddress8describeB5cxx11Ev:bb.a
bb.q:                                             ; preds = %_ZNK5folly13SocketAddress13getAddressStrEPcm.exit50
  %i.ck = icmp slt i64 %i.ci, 0
  br i1 %i.ck, label %.noexc.i54, label %bb.r

.noexc.i54:                                       ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cl = add nuw i64 %i.ci, 1                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %.noexc11.i53, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i52, !prof !80

.noexc11.i53:                                     ; preds = %bb.r
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i52: ; preds = %bb.r
  %i.cn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #33 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !63
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !50
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i52, %_ZNK5folly13SocketAddress13getAddressStrEPcm.exit50
  %i.co = phi ptr [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i52 ], [ %i.ch, %_ZNK5folly13SocketAddress13getAddressStrEPcm.exit50 ] ; 3 uses
  switch i64 %i.ci, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i51
  %i.cp = load i8, ptr %i.b, align 16, !tbaa !50
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !50
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 16 %i.b, i64 %i.ci, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i51
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ci, ptr %i.cq, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci
  store i8 0, ptr %i.cr, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.aa

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i60: ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.cs = zext i16 %i.am to i32
  %i.ct = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 64, ptr noundef nonnull @.str.37, i32 noundef %i.cs) #27 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !78
  %i.cv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #27 ; 8 uses
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %bb.v, label %._crit_edge.i.i63

bb.v:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i60
  %i.cx = icmp slt i64 %i.cv, 0
  br i1 %i.cx, label %.noexc.i66, label %bb.w

.noexc.i66:                                       ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cy = add nuw i64 %i.cv, 1                    ; 2 uses
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %.noexc11.i65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i64, !prof !80

.noexc11.i65:                                     ; preds = %bb.w
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i64: ; preds = %bb.w
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #33 ; 2 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !63
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !50
  br label %._crit_edge.i.i63

._crit_edge.i.i63:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i64, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i60
  %i.db = phi ptr [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i64 ], [ %i.cu, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i60 ] ; 3 uses
  switch i64 %i.cv, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i63
  %i.dc = load i8, ptr %i.c, align 16, !tbaa !50
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !50
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 16 %i.c, i64 %i.cv, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i63
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cv, ptr %i.dd, align 8, !tbaa !79
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv
  store i8 0, ptr %i.de, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i18, %bb.h, %bb.z, %bb.u, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i32
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly13SocketAddresseqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34    ; 4 uses
  switch i8 %i.b, label %bb.b [
    i8 1, label %_ZNK5folly13SocketAddress9getFamilyEv.exit
    i8 0, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !77

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.1, ptr %i.d, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !37
  br label %_ZNK5folly13SocketAddress9getFamilyEv.exit

_ZNK5folly13SocketAddress9getFamilyEv.exit:       ; preds = %bb.a, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.0.i = phi i16 [ %i.h, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !34
  switch i8 %i.j, label %bb.c [
    i8 1, label %_ZNK5folly13SocketAddress9getFamilyEv.exit18
    i8 0, label %_ZNK5folly13SocketAddress9getFamilyEv.exit18.thread
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i15
  ], !prof !77

bb.c:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @.str.1, ptr %i.l, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i15:   ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @.str, ptr %i.n, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZNK5folly13SocketAddress9getFamilyEv.exit18:     ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %.not = icmp eq i16 %.0.i, 1
  br i1 %.not, label %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit, label %bb.o

_ZNK5folly13SocketAddress9getFamilyEv.exit18.thread: ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i16, ptr %i.o, align 4, !tbaa !37
  %.not35 = icmp eq i16 %.0.i, %i.p
  br i1 %.not35, label %_ZNK5folly13SocketAddress9getFamilyEv.exit24, label %bb.o

_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit18
  %cond = icmp eq i8 %i.b, 1
  br i1 %cond, label %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit20, label %bb.d, !prof !83

bb.d:                                             ; preds = %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @.str.1, ptr %i.r, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit20: ; preds = %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !73   ; 2 uses
  %i.u = add i32 %i.t, -2                         ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit20
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !73   ; 2 uses
  %2 = icmp ne i32 %i.x, 2
  %.not14 = icmp eq i32 %i.t, %i.x
  %or.cond = and i1 %2, %.not14
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aa = load ptr, ptr %1, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = zext i32 %i.u to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.z, ptr nonnull %i.ab, i64 %i.ac)
  %i.ad = icmp eq i32 %bcmp, 0
  br label %bb.o

_ZNK5folly13SocketAddress9getFamilyEv.exit24:     ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit18.thread
  switch i16 %.0.i, label %bb.n [
    i16 2, label %bb.g
    i16 10, label %bb.g
    i16 0, label %bb.l
  ]

bb.g:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit24, %_ZNK5folly13SocketAddress9getFamilyEv.exit24
  %cond36 = icmp eq i8 %i.b, 0
  br i1 %cond36, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit27, label %bb.h, !prof !83

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @.str.1, ptr %i.af, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit27: ; preds = %bb.g
  %i.ag = tail call noundef zeroext i1 @_ZN5follyeqERKNS_9IPAddressES2_(ptr noundef nonnull align 4 dereferenceable(22) %1, ptr noundef nonnull align 4 dereferenceable(22) %0)
  br i1 %i.ag, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit27
  %i.ah = load i8, ptr %i.a, align 8, !tbaa !34
  switch i8 %i.ah, label %bb.j [
    i8 0, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit29
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i28
  ], !prof !76

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ai, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @.str.1, ptr %i.aj, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i28:     ; preds = %bb.i
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ak, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @.str, ptr %i.al, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit29: ; preds = %bb.i
  %i.am = load i8, ptr %i.i, align 8, !tbaa !34
  switch i8 %i.am, label %bb.k [
    i8 0, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit31
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i30
  ], !prof !76

bb.k:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit29
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @.str.1, ptr %i.ao, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i30:     ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit29
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ap, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @.str, ptr %i.aq, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit31: ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit29
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i16, ptr %i.at, align 8, !tbaa !82
  %i.av = icmp eq i16 %i.as, %i.au
  br label %bb.o

bb.l:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit24
  %cond37 = icmp eq i8 %i.b, 0
  br i1 %cond37, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit33, label %bb.m, !prof !83

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.aw, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @.str.1, ptr %i.ax, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit33: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !37
  %i.ba = icmp eq i16 %i.az, 0
  br label %bb.o

bb.n:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit24
  tail call void @_ZN5folly6detail16throw_exception_ISt16invalid_argumentJPKcEEEvDpT0_(ptr noundef nonnull @.str.38) #5
  unreachable

bb.o:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit18.thread, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit27, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit31, %bb.f, %bb.e, %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit20, %_ZNK5folly13SocketAddress9getFamilyEv.exit18, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit33
  %.1 = phi i1 [ %i.ba, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit33 ], [ false, %_ZNK5folly13SocketAddress9getFamilyEv.exit18 ], [ false, %_ZNK5folly13SocketAddress9getFamilyEv.exit18.thread ], [ %i.ad, %bb.f ], [ false, %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit20 ], [ false, %bb.e ], [ false, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit27 ], [ %i.av, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit31 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN5follyeqERKNS_9IPAddressES2_(ptr noundef nonnull align 4 dereferenceable(22), ptr noundef nonnull align 4 dereferenceable(22)) local_unnamed_addr #9

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt16invalid_argumentJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt16invalid_argumentEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt16invalid_argumentEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 2 uses
  tail call void @_ZNSt16invalid_argumentC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16invalid_argumentC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly13SocketAddress11prefixMatchERKS0_j(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair", align 4        ; 4 uses
  %4 = alloca %"struct.std::pair", align 4        ; 5 uses
  %5 = alloca %"struct.std::pair", align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34    ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 1, label %_ZNK5folly13SocketAddress9getFamilyEv.exit
    i8 0, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !77

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.1, ptr %i.d, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !37
  br label %_ZNK5folly13SocketAddress9getFamilyEv.exit

_ZNK5folly13SocketAddress9getFamilyEv.exit:       ; preds = %bb.a, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.0.i = phi i16 [ %i.h, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !34
  switch i8 %i.j, label %bb.c [
end_hunk_0
