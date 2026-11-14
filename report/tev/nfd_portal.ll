Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nfd_portal?download=true
inline.NumInlined: 236
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_120MakeUniqueObjectPathEPPKc:_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit
  br i1 %i.bp, label %select.unfold.i, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20
  %.027.i = phi i64 [ %i.cf, %.lr.ph.i20 ], [ %.027.i.unr, %.lr.ph.i20.prol.loopexit ] ; 3 uses
  %.11626.i = phi ptr [ %i.ce, %.lr.ph.i20 ], [ %.11626.i.unr, %.lr.ph.i20.prol.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.027.i ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %i.bs = and i8 %i.br, 15
  %narrow.i = add nuw nsw i8 %i.bs, 65
  %i.bt = getelementptr inbounds nuw i8, ptr %.11626.i, i64 1
  store i8 %narrow.i, ptr %.11626.i, align 1, !tbaa !38
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !38
  %i.bv = lshr i8 %i.bu, 4
  %narrow19.i = add nuw nsw i8 %i.bv, 65
  %i.bw = getelementptr inbounds nuw i8, ptr %.11626.i, i64 2
  store i8 %narrow19.i, ptr %i.bt, align 1, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.027.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !38
  %i.ca = and i8 %i.bz, 15
  %narrow.i.1 = add nuw nsw i8 %i.ca, 65
  %i.cb = getelementptr inbounds nuw i8, ptr %.11626.i, i64 3
  store i8 %narrow.i.1, ptr %i.bw, align 1, !tbaa !38
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !38
  %i.cd = lshr i8 %i.cc, 4
  %narrow19.i.1 = add nuw nsw i8 %i.cd, 65
  %i.ce = getelementptr inbounds nuw i8, ptr %.11626.i, i64 4 ; 2 uses
  store i8 %narrow19.i.1, ptr %i.cb, align 1, !tbaa !38
  %i.cf = add nuw nsw i64 %.027.i, 2              ; 2 uses
  %.not18.i.1 = icmp eq i64 %i.cf, %i.ac
  br i1 %.not18.i.1, label %select.unfold.i, label %.lr.ph.i20, !llvm.loop !86

select.unfold.i:                                  ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20, %middle.block58, %vec.epilog.middle.block73, %bb.c, %bb.b
  %.2.i = phi ptr [ %.01528.i, %bb.b ], [ %.01528.i, %bb.c ], [ %i.ba, %vec.epilog.middle.block73 ], [ %i.an, %middle.block58 ], [ %.lcssa.unr, %.lr.ph.i20.prol.loopexit ], [ %i.ce, %.lr.ph.i20 ] ; 2 uses
  %.1.i = phi i64 [ %.01429.i, %bb.b ], [ %i.ah, %bb.c ], [ %i.ah, %vec.epilog.middle.block73 ], [ %i.ah, %middle.block58 ], [ %i.ah, %.lr.ph.i20 ], [ %i.ah, %.lr.ph.i20.prol.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not.i21 = icmp eq i64 %.1.i, 0
  br i1 %.not.i21, label %_ZN12_GLOBAL__N_121Generate64RandomCharsEPc.exit, label %bb.a

_ZN12_GLOBAL__N_121Generate64RandomCharsEPc.exit: ; preds = %select.unfold.i, %.thread.i
  %.01524.i = phi ptr [ %.01528.i, %.thread.i ], [ %.2.i, %select.unfold.i ]
  store i8 0, ptr %.01524.i, align 1, !tbaa !38
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler9SubscribeEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.DBusError, align 8          ; 5 uses
  %3 = alloca %struct.DBusError, align 8          ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @dbus_error_init(ptr noundef nonnull %2) #15
  %i.b = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.c = load ptr, ptr %0, align 8, !tbaa !32
  call void @dbus_bus_remove_match(ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %2) #15
  %i.d = load ptr, ptr %0, align 8, !tbaa !32
  call void @free(ptr noundef %i.d) #15
  store ptr null, ptr %0, align 8, !tbaa !32
  call void @dbus_error_free(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZN12_GLOBAL__N_116dbus_unique_nameE, align 8, !tbaa !20 ; 2 uses
  %i.f = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #16 ; 6 uses
  %i.g = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #16 ; 4 uses
  %i.h = add i64 %i.f, 138
  %i.i = add i64 %i.h, %i.g
  %i.j = call noalias noundef ptr @malloc(i64 noundef %i.i) #17 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.j, ptr noundef nonnull align 16 dereferenceable(60) @_ZN12_GLOBAL__N_132STR_RESPONSE_SUBSCRIPTION_PATH_1E, i64 60, i1 false), !tbaa !38
  %scevgep.i = getelementptr i8, ptr %i.j, i64 60 ; 2 uses
  %.not7.i.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not7.i.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit22.i, label %.lr.ph.i18.preheader.i

.lr.ph.i18.preheader.i:                           ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i, ptr nonnull readonly align 1 %1, i64 %i.f, i1 false), !tbaa !38
  %i.k = getelementptr i8, ptr %i.j, i64 %i.f
  %scevgep50.i = getelementptr i8, ptr %i.k, i64 60
  br label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit22.i

_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit22.i: ; preds = %.lr.ph.i18.preheader.i, %bb.c
  %.0.lcssa.i.i = phi ptr [ %scevgep.i, %bb.c ], [ %scevgep50.i, %.lr.ph.i18.preheader.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %.0.lcssa.i.i, ptr noundef nonnull align 16 dereferenceable(76) @_ZN12_GLOBAL__N_132STR_RESPONSE_SUBSCRIPTION_PATH_2E, i64 76, i1 false), !tbaa !38
  %i.l = getelementptr i8, ptr %i.j, i64 %i.f
  %scevgep51.i = getelementptr i8, ptr %i.l, i64 136 ; 2 uses
  %.not7.i29.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not7.i29.i, label %_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler28MakeResponseSubscriptionPathEPKcS2_.exit, label %.lr.ph.i30.preheader.i

.lr.ph.i30.preheader.i:                           ; preds = %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit22.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep51.i, ptr nonnull readonly align 1 %i.e, i64 %i.g, i1 false), !tbaa !38
  %i.m = getelementptr i8, ptr %i.j, i64 %i.g
  %i.n = getelementptr i8, ptr %i.m, i64 %i.f
  %scevgep52.i = getelementptr i8, ptr %i.n, i64 136
  br label %_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler28MakeResponseSubscriptionPathEPKcS2_.exit

_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler28MakeResponseSubscriptionPathEPKcS2_.exit: ; preds = %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit22.i, %.lr.ph.i30.preheader.i
  %.0.lcssa.i34.i = phi ptr [ %scevgep51.i, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit22.i ], [ %scevgep52.i, %.lr.ph.i30.preheader.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.lcssa.i34.i, i64 1
  store i8 39, ptr %.0.lcssa.i34.i, align 1, !tbaa !38
  store i8 0, ptr %i.o, align 1, !tbaa !38
  store ptr %i.j, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @dbus_error_init(ptr noundef nonnull %3) #15
  %i.p = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.q = load ptr, ptr %0, align 8, !tbaa !32
  call void @dbus_bus_add_match(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %3) #15
  %i.r = call i32 @dbus_error_is_set(ptr noundef nonnull %3) #15
  %.not2 = icmp eq i32 %i.r, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler28MakeResponseSubscriptionPathEPKcS2_.exit
  call void @dbus_error_free(ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  call void @dbus_move_error(ptr noundef nonnull %3, ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18dbus_errE, i64 8), align 8, !tbaa !24
  store ptr %i.s, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler28MakeResponseSubscriptionPathEPKcS2_.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler28MakeResponseSubscriptionPathEPKcS2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.0
}

declare ptr @dbus_message_new_method_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dbus_connection_send_with_reply_and_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @dbus_move_error(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dbus_connection_pop_message(ptr noundef) local_unnamed_addr #1

declare i32 @dbus_message_is_signal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dbus_connection_read_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare void @dbus_bus_add_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dbus_error_is_set(ptr noundef) local_unnamed_addr #1

declare void @dbus_bus_remove_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_17EmptyFnEPv(ptr nofree readnone captures(none) %0) #7 {
bb.a:
  ret void
}

declare void @dbus_message_iter_init_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_131AppendOpenFileQueryParentWindowER15DBusMessageIterRK17nfdwindowhandle_tRNS_11DestroyFuncE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %.0.val, ptr %.8.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca [21 x i8], align 16               ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  switch i64 %.0.val, label %bb.i [
    i64 3, label %bb.b
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr %i.c, ptr %i.d, align 8, !tbaa !20
  %i.e = ptrtoint ptr %.8.val to i64
  store <4 x i8> <i8 120, i8 49, i8 49, i8 58>, ptr %i.c, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi ptr [ %i.a, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.f = and i64 %.0.i, 15                        ; 3 uses
  %i.g = icmp samesign ult i64 %i.f, 10
  %i.h = or disjoint i64 %i.f, 48
  %i.i = add nuw nsw i64 %i.f, 55
  %i.j = select i1 %i.g, i64 %i.h, i64 %i.i
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 7 uses
  store i8 %i.k, ptr %.08.i, align 1, !tbaa !38
  %i.m = lshr i64 %.0.i, 4                        ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %iter.check, label %bb.c, !llvm.loop !90

iter.check:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  %i.o = ptrtoaddr ptr %i.l to i64                ; 3 uses
  %i.p = sub i64 %i.o, %i.b                       ; 4 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.p, 16
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.o, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.p, %i.q                 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %n.vec   ; 2 uses
  %i.s = sub i64 0, %n.vec
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index
  %i.u = sub i64 0, %index
  %i.v = getelementptr i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16
  %wide.load8 = load <16 x i8>, ptr %i.w, align 1, !tbaa !38
  %reverse9 = shufflevector <16 x i8> %wide.load8, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse9, ptr %next.gep, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, 0
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_121FormatUIntToHexStringEPcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.q, 8
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.y = and i64 %i.o, 7                          ; 2 uses
  %n.vec10 = sub i64 %i.p, %i.y                   ; 3 uses
  %i.z = getelementptr i8, ptr %i.n, i64 %n.vec10 ; 2 uses
  %i.aa = sub i64 0, %n.vec10
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.n, i64 %index11
  %i.ac = sub i64 0, %index11
  %next.gep13 = getelementptr i8, ptr %i.l, i64 %i.ac
  %i.ad = getelementptr inbounds i8, ptr %next.gep13, i64 -8
  %wide.load14 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !38
  %reverse15 = shufflevector <8 x i8> %wide.load14, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse15, ptr %next.gep12, align 1, !tbaa !38
  %index.next16 = add nuw i64 %index11, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next16, %n.vec10
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.y, 0
  br i1 %cmp.n17, label %_ZN12_GLOBAL__N_121FormatUIntToHexStringEPcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.af = getelementptr inbounds i8, ptr %.057.i.i, i64 -1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.08.i.i, align 1, !tbaa !38
  %.not.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_121FormatUIntToHexStringEPcm.exit, label %.lr.ph.i.i, !llvm.loop !93

_ZN12_GLOBAL__N_121FormatUIntToHexStringEPcm.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ah, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %.lcssa, align 1, !tbaa !38
  %i.ai = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %0, i32 noundef 115, ptr noundef nonnull %i.d) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr @_ZN12_GLOBAL__N_115wayland_displayE, align 8, !tbaa !14
  %i.ak = icmp ne ptr %i.aj, null
  %i.al = load ptr, ptr @_ZN12_GLOBAL__N_123wayland_xdg_exporter_v1E, align 8 ; 3 uses
  %i.am = icmp ne ptr %i.al, null
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = tail call i32 @wl_proxy_get_version(ptr noundef nonnull %i.al) #15
  %i.ao = tail call noundef ptr (ptr, i32, ptr, i32, i32, ...) @wl_proxy_marshal_flags(ptr noundef nonnull %i.al, i32 noundef 1, ptr noundef nonnull @zxdg_exported_v1_interface, i32 noundef %i.an, i32 noundef 0, i64 noundef 0, ptr noundef %.8.val) #15 ; 4 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %0, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_19STR_EMPTYE) #15 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.aq = tail call noundef i32 @wl_proxy_add_listener(ptr noundef nonnull %i.ao, ptr noundef nonnull @_ZN12_GLOBAL__N_132wayland_xdg_exported_v1_listenerE, ptr noundef nonnull %0) #15 ; 0 uses
  %i.ar = load ptr, ptr @_ZN12_GLOBAL__N_115wayland_displayE, align 8, !tbaa !14
  %i.as = tail call i32 @wl_display_roundtrip(ptr noundef %i.ar) #15 ; 0 uses
  tail call void @wl_proxy_set_user_data(ptr noundef nonnull %i.ao, ptr noundef null) #15
  store ptr @_ZN12_GLOBAL__N_118DestroyXdgExportedEPv, ptr %1, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ao, ptr %i.at, align 8, !tbaa !35
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.au = tail call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %0, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_19STR_EMPTYE) #15 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.av = tail call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %0, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_19STR_EMPTYE) #15 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i, %bb.h, %_ZN12_GLOBAL__N_121FormatUIntToHexStringEPcm.exit
  ret void
}

declare i32 @dbus_message_iter_open_container(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_141AppendOpenFileQueryDictEntryCurrentFolderER15DBusMessageIterPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %3 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %0, i32 noundef 101, ptr noundef null, ptr noundef nonnull %2) #15 ; 0 uses
  %i.b = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %2, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_118STR_CURRENT_FOLDERE) #15 ; 0 uses
  %i.c = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %2, i32 noundef 118, ptr noundef nonnull @.str.39, ptr noundef nonnull %3) #15 ; 0 uses
  %i.d = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %3, i32 noundef 97, ptr noundef nonnull @.str.40, ptr noundef nonnull %4) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ %i.f, %bb.c ]    ; 3 uses
  %i.e = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %4, i32 noundef 121, ptr noundef nonnull %.0) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.g = load i8, ptr %.0, align 1, !tbaa !38
  %.not7 = icmp eq i8 %i.g, 0
  br i1 %.not7, label %bb.d, label %bb.c, !llvm.loop !95

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %3, ptr noundef nonnull %4) #15 ; 0 uses
  %i.i = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %2, ptr noundef nonnull %3) #15 ; 0 uses
  %i.j = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %0, ptr noundef nonnull %2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare i32 @dbus_message_iter_close_container(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dbus_message_iter_append_basic(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118DestroyXdgExportedEPv(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @wl_proxy_get_version(ptr noundef %0) #15
  %i.b = tail call ptr (ptr, i32, ptr, i32, i32, ...) @wl_proxy_marshal_flags(ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef %i.a, i32 noundef 1) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_123zxdg_exported_v1_handleEPvP16zxdg_exported_v1PKc(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = add i64 %i.b, 9
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #17 ; 4 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !20
  store i64 4207609316581663095, ptr %i.d, align 1, !tbaa !38
  %scevgep = getelementptr i8, ptr %i.d, i64 8    ; 2 uses
  %.not7.i = icmp samesign eq i64 %i.b, 0
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit12, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr nonnull align 1 %2, i64 %i.b, i1 false), !tbaa !38
  %i.e = getelementptr i8, ptr %i.d, i64 %i.b
  %scevgep15 = getelementptr i8, ptr %i.e, i64 8
  br label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit12

_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit12:  ; preds = %.lr.ph.i8.preheader, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit
  %.0.lcssa.i = phi ptr [ %scevgep, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit ], [ %scevgep15, %.lr.ph.i8.preheader ]
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !38
  %i.f = call i32 @dbus_message_iter_append_basic(ptr noundef %0, i32 noundef 115, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !20
  call void @free(ptr noundef %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare void @wl_proxy_set_user_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127AppendSingleFilterCheckExtnER15DBusMessageIterRK17nfdu8filteritem_tPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %5 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.d = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %0, i32 noundef 114, ptr noundef null, ptr noundef nonnull %3) #15 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.068 = phi ptr [ %i.f, %bb.a ], [ %i.ae, %bb.e ] ; 2 uses
  %.059 = phi i64 [ 1, %bb.a ], [ %.1, %bb.e ]    ; 3 uses
  %i.g = load i8, ptr %.068, align 1, !tbaa !38
  switch i8 %i.g, label %bb.e [
    i8 0, label %bb.c
    i8 44, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !53     ; 7 uses
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #16 ; 10 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.k = add i64 %.059, 3
  %i.l = add i64 %i.k, %i.i
  %i.m = add i64 %i.l, %i.j
  %i.n = alloca i8, i64 %i.m, align 16            ; 7 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %.not7.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check93 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check93, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %n.vec   ; 2 uses
  %i.r = getelementptr i8, ptr %i.h, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep94, align 1, !tbaa !38
  %wide.load95 = load <16 x i8>, ptr %i.s, align 1, !tbaa !38
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 16, !tbaa !38
  store <16 x i8> %wide.load95, ptr %i.t, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec96 = and i64 %i.i, -8                     ; 4 uses
  %i.v = getelementptr i8, ptr %i.n, i64 %n.vec96 ; 2 uses
  %i.w = getelementptr i8, ptr %i.h, i64 %n.vec96
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 3 uses
  %next.gep98 = getelementptr i8, ptr %i.n, i64 %index97
  %next.gep99 = getelementptr i8, ptr %i.h, i64 %index97
  %wide.load100 = load <8 x i8>, ptr %next.gep99, align 1, !tbaa !38
  store <8 x i8> %wide.load100, ptr %next.gep98, align 8, !tbaa !38
  %index.next101 = add nuw i64 %index97, 8        ; 2 uses
  %i.x = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.i, %n.vec96
  br i1 %cmp.n102, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.068.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.068.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.068.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = load i8, ptr %.068.i, align 1, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  store i8 %i.y, ptr %.09.i, align 1, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.o
  br i1 %.not.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %.lr.ph.i, !llvm.loop !98

_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit:    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i = phi ptr [ %i.n, %bb.c ], [ %i.v, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  store i8 32, ptr %.0.lcssa.i, align 1, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2
  store i8 40, ptr %i.ab, align 1, !tbaa !38
  %.pre = load i8, ptr %i.f, align 1, !tbaa !38
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ad = add i64 %.059, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.1 = phi i64 [ %i.ad, %bb.d ], [ %.059, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.068, i64 1
  br label %bb.b, !llvm.loop !99

bb.f:                                             ; preds = %bb.h, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit
  %i.af = phi i8 [ %.pre, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit ], [ %i.al, %bb.h ]
  %.066 = phi ptr [ %i.ac, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit ], [ %.167, %bb.h ] ; 3 uses
  %.065 = phi ptr [ %i.f, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit ], [ %i.ak, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.066, i64 1 ; 2 uses
  store i8 %i.af, ptr %.066, align 1, !tbaa !38
  %i.ah = load i8, ptr %.065, align 1, !tbaa !38
  %i.ai = icmp eq i8 %i.ah, 44
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.066, i64 2
  store i8 32, ptr %i.ag, align 1, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.167 = phi ptr [ %i.aj, %bb.g ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !38  ; 2 uses
  %.not72 = icmp eq i8 %i.al, 0
  br i1 %.not72, label %bb.i, label %bb.f, !llvm.loop !100

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.167, i64 1
  store i8 41, ptr %.167, align 1, !tbaa !38
  store i8 0, ptr %i.am, align 1, !tbaa !38
  %i.an = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %3, i32 noundef 115, ptr noundef nonnull %i.a) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ao = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %3, i32 noundef 97, ptr noundef nonnull @.str.34, ptr noundef nonnull %4) #15 ; 0 uses
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.thread, %bb.i
  %.063 = phi i8 [ 0, %bb.i ], [ %.2, %.critedge2.thread ]
  %.060 = phi ptr [ %i.ap, %bb.i ], [ %i.bw, %.critedge2.thread ] ; 4 uses
  %i.aq = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %4, i32 noundef 114, ptr noundef null, ptr noundef nonnull %5) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !39
  %i.ar = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %5, i32 noundef 117, ptr noundef nonnull %i.b) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.pn = phi ptr [ %indvars.iv, %bb.k ], [ %2, %bb.j ]
  %.161 = phi ptr [ %i.as, %bb.k ], [ %.060, %bb.j ] ; 4 uses
  %indvars.iv = getelementptr i8, ptr %indvars.iv.pn, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.161, i64 1 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !38
  switch i8 %i.at, label %bb.k [
    i8 44, label %.critedge
    i8 0, label %.critedge
  ]

.critedge:                                        ; preds = %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %.060 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = or disjoint i64 %i.ax, 3
  %i.az = alloca i8, i64 %i.ay, align 16          ; 4 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 42, ptr %i.az, align 16, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 46, ptr %i.ba, align 1, !tbaa !38
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.critedge, %bb.n
  %.023.i = phi ptr [ %.1.i, %bb.n ], [ %i.bb, %.critedge ] ; 6 uses
  %.01622.i = phi ptr [ %i.bl, %bb.n ], [ %.060, %.critedge ] ; 4 uses
  %i.bc = load i8, ptr %.01622.i, align 1, !tbaa !38 ; 2 uses
  %i.bd = and i8 %i.bc, -33
  %i.be = add i8 %i.bd, -65
  %or.cond20.i = icmp ult i8 %i.be, 26
  %i.bf = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 2 uses
  br i1 %or.cond20.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i79
  store i8 91, ptr %.023.i, align 1, !tbaa !38
  %i.bg = load i8, ptr %.01622.i, align 1, !tbaa !38 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !38
  %i.bi = xor i8 %i.bg, 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.023.i, i64 3
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  store i8 93, ptr %i.bj, align 1, !tbaa !38
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i79
  store i8 %i.bc, ptr %.023.i, align 1, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i = phi ptr [ %i.bk, %bb.l ], [ %i.bf, %bb.m ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01622.i, i64 1
  %.not.i80 = icmp eq ptr %.01622.i, %.161
  br i1 %.not.i80, label %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit, label %.lr.ph.i79, !llvm.loop !2

_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit: ; preds = %bb.n
  store i8 0, ptr %.1.i, align 1, !tbaa !38
  %i.bm = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %5, i32 noundef 115, ptr noundef nonnull %i.c) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.bn = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.bo = trunc nuw i8 %.063 to i1
  br i1 %i.bo, label %.critedge2.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit, %bb.p
  %.086 = phi ptr [ %i.br, %bb.p ], [ %.060, %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit ] ; 3 uses
  %.05885 = phi ptr [ %i.bs, %bb.p ], [ %2, %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit ] ; 2 uses
  %i.bp = load i8, ptr %.05885, align 1, !tbaa !38 ; 2 uses
  %.not76 = icmp eq i8 %i.bp, 0
  br i1 %.not76, label %.critedge2.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bq = load i8, ptr %.086, align 1, !tbaa !38
  %.not77 = icmp eq i8 %i.bq, %i.bp
  br i1 %.not77, label %bb.p, label %.critedge2.thread

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.086, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.05885, i64 1
  %.not75 = icmp eq ptr %.086, %.161
  br i1 %.not75, label %.critedge2, label %.lr.ph, !llvm.loop !101

.critedge2:                                       ; preds = %bb.p
  %i.bt = load i8, ptr %indvars.iv, align 1, !tbaa !38
  %.not78 = icmp eq i8 %i.bt, 0
  %spec.select = zext i1 %.not78 to i8
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.lr.ph, %bb.o, %.critedge2, %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit
  %.2 = phi i8 [ 1, %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit ], [ %spec.select, %.critedge2 ], [ 0, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %i.bu = load i8, ptr %i.as, align 1, !tbaa !38
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %.161, i64 2
  br i1 %i.bv, label %bb.q, label %bb.j, !llvm.loop !102

bb.q:                                             ; preds = %.critedge2.thread
  %i.bx = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %3, ptr noundef nonnull %4) #15 ; 0 uses
  %i.by = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %0, ptr noundef nonnull %3) #15 ; 0 uses
  %i.bz = trunc nuw i8 %.2 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118AppendSingleFilterER15DBusMessageIterRK17nfdu8filteritem_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %3 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.d = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %0, i32 noundef 114, ptr noundef null, ptr noundef nonnull %2) #15 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.048 = phi ptr [ %i.f, %bb.a ], [ %i.ae, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 1, %bb.a ], [ %.1, %bb.e ]      ; 3 uses
  %i.g = load i8, ptr %.048, align 1, !tbaa !38
  switch i8 %i.g, label %bb.e [
    i8 0, label %bb.c
    i8 44, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !53     ; 7 uses
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #16 ; 10 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.k = add i64 %.0, 3
  %i.l = add i64 %i.k, %i.i
  %i.m = add i64 %i.l, %i.j
  %i.n = alloca i8, i64 %i.m, align 16            ; 7 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %.not7.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check62 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %n.vec   ; 2 uses
  %i.r = getelementptr i8, ptr %i.h, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep63, align 1, !tbaa !38
  %wide.load64 = load <16 x i8>, ptr %i.s, align 1, !tbaa !38
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 16, !tbaa !38
  store <16 x i8> %wide.load64, ptr %i.t, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.i, -8                     ; 4 uses
  %i.v = getelementptr i8, ptr %i.n, i64 %n.vec65 ; 2 uses
  %i.w = getelementptr i8, ptr %i.h, i64 %n.vec65
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 3 uses
  %next.gep67 = getelementptr i8, ptr %i.n, i64 %index66
  %next.gep68 = getelementptr i8, ptr %i.h, i64 %index66
  %wide.load69 = load <8 x i8>, ptr %next.gep68, align 1, !tbaa !38
  store <8 x i8> %wide.load69, ptr %next.gep67, align 8, !tbaa !38
  %index.next70 = add nuw i64 %index66, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n71 = icmp eq i64 %i.i, %n.vec65
  br i1 %cmp.n71, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.068.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.068.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.068.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = load i8, ptr %.068.i, align 1, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  store i8 %i.y, ptr %.09.i, align 1, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.o
  br i1 %.not.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit, label %.lr.ph.i, !llvm.loop !105

_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit:    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i = phi ptr [ %i.n, %bb.c ], [ %i.v, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  store i8 32, ptr %.0.lcssa.i, align 1, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2
  store i8 40, ptr %i.ab, align 1, !tbaa !38
  %.pre = load i8, ptr %i.f, align 1, !tbaa !38
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ad = add i64 %.0, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.1 = phi i64 [ %i.ad, %bb.d ], [ %.0, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.048, i64 1
  br label %bb.b, !llvm.loop !106

bb.f:                                             ; preds = %bb.h, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit
  %i.af = phi i8 [ %.pre, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit ], [ %i.al, %bb.h ]
  %.046 = phi ptr [ %i.ac, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit ], [ %.147, %bb.h ] ; 3 uses
  %.045 = phi ptr [ %i.f, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit ], [ %i.ak, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.046, i64 1 ; 2 uses
  store i8 %i.af, ptr %.046, align 1, !tbaa !38
  %i.ah = load i8, ptr %.045, align 1, !tbaa !38
  %i.ai = icmp eq i8 %i.ah, 44
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.046, i64 2
  store i8 32, ptr %i.ag, align 1, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.147 = phi ptr [ %i.aj, %bb.g ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.045, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !38  ; 2 uses
  %.not51 = icmp eq i8 %i.al, 0
  br i1 %.not51, label %bb.i, label %bb.f, !llvm.loop !107

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.147, i64 1
  store i8 41, ptr %.147, align 1, !tbaa !38
  store i8 0, ptr %i.am, align 1, !tbaa !38
  %i.an = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %2, i32 noundef 115, ptr noundef nonnull %i.a) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ao = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %2, i32 noundef 97, ptr noundef nonnull @.str.34, ptr noundef nonnull %3) #15 ; 0 uses
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit, %bb.i
  %.042 = phi ptr [ %i.ap, %bb.i ], [ %i.bq, %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit ] ; 3 uses
  %i.aq = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %3, i32 noundef 114, ptr noundef null, ptr noundef nonnull %4) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !39
  %i.ar = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %4, i32 noundef 117, ptr noundef nonnull %i.b) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.143 = phi ptr [ %.042, %bb.j ], [ %i.as, %bb.k ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.143, i64 1 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !38
  switch i8 %i.at, label %bb.k [
    i8 44, label %.critedge
    i8 0, label %.critedge
  ]

.critedge:                                        ; preds = %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %.042 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = or disjoint i64 %i.ax, 3
  %i.az = alloca i8, i64 %i.ay, align 16          ; 4 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 42, ptr %i.az, align 16, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 46, ptr %i.ba, align 1, !tbaa !38
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.critedge, %bb.n
  %.023.i = phi ptr [ %.1.i, %bb.n ], [ %i.bb, %.critedge ] ; 6 uses
  %.01622.i = phi ptr [ %i.bl, %bb.n ], [ %.042, %.critedge ] ; 4 uses
  %i.bc = load i8, ptr %.01622.i, align 1, !tbaa !38 ; 2 uses
  %i.bd = and i8 %i.bc, -33
  %i.be = add i8 %i.bd, -65
  %or.cond20.i = icmp ult i8 %i.be, 26
  %i.bf = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 2 uses
  br i1 %or.cond20.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i54
  store i8 91, ptr %.023.i, align 1, !tbaa !38
  %i.bg = load i8, ptr %.01622.i, align 1, !tbaa !38 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !38
  %i.bi = xor i8 %i.bg, 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.023.i, i64 3
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  store i8 93, ptr %i.bj, align 1, !tbaa !38
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i54
  store i8 %i.bc, ptr %.023.i, align 1, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i = phi ptr [ %i.bk, %bb.l ], [ %i.bf, %bb.m ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01622.i, i64 1
  %.not.i55 = icmp eq ptr %.01622.i, %.143
  br i1 %.not.i55, label %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit, label %.lr.ph.i54, !llvm.loop !2

_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit: ; preds = %bb.n
  store i8 0, ptr %.1.i, align 1, !tbaa !38
  %i.bm = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %4, i32 noundef 115, ptr noundef nonnull %i.c) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.bn = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %3, ptr noundef nonnull %4) #15 ; 0 uses
  %i.bo = load i8, ptr %i.as, align 1, !tbaa !38
  %i.bp = icmp eq i8 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %.143, i64 2
  br i1 %i.bp, label %bb.o, label %bb.j, !llvm.loop !108

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_126emit_case_insensitive_globEPKcS1_Pc.exit
  %i.br = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %2, ptr noundef nonnull %3) #15 ; 0 uses
  %i.bs = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %0, ptr noundef nonnull %2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120AppendWildcardFilterER15DBusMessageIter(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %2 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %3 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.b = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %0, i32 noundef 114, ptr noundef null, ptr noundef nonnull %1) #15 ; 0 uses
  %i.c = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %1, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_113STR_ALL_FILESE) #15 ; 0 uses
  %i.d = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %1, i32 noundef 97, ptr noundef nonnull @.str.34, ptr noundef nonnull %2) #15 ; 0 uses
  %i.e = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %2, i32 noundef 114, ptr noundef null, ptr noundef nonnull %3) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !39
  %i.f = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %3, i32 noundef 117, ptr noundef nonnull %i.a) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.g = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %3, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_112STR_ASTERISKE) #15 ; 0 uses
  %i.h = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %2, ptr noundef nonnull %3) #15 ; 0 uses
  %i.i = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %1, ptr noundef nonnull %2) #15 ; 0 uses
  %i.j = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

declare i32 @dbus_message_iter_get_element_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_135AppendOpenFileQueryDictEntryFiltersILb1EEEvR15DBusMessageIterPK17nfdu8filteritem_tj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.DBusMessageIter, align 8    ; 12 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 9 uses
  %5 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %0, i32 noundef 101, ptr noundef null, ptr noundef nonnull %3) #15 ; 0 uses
  %i.b = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %3, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_111STR_FILTERSE) #15 ; 0 uses
  %i.c = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %3, i32 noundef 118, ptr noundef nonnull @.str.31, ptr noundef nonnull %4) #15 ; 0 uses
  %i.d = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %4, i32 noundef 97, ptr noundef nonnull @.str.32, ptr noundef nonnull %5) #15 ; 0 uses
  %i.e = zext i32 %2 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call fastcc void @_ZN12_GLOBAL__N_120AppendWildcardFilterER15DBusMessageIter(ptr noundef nonnull align 8 dereferenceable(72) %5)
  %i.f = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.g = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %3, ptr noundef nonnull %4) #15 ; 0 uses
  %i.h = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %0, ptr noundef nonnull %3) #15 ; 0 uses
  %i.i = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %0, i32 noundef 101, ptr noundef null, ptr noundef nonnull %3) #15 ; 0 uses
  %i.j = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %3, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_118STR_CURRENT_FILTERE) #15 ; 0 uses
  %i.k = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %3, i32 noundef 118, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #15 ; 0 uses
  call fastcc void @_ZN12_GLOBAL__N_118AppendSingleFilterER15DBusMessageIterRK17nfdu8filteritem_t(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.l = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %3, ptr noundef nonnull %4) #15 ; 0 uses
  %i.m = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %0, ptr noundef nonnull %3) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  call fastcc void @_ZN12_GLOBAL__N_118AppendSingleFilterER15DBusMessageIterRK17nfdu8filteritem_t(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not11 = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %.not11, label %bb.c, label %bb.d, !llvm.loop !109

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS10wl_display", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS16zxdg_exporter_v1", !12, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS11wl_registry", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS14DBusConnection", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTS9DBusError", !19, i64 0, !19, i64 8, !9, i64 16, !9, i64 16, !9, i64 16, !9, i64 16, !9, i64 16, !12, i64 24}
!24 = !{!23, !19, i64 8}
!25 = !{!"long", !8, i64 0}
!26 = !{!"_ZTS17nfdwindowhandle_t", !25, i64 0, !12, i64 8}
!27 = !{!"_ZTS21nfdopendialogu8args_t", !12, i64 0, !9, i64 8, !19, i64 16, !26, i64 24}
!28 = !{!27, !12, i64 0}
!29 = !{!27, !9, i64 8}
!30 = !{!27, !19, i64 16}
!31 = !{!"_ZTSN12_GLOBAL__N_129DBusSignalSubscriptionHandlerE", !19, i64 0}
!32 = !{!31, !19, i64 0}
!33 = !{!"_ZTSN12_GLOBAL__N_111DestroyFuncE", !12, i64 0, !12, i64 8}
!34 = !{!33, !12, i64 0}
!35 = !{!33, !12, i64 8}
!36 = !{!26, !25, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!8, !8, i64 0}
!39 = !{!9, !9, i64 0}
!40 = !{!12, !12, i64 0}
!41 = !{!"_ZTS21nfdsavedialogu8args_t", !12, i64 0, !9, i64 8, !19, i64 16, !19, i64 24, !26, i64 32}
!42 = !{!41, !12, i64 0}
!43 = !{!41, !9, i64 8}
!44 = !{!41, !19, i64 16}
!45 = !{!41, !19, i64 24}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"branch_weights", i32 8, i32 24}
!49 = !{!"_ZTS21nfdpickfolderu8args_t", !19, i64 0, !26, i64 8}
!50 = !{!49, !19, i64 0}
!51 = !{!"_ZTS17nfdu8filteritem_t", !19, i64 0, !19, i64 8}
!52 = !{!51, !19, i64 8}
!53 = !{!51, !19, i64 0}
!54 = distinct !{!54, !37}
!55 = distinct !{null, null}
!56 = distinct !{!56, !37}
!57 = distinct !{null, null}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
!62 = distinct !{null, null}
!63 = distinct !{!63, !37, !46, !47}
!64 = distinct !{!64, !37, !46, !47}
!65 = distinct !{!65, !67}
!66 = distinct !{!66, !37, !46}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !37}
!69 = distinct !{null, null}
!70 = distinct !{!70, !37}
!71 = distinct !{null, null}
!72 = distinct !{!72, !37}
!73 = !{!"p1 _ZTS10wl_message", !12, i64 0}
!74 = !{!"_ZTS12wl_interface", !19, i64 0, !9, i64 8, !9, i64 12, !73, i64 16, !9, i64 24, !73, i64 32}
!75 = !{!74, !9, i64 8}
!76 = !{!74, !19, i64 0}
!77 = distinct !{!77, !37, !46, !47}
!78 = distinct !{!78, !37, !46, !47}
!79 = distinct !{!79, !37, !47, !46}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !37, !46, !47}
!85 = distinct !{!85, !37, !46, !47}
!86 = distinct !{!86, !37, !46}
!87 = !{!82}
!88 = !{!83}
!89 = !{!"branch_weights", i32 4, i32 12}
!90 = distinct !{!90, !37}
!91 = distinct !{!91, !37, !46, !47}
!92 = distinct !{!92, !37, !46, !47}
!93 = distinct !{!93, !37, !47, !46}
!94 = !{!"branch_weights", i32 8, i32 8}
!95 = distinct !{!95, !37}
!96 = distinct !{!96, !37, !46, !47}
!97 = distinct !{!97, !37, !46, !47}
!98 = distinct !{!98, !37, !47, !46}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37}
!101 = distinct !{!101, !37}
!102 = distinct !{!102, !37}
!103 = distinct !{!103, !37, !46, !47}
!104 = distinct !{!104, !37, !46, !47}
!105 = distinct !{!105, !37, !47, !46}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, !37}
!108 = distinct !{!108, !37}
!109 = distinct !{!109, !37}
end_hunk_0
