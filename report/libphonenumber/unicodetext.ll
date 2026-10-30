Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/unicodetext?download=true
inline.NumInlined: 200
inline.NumDeleted: 79
begin_hunk_0_@_ZN4i18n12phonenumbers11UnicodeText19TakeOwnershipOfUTF8EPcii:bb.a
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not.i9 = icmp eq ptr %.02943.i, %.03042.i
  %.pre.i = zext nneg i32 %i.aq to i64            ; 3 uses
  br i1 %.not.i9, label %._crit_edge46.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.02943.i, ptr align 1 %.03042.i, i64 %.pre.i, i1 false)
  br label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %bb.l, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.02943.i, i64 %.pre.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %.pre.i ; 3 uses
  %i.au = icmp eq ptr %i.at, %i.ak
  br i1 %i.au, label %_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge46.i
  %.pre47.i = ptrtoint ptr %i.at to i64
  %.pre49.i = sub i64 %i.am, %.pre47.i
  %.pre51.i = trunc i64 %.pre49.i to i32
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %bb.j
  %.pre-phi52.i = phi i32 [ %.pre51.i, %._crit_edge.i ], [ %i.ap, %bb.j ]
  %.131.i = phi ptr [ %i.at, %._crit_edge.i ], [ %.03042.i, %bb.j ] ; 2 uses
  %.1.i = phi ptr [ %i.as, %._crit_edge.i ], [ %.02943.i, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.av = call i32 @isvalidcharntorune(ptr noundef %.131.i, i32 noundef %.pre-phi52.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not38.i = icmp eq i32 %i.av, 0
  %i.aw = load i32, ptr %i.b, align 4
  %narrow.i = select i1 %.not38.i, i32 1, i32 %i.aw
  %.232.v.i = sext i32 %narrow.i to i64
  %.232.i = getelementptr inbounds i8, ptr %.131.i, i64 %.232.v.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  store i8 32, ptr %.1.i, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ay = icmp ult ptr %.232.i, %i.ak
  br i1 %i.ay, label %bb.j, label %_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit

_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit: ; preds = %._crit_edge46.i, %bb.m, %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit
  %.3.i = phi ptr [ %i.ai, %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit ], [ %i.ax, %bb.m ], [ %i.as, %._crit_edge46.i ]
  %i.az = ptrtoint ptr %.3.i to i64
  %i.ba = ptrtoint ptr %i.ai to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !49
  br label %bb.o

bb.n:                                             ; preds = %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers13LoggerHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.be

bb.o:                                             ; preds = %_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit, %_ZN4i18n12phonenumbers11UnicodeText4Repr15TakeOwnershipOfEPcii.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText25UnsafeTakeOwnershipOfUTF8EPcii(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %_ZN4i18n12phonenumbers11UnicodeText4Repr15TakeOwnershipOfEPcii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !23, !range !20, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  %.not.i = icmp ne ptr %i.a, null
  %or.cond.not.i = and i1 %.not.i, %i.e
  br i1 %or.cond.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %0, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.g, align 4, !tbaa !19
  store i8 1, ptr %i.c, align 8, !tbaa !23
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr15TakeOwnershipOfEPcii.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr15TakeOwnershipOfEPcii.exit: ; preds = %bb.a, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText11PointToUTF8EPKci(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) initializes((17, 18)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %i.c = tail call noundef i32 @_ZN4i18n12phonenumbers6UniLib20SpanInterchangeValidEPKci(ptr noundef %1, i32 noundef %2)
  %i.d = icmp eq i32 %2, %i.c                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 1, !tbaa !51
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !23, !range !20, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit: ; preds = %bb.b, %bb.c, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.l, align 4, !tbaa !19
  store i8 0, ptr %i.g, align 8, !tbaa !23
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.m = load ptr, ptr @_ZN4i18n12phonenumbers6Logger5impl_E, align 8, !tbaa !53, !noalias !74 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55, !noalias !74
  %i.p = icmp slt i32 %i.o, 3
  br i1 %i.p, label %_ZN4i18n12phonenumbers3LOGEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !26, !noalias !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !74
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.m), !noalias !74, !inline_history !0
  br label %_ZN4i18n12phonenumbers3LOGEi.exit

_ZN4i18n12phonenumbers3LOGEi.exit:                ; preds = %bb.e, %bb.f
  %storemerge.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.e ]
  store ptr %storemerge.i, ptr %4, align 8, !tbaa !57, !alias.scope !74
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA39_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(39) @.str.8)
          to label %bb.g unwind label %bb.w       ; 0 uses

bb.g:                                             ; preds = %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !57     ; 3 uses
  %.not.i9 = icmp eq ptr %i.u, null
  br i1 %.not.i9, label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !40
  store i8 10, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.x, align 1, !tbaa !13
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.v
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !13
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit:   ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ah = icmp eq i32 %2, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !23, !range !20, !noundef !24
  %i.ak = trunc nuw i8 %i.aj to i1                ; 3 uses
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit
  br i1 %i.ak, label %bb.k, label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.al) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit.thread

_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit.thread: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 16, i1 false)
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit

bb.m:                                             ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp sle i32 %2, %i.ao
  %or.cond9.i.i = select i1 %i.ak, i1 %i.ap, i1 false
  br i1 %or.cond9.i.i, label %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i, label %bb.n

._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i: ; preds = %bb.m
  %.pre.pre3.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.aq = mul nsw i32 %i.ao, 3
  %i.ar = sdiv i32 %i.aq, 2
  %i.as = add nsw i32 %i.ar, 20
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %2, i32 %i.as) ; 2 uses
  store i32 %.sroa.speculated.i.i.i, ptr %i.an, align 4, !tbaa !19
  %i.at = sext i32 %.sroa.speculated.i.i.i to i64
  %i.au = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #23 ; 3 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not4.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !22
  %i.ay = sext i32 %i.ax to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.av, i64 %i.ay, i1 false)
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.av) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  store ptr %i.au, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i

_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i: ; preds = %bb.q, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i
  %.pre.pre3.i = phi ptr [ %.pre.pre3.pre.i, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i ], [ %i.au, %bb.q ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !22 ; 3 uses
  %i.bb = icmp slt i32 %i.ba, %2
  br i1 %i.bb, label %bb.r, label %5

bb.r:                                             ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %.pre.pre3.i, i64 %i.bc
  %i.be = sub nsw i32 %2, %i.ba
  %i.bf = zext nneg i32 %i.be to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 0, i64 %i.bf, i1 false)
  %.pre.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %bb.r, %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.r ], [ %.pre.pre3.i, %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i ]
  store i32 %2, ptr %i.az, align 8, !tbaa !22
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit: ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit.thread, %5
  %.pre.i.a = phi ptr [ null, %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit.thread ], [ %.pre.i, %5 ]
  store i8 1, ptr %i.ai, align 8, !tbaa !23
  %i.bg = sext i32 %2 to i64                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre.i.a, ptr readonly align 1 %1, i64 %i.bg, i1 false)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !48    ; 5 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.bg ; 3 uses
  %i.bj = icmp sgt i32 %2, 0
  br i1 %i.bj, label %.lr.ph.i, label %_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit

.lr.ph.i:                                         ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i
  %.02943.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.bv, %bb.v ] ; 4 uses
  %.03042.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.232.i, %bb.v ] ; 6 uses
  %i.bl = ptrtoint ptr %.03042.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = call noundef i32 @_ZN4i18n12phonenumbers6UniLib20SpanInterchangeValidEPKci(ptr noundef %.03042.i, i32 noundef %i.bn) ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not.i10 = icmp eq ptr %.02943.i, %.03042.i
  %.pre.i11 = zext nneg i32 %i.bo to i64          ; 3 uses
  br i1 %.not.i10, label %._crit_edge46.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.02943.i, ptr align 1 %.03042.i, i64 %.pre.i11, i1 false)
  br label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %bb.u, %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %.02943.i, i64 %.pre.i11 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %.pre.i11 ; 3 uses
  %i.bs = icmp eq ptr %i.br, %i.bi
  br i1 %i.bs, label %_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge46.i
  %.pre47.i = ptrtoint ptr %i.br to i64
  %.pre49.i = sub i64 %i.bk, %.pre47.i
  %.pre51.i = trunc i64 %.pre49.i to i32
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %bb.s
  %.pre-phi52.i = phi i32 [ %.pre51.i, %._crit_edge.i ], [ %i.bn, %bb.s ]
  %.131.i = phi ptr [ %i.br, %._crit_edge.i ], [ %.03042.i, %bb.s ] ; 2 uses
  %.1.i = phi ptr [ %i.bq, %._crit_edge.i ], [ %.02943.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bt = call i32 @isvalidcharntorune(ptr noundef %.131.i, i32 noundef %.pre-phi52.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not38.i = icmp eq i32 %i.bt, 0
  %i.bu = load i32, ptr %i.b, align 4
  %narrow.i = select i1 %.not38.i, i32 1, i32 %i.bu
  %.232.v.i = sext i32 %narrow.i to i64
  %.232.i = getelementptr inbounds i8, ptr %.131.i, i64 %.232.v.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  store i8 32, ptr %.1.i, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bw = icmp ult ptr %.232.i, %i.bi
  br i1 %i.bw, label %bb.s, label %_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit

_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit: ; preds = %._crit_edge46.i, %bb.v, %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit
  %.3.i = phi ptr [ %i.bh, %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit ], [ %i.bv, %bb.v ], [ %i.bq, %._crit_edge46.i ]
  %i.bx = ptrtoint ptr %.3.i to i64
  %i.by = ptrtoint ptr %i.bh to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !49
  br label %bb.x

bb.w:                                             ; preds = %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers13LoggerHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.cc

bb.x:                                             ; preds = %_ZN4i18n12phonenumbersL25ConvertToInterchangeValidEPci.exit, %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText17UnsafePointToUTF8EPKci(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) initializes((8, 16)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !20, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit: ; preds = %bb.a, %bb.b, %bb.c
  store ptr %1, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.f, align 4, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !23
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText7PointToERKS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23, !range !20, !noundef !24
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit: ; preds = %bb.a, %bb.b, %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %i.i, align 4, !tbaa !19
  store i8 0, ptr %i.d, align 8, !tbaa !23
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText7PointToERKNS1_14const_iteratorES4_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !23, !range !20, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr7PointToEPKci.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.j, ptr %i.l, align 4, !tbaa !19
  store i8 0, ptr %i.c, align 8, !tbaa !23
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText6appendERKS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sge i32 %i.h, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !20
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.k, i1 false
  br i1 %or.cond.i.i, label %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit_crit_edge.i, label %bb.b

._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr6appendEPKci.exit

bb.b:                                             ; preds = %bb.a
  %i.l = mul nsw i32 %i.h, 3
  %i.m = sdiv i32 %i.l, 2
  %i.n = add nsw i32 %i.m, 20
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.n) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %i.g, align 4, !tbaa !19
  %i.o = sext i32 %.sroa.speculated.i.i to i64
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #23 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not4.i.i = icmp eq ptr %i.q, null
  br i1 %.not4.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sext i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.q, i64 %i.r, i1 false)
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #24
  %.pre4.pre.i = load i32, ptr %i.d, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.pre4.i = phi i32 [ %.pre4.pre.i, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  store ptr %i.p, ptr %0, align 8, !tbaa !21
  store i8 1, ptr %i.i, align 8, !tbaa !23
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr6appendEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr6appendEPKci.exit: ; preds = %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit_crit_edge.i, %bb.e
  %i.s = phi i32 [ %i.e, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit_crit_edge.i ], [ %.pre4.i, %bb.e ]
  %i.t = phi ptr [ %.pre.i, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit_crit_edge.i ], [ %i.p, %bb.e ]
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = sext i32 %i.c to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %i.a, i64 %i.w, i1 false)
  %i.x = load i32, ptr %i.d, align 8, !tbaa !22
  %i.y = add nsw i32 %i.x, %i.c
  store i32 %i.y, ptr %i.d, align 8, !tbaa !22
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText6appendERKNS1_14const_iteratorES4_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !12
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !22   ; 5 uses
  %i.i = add nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sge i32 %i.k, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !20
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i, label %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit_crit_edge.i, label %bb.b

._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr6appendEPKci.exit

bb.b:                                             ; preds = %bb.a
  %i.o = mul nsw i32 %i.k, 3
  %i.p = sdiv i32 %i.o, 2
  %i.q = add nsw i32 %i.p, 20
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.q) ; 2 uses
end_hunk_0
