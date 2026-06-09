inline.NumInlined: 305
inline.NumDeleted: 163
begin_hunk_0_@_ZNK5arrow7compute7SortKey8ToStringB5cxx11Ev:bb.a

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !23
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %.invoke

bb.i:                                             ; preds = %.invoke
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.ad = phi ptr [ @.str, %bb.h ], [ @.str.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ae = phi i64 [ 3, %bb.h ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !52, !alias.scope !53
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !22, !alias.scope !53
  store i8 0, ptr %i.ag, align 8, !tbaa !23, !alias.scope !53
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54, !noalias !53 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !53 ; 2 uses
  %i.am = icmp ugt ptr %i.aj, %i.al
  %.08.i.i.i = select i1 %i.am, ptr %i.aj, ptr %i.al ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !56, !noalias !53 ; 2 uses
  %i.ap = ptrtoint ptr %.08.i.i.i to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ar)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !53 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !23, !alias.scope !53
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #14
  br label %.body

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.az = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !24
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bb = getelementptr i8, ptr %i.az, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.be, ptr %i.b, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bf, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bf, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #13
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bn, ptr %2, align 8, !tbaa !24
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bt) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn5 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ], [ %i.ac, %bb.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.at, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @_ZNK5arrow8FieldRef8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow7compute8Ordering12IsSuborderOfERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon, align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i8, ptr %i.f, align 4, !tbaa !61, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !68
  %.not = icmp eq i32 %i.k, %i.m
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69
  %i.s = load ptr, ptr %1, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.p, %i.v
  br i1 %i.w, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.y = add nuw i64 %.0913, 1                    ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.aa = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 48
  %.not16 = icmp ult i64 %i.y, %i.ae
  br i1 %.not16, label %bb.f, label %.loopexit, !llvm.loop !71

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.af = phi ptr [ %i.b, %.lr.ph ], [ %i.aa, %bb.e ]
  %.0913 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.e ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %.0913 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.ah, i64 %.0913 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 1, ptr %i.a, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %i.a, ptr %2, align 8, !tbaa !9
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !12
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEbRKSt7variantIJDpT_EESL_EUlOT_T0_E_JRKSG_IJS5_SB_SF_EEEEDcOSO_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(44) %i.ai), !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !7, !range !15, !noundef !16
  %i.ak = trunc nuw i8 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.am = load i32, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp eq i32 %i.am, %i.ao
  %.not12 = select i1 %i.ak, i1 %i.ap, i1 false   ; 3 uses
  br i1 %.not12, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i1 [ %i.i, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %.not12, %bb.e ], [ %.not12, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow7compute8Ordering6EqualsERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZSteqIN5arrow7compute7SortKeyESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.l, %i.r
  br i1 %i.s, label %bb.c, label %_ZSteqIN5arrow7compute7SortKeyESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIN5arrow7compute7SortKeyESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.d ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 1, ptr %i.a, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %i.a, ptr %2, align 8, !tbaa !9
  store ptr %.0810.i.i.i.i.i, ptr %i.t, align 8, !tbaa !12
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEbRKSt7variantIJDpT_EESL_EUlOT_T0_E_JRKSG_IJS5_SB_SF_EEEEDcOSO_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(44) %.011.i.i.i.i.i), !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.u = load i8, ptr %i.a, align 1, !tbaa !7, !range !15, !noundef !16
  %i.v = trunc nuw i8 %i.u to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.w = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 40
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.x, %i.z
  %i.ab = select i1 %i.v, i1 %i.aa, i1 false      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp ne ptr %i.ac, %i.h
  %or.cond.not = select i1 %i.ab, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSteqIN5arrow7compute7SortKeyESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, !llvm.loop !73

_ZSteqIN5arrow7compute7SortKeyESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ae = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.ab, %bb.d ]
  ret i1 %i.ae
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute8Ordering8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(29) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNK5arrow7compute7SortKey8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(44) %i.c)
          to label %bb.b unwind label %.loopexit.split-lp30

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %i.i = load ptr, ptr %3, align 8, !tbaa !17
  %i.j = load i64, ptr %i.g, align 8, !tbaa !22
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.i, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp35 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.n = load i64, ptr %i.h, align 8, !tbaa !23
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.g ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.023.026 = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNK5arrow7compute7SortKey8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.023.026)
          to label %bb.e unwind label %.loopexit29

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.u = load ptr, ptr %3, align 8, !tbaa !17
  %i.v = load i64, ptr %i.g, align 8, !tbaa !22
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.u, i64 noundef %i.v)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit34 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.x = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.z = load i64, ptr %i.h, align 8, !tbaa !23
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.023.026, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %._crit_edge, label %.peel.next, !llvm.loop !74

.loopexit29:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %lpad.loopexit31 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit.split-lp30:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit34:                                      ; preds = %bb.e
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp35:                             ; preds = %bb.b
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp35, %.loopexit34
  %lpad.phi38 = phi { ptr, i32 } [ %lpad.loopexit36, %.loopexit34 ], [ %lpad.loopexit.split-lp37, %.loopexit.split-lp35 ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.f
  %i.af = load i64, ptr %i.h, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.f, %.loopexit29, %.loopexit.split-lp30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn = phi { ptr, i32 } [ %lpad.phi38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp30 ], [ %lpad.loopexit31, %.loopexit29 ], [ %lpad.phi38, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !68
  switch i32 %i.ai, label %bb.i [
    i32 1, label %.invoke
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %.invoke, %._crit_edge, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  br label %.invoke

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %bb.h
  %i.ak = phi ptr [ @.str.6, %bb.h ], [ @.str.5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ]
  %i.al = phi i64 [ 12, %bb.h ], [ 11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 ]
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.ak, i64 noundef %i.al)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.g ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  invoke void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.7) #15
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  unreachable

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !52, !alias.scope !82
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !22, !alias.scope !82
  store i8 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !82
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54, !noalias !82 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !82 ; 2 uses
  %i.at = icmp ugt ptr %i.aq, %i.as
  %.08.i.i.i = select i1 %i.at, ptr %i.aq, ptr %i.as ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !56, !noalias !82 ; 2 uses
  %i.aw = ptrtoint ptr %.08.i.i.i to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.av, i64 noundef %i.ay)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !82 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.an
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !23, !alias.scope !82
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #14
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %i.bg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bg, ptr %2, align 8, !tbaa !24
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !24
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bm, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 2 uses
end_hunk_0
