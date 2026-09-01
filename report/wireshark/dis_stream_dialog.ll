Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dis_stream_dialog?download=true
inline.NumInlined: 597
inline.NumDeleted: 260
begin_hunk_0_@_ZN15DisStreamDialog18captureFileClosingEv:bb.a
  tail call void @disstream_reset(ptr noundef %i.c)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15DisStreamDialog17captureFileClosedEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(288) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN14DisAudioStream12stopPlaybackEb(ptr noundef align 8 dereferenceable_or_null(296) %i.b, i1 noundef zeroext true)
  %i.c = getelementptr i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_ZN11QTreeWidget5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QTreeWidget5clearEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZNK15DisStreamDialog14selectedStreamEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QMetaType, align 8           ; 6 uses
  %2 = alloca %class.QMetaType, align 8           ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %class.QVariant, align 8            ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZNK11QTreeWidget11currentItemEv(ptr noundef align 8 dereferenceable_or_null(40) %i.c) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %3, ptr noundef nonnull align 8 dereferenceable_or_null(92) %i.d, i32 noundef 0, i32 noundef 356)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -4                         ; 3 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.k, ptr %1, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIyE8metaTypeE, ptr %2, align 8
  %i.l = icmp eq i64 %i.j, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIyE8metaTypeE to i64)
  br i1 %i.l, label %_Zeq9QMetaTypeS_.exit.thread.i.i, label %bb.c

_Zeq9QMetaTypeS_.exit.thread.i.i:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_Zeq9QMetaTypeS_.exit.thread9.i.i, label %bb.d

_Zeq9QMetaTypeS_.exit.thread9.i.i:                ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 12
  %i.n = load atomic i32, ptr %i.m monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.not.i.i.i.i, label %bb.e, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %1)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i unwind label %bb.j

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.e, %bb.d
  %.1.i.i.i.i = phi i32 [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.p = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIyE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.f, label %_Zeq9QMetaTypeS_.exit.i.i

bb.f:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.q = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
          to label %_Zeq9QMetaTypeS_.exit.i.i unwind label %bb.j

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.f, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.p, %_ZNK9QMetaType2idEi.exit.i.i.i ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  %i.s = load i64, ptr %3, align 8
  br label %_ZNK8QVariant5valueIyEET_v.exit

bb.h:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8
  %i.t = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %3)
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %bb.h
  %i.u = load i64, ptr %i.h, align 8
  %i.v = and i64 %i.u, 1
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc8
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.z
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.i, %.noexc8
  %i.ab = phi ptr [ %i.aa, %bb.i ], [ %3, %.noexc8 ]
  %i.ac = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.t, ptr noundef %i.ab, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIyE8metaTypeE, ptr noundef nonnull %i.a)
          to label %.noexc9 unwind label %bb.j    ; 0 uses

.noexc9:                                          ; preds = %_ZNK8QVariant9constDataEv.exit.i.i
  %i.ad = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNK8QVariant5valueIyEET_v.exit

_ZNK8QVariant5valueIyEET_v.exit:                  ; preds = %.noexc9, %bb.g
  %.0.i.i = phi i64 [ %i.s, %bb.g ], [ %i.ad, %.noexc9 ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ae = inttoptr i64 %.0.i.i to ptr
  br label %bb.k

bb.j:                                             ; preds = %_ZNK8QVariant9constDataEv.exit.i.i, %bb.h, %bb.f, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.af

bb.k:                                             ; preds = %bb.a, %_ZNK8QVariant5valueIyEET_v.exit
  %.0 = phi ptr [ %i.ae, %_ZNK8QVariant5valueIyEET_v.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK11QTreeWidget11currentItemEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15DisStreamDialog13updateStreamsEv(ptr noundef align 8 dereferenceable_or_null(288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QVariant, align 8            ; 7 uses
  %2 = alloca %class.QFlags.15, align 4           ; 5 uses
  %3 = alloca %class.QVariant, align 8            ; 7 uses
  %4 = alloca %class.QVariant, align 8            ; 7 uses
  %5 = alloca %class.QVariant, align 8            ; 7 uses
  %6 = alloca %class.QVariant, align 8            ; 7 uses
  %7 = alloca %class.QVariant, align 8            ; 7 uses
  %8 = alloca %class.QVariant, align 8            ; 7 uses
  %9 = alloca %class.QVariant, align 8            ; 7 uses
  %10 = alloca %class.QVariant, align 8           ; 7 uses
  %11 = alloca %class.QVariant, align 8           ; 7 uses
  %12 = alloca %class.QVariant, align 8           ; 7 uses
  %13 = alloca %class.QVariant, align 8           ; 7 uses
  %14 = alloca %class.QString, align 16           ; 5 uses
  %15 = alloca %class.QVariant, align 8           ; 7 uses
  %16 = alloca %class.QVariant, align 8           ; 7 uses
  %17 = alloca %class.QString, align 16           ; 5 uses
  %18 = alloca %class.QVariant, align 8           ; 7 uses
  %19 = alloca %class.QVariant, align 8           ; 7 uses
  %20 = alloca %class.QVariant, align 8           ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %21 = alloca %class.QString, align 8            ; 9 uses
  %22 = alloca %class.QVariant, align 8           ; 7 uses
  %23 = alloca %class.QString, align 8            ; 9 uses
  %24 = alloca %class.QVariant, align 8           ; 7 uses
  %25 = alloca %class.QString, align 16           ; 10 uses
  %26 = alloca %class.QString, align 8            ; 9 uses
  %27 = alloca %class.QVariant, align 8           ; 7 uses
  %28 = alloca %class.QString, align 16           ; 10 uses
  %29 = alloca %class.QString, align 8            ; 9 uses
  %30 = alloca %class.QVariant, align 8           ; 7 uses
  %31 = alloca %class.QString, align 8            ; 9 uses
  %32 = alloca %class.QString, align 8            ; 11 uses
  %33 = alloca %class.QVariant, align 8           ; 7 uses
  %34 = alloca %class.QString, align 8            ; 9 uses
  %35 = alloca %class.QString, align 8            ; 9 uses
  %36 = alloca %class.QString, align 8            ; 9 uses
  %37 = alloca %class.QString, align 8            ; 11 uses
  %38 = alloca %class.QString, align 8            ; 9 uses
  %39 = alloca %class.QVariant, align 8           ; 7 uses
  %40 = alloca %class.QString, align 8            ; 9 uses
  %41 = alloca %class.QVariant, align 8           ; 7 uses
  %42 = alloca %class.QString, align 8            ; 9 uses
  %43 = alloca %class.QVariant, align 8           ; 7 uses
  %44 = alloca %class.QString, align 8            ; 9 uses
  %45 = alloca %class.QVariant, align 8           ; 7 uses
  %46 = alloca %class.QString, align 8            ; 9 uses
  %47 = alloca %class.QVariant, align 8           ; 7 uses
  %48 = alloca %class.QString, align 8            ; 9 uses
  %49 = alloca %class.QVariant, align 8           ; 7 uses
  %50 = alloca %class.QString, align 8            ; 10 uses
  %i.b = tail call noundef ptr @_ZNK15DisStreamDialog14selectedStreamEv(ptr noundef align 8 dereferenceable_or_null(288) %0) ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !36, !noundef !37
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 80
  %i.g = load i8, ptr %i.f, align 8, !range !36, !noundef !37
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef align 8 dereferenceable_or_null(288) %0)
  br label %_ZN14QSignalBlockerD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 144        ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.m, null                ; 3 uses
  br i1 %.not.i, label %_ZN14QSignalBlockerC2EP7QObject.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_ZN7QObject12blockSignalsEb(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.m, i1 noundef zeroext true) #20
  %.pre = load ptr, ptr %i.l, align 8
  br label %_ZN14QSignalBlockerC2EP7QObject.exit

_ZN14QSignalBlockerC2EP7QObject.exit:             ; preds = %bb.d, %bb.e
  %i.o = phi ptr [ null, %bb.d ], [ %.pre, %bb.e ]
  %i.p = phi i1 [ false, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  invoke void @_ZN9QTreeView17setSortingEnabledEb(ptr noundef align 8 dereferenceable_or_null(40) %i.o, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZN14QSignalBlockerC2EP7QObject.exit
  %i.q = load ptr, ptr %i.l, align 8
  invoke void @_ZN11QTreeWidget5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.q)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 216
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke ptr @g_list_first(ptr noundef %i.s)
          to label %.preheader unwind label %bb.l ; 2 uses

.preheader:                                       ; preds = %bb.g
  %.not586 = icmp eq ptr %i.t, null
  br i1 %.not586, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not439 = icmp eq ptr %i.b, null
  %i.u = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %37, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.dd
  %.0107588 = phi ptr [ null, %.lr.ph ], [ %.1108, %bb.dd ] ; 2 uses
  %.0109587 = phi ptr [ %i.t, %.lr.ph ], [ %i.jl, %bb.dd ] ; 2 uses
  %i.ac = load ptr, ptr %.0109587, align 8        ; 21 uses
  %i.ad = invoke noalias noundef dereferenceable_or_null(96) ptr @_Znwm(i64 noundef 96) #22
          to label %bb.i unwind label %bb.m       ; 60 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.l, align 8
  invoke void @_ZN15QTreeWidgetItemC2EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(92) %i.ad, ptr noundef %i.ae, i32 noundef 0)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN15DisStreamDialog23DisStreamTreeWidgetItemE, i64 16), ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.af = ptrtoint ptr %i.ac to i64
  store i64 %i.af, ptr %i.a, align 8
  invoke void @_ZN8QVariantC1E9QMetaTypePKv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %20, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIyE8metaTypeE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8QVariant9fromValueIyEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS2_.exit unwind label %bb.o

_ZN8QVariant9fromValueIyEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS2_.exit: ; preds = %bb.j
  %i.ag = load ptr, ptr %i.ad, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef align 8 dereferenceable_or_null(92) %i.ad, i32 noundef 0, i32 noundef 356, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZN8QVariant9fromValueIyEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS2_.exit
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.aj = icmp ne ptr %i.b, %i.ac
  %i.ak = icmp ne ptr %.0107588, null
  %or.cond171 = select i1 %.not439, i1 %i.ak, i1 %i.aj
  %.1108 = select i1 %or.cond171, ptr %.0107588, ptr %i.ad ; 2 uses
  %i.al = invoke ptr @address_to_display(ptr noundef null, ptr noundef %i.ac)
          to label %bb.r unwind label %bb.m       ; 4 uses

bb.l:                                             ; preds = %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %._crit_edge, %bb.g, %bb.f, %_ZN14QSignalBlockerC2EP7QObject.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body330

bb.m:                                             ; preds = %_ZN7QStringD2Ev.exit328, %bb.dc, %bb.db, %bb.r, %bb.k, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body330

bb.n:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef 96) #23
  br label %.body330

bb.o:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZN8QVariant9fromValueIyEENSt9enable_ifIXsr3stdE23is_copy_constructible_vIT_EES_E4typeERKS2_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %20) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %i.ap, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body330

bb.r:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %i.ac, i64 32
  %i.as = invoke ptr @address_to_display(ptr noundef null, ptr noundef %i.ar)
          to label %bb.s unwind label %bb.m       ; 4 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.at = getelementptr i8, ptr %i.ac, i64 136    ; 2 uses
  %.val177 = load i64, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.ac, i64 144    ; 2 uses
  %.val178 = load i32, ptr %i.au, align 8
  %i.av = sitofp i64 %.val177 to double
  %i.aw = sitofp i32 %.val178 to double
  %i.ax = fdiv double %i.aw, 1.000000e+09
  %i.ay = fadd double %i.ax, %i.av
  invoke void @_ZN7QString6numberEdci(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %21, double noundef %i.ay, i8 noundef signext 102, i32 noundef 6)
          to label %bb.t unwind label %bb.de

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN8QVariantC1ERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(32) %19, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %.noexc unwind label %bb.df

.noexc:                                           ; preds = %bb.t
  %i.az = load ptr, ptr %i.ad, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef align 8 dereferenceable_or_null(92) %i.ad, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %.noexc
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body

bb.v:                                             ; preds = %.noexc
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.bd = load ptr, ptr %21, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.v
  %i.be = atomicrmw sub ptr %i.bd, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.be, 1
  br i1 %.not.i.i, label %bb.w, label %_ZN7QStringD2Ev.exit

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bf = load ptr, ptr %21, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bf, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %.val175 = load i64, ptr %i.at, align 8
  %.val176 = load i32, ptr %i.au, align 8
  %i.bg = sitofp i64 %.val175 to double
  %i.bh = sitofp i32 %.val176 to double
  %i.bi = fdiv double %i.bh, 1.000000e+09
  %i.bj = fadd double %i.bi, %i.bg
  invoke void @_ZN8QVariantC1Ed(ptr noundef nonnull align 8 dereferenceable_or_null(32) %22, double noundef %i.bj)
          to label %bb.x unwind label %bb.dh

bb.x:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.bk = load ptr, ptr %i.ad, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef align 8 dereferenceable_or_null(92) %i.ad, i32 noundef 0, i32 noundef 256, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.y unwind label %bb.di

bb.y:                                             ; preds = %bb.x
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.bn = getelementptr i8, ptr %i.ac, i64 152    ; 2 uses
  %.val173 = load i64, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.ac, i64 160    ; 2 uses
  %.val174 = load i32, ptr %i.bo, align 8
  %i.bp = sitofp i64 %.val173 to double
  %i.bq = sitofp i32 %.val174 to double
  %i.br = fdiv double %i.bq, 1.000000e+09
  %i.bs = fadd double %i.br, %i.bp
  invoke void @_ZN7QString6numberEdci(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %23, double noundef %i.bs, i8 noundef signext 102, i32 noundef 6)
          to label %bb.z unwind label %bb.dk

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZN8QVariantC1ERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(32) %18, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %.noexc179 unwind label %bb.dl

.noexc179:                                        ; preds = %bb.z
  %i.bt = load ptr, ptr %i.ad, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef align 8 dereferenceable_or_null(92) %i.ad, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc179
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body180

bb.ab:                                            ; preds = %.noexc179
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.bx = load ptr, ptr %23, align 8              ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i183, label %_ZN7QStringD2Ev.exit186, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i184

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i184:   ; preds = %bb.ab
  %i.by = atomicrmw sub ptr %i.bx, i32 1 acq_rel, align 4
  %.not.i.i185 = icmp eq i32 %i.by, 1
  br i1 %.not.i.i185, label %bb.ac, label %_ZN7QStringD2Ev.exit186

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i184
  %i.bz = load ptr, ptr %23, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bz, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit186

_ZN7QStringD2Ev.exit186:                          ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i184, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %.val = load i64, ptr %i.bn, align 8
  %.val172 = load i32, ptr %i.bo, align 8
  %i.ca = sitofp i64 %.val to double
  %i.cb = sitofp i32 %.val172 to double
  %i.cc = fdiv double %i.cb, 1.000000e+09
  %i.cd = fadd double %i.cc, %i.ca
  invoke void @_ZN8QVariantC1Ed(ptr noundef nonnull align 8 dereferenceable_or_null(32) %24, double noundef %i.cd)
          to label %bb.ad unwind label %bb.dn

bb.ad:                                            ; preds = %_ZN7QStringD2Ev.exit186
  %i.ce = load ptr, ptr %i.ad, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef align 8 dereferenceable_or_null(92) %i.ad, i32 noundef 1, i32 noundef 256, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ae unwind label %bb.do

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %.not.i.i187 = icmp eq ptr %i.al, null
  br i1 %.not.i.i187, label %_ZN7QStringD2Ev.exit.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ae
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.al) #20
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %.split.i.i, %bb.ae
  %.sink5.i.i = phi i64 [ %i.ch, %.split.i.i ], [ 0, %bb.ae ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, i64 %.sink5.i.i, ptr %i.al)
          to label %bb.af unwind label %bb.dq

bb.af:                                            ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ci = load <2 x ptr>, ptr %17, align 16
  store <2 x ptr> %i.ci, ptr %25, align 16
end_hunk_0
