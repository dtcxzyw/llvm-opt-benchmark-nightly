Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/rtp_player_dialog?download=true
inline.NumInlined: 3581
inline.NumDeleted: 1231
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN15RtpPlayerDialog34on_visualSRSpinBox_editingFinishedEv:bb.a
  %i.cf = load atomic i32, ptr %i.ce monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not6.not.i.i.i.i, label %bb.aa, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cg = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %1)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i unwind label %bb.af

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.aa, %bb.z
  %.1.i.i.i.i = phi i32 [ %i.cf, %bb.z ], [ %i.cg, %bb.aa ]
  %i.ch = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIP14RtpAudioStreamE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.ab, label %_Zeq9QMetaTypeS_.exit.i.i

bb.ab:                                            ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.ci = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
          to label %_Zeq9QMetaTypeS_.exit.i.i unwind label %bb.af

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.ab, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.ch, %_ZNK9QMetaType2idEi.exit.i.i.i ], [ %i.ci, %bb.ab ]
  %i.cj = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  %i.ck = load ptr, ptr %7, align 8
  br label %_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit

bb.ad:                                            ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.cl = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %7)
          to label %.noexc51 unwind label %bb.af

.noexc51:                                         ; preds = %bb.ad
  %i.cm = load i64, ptr %i.bb, align 8
  %i.cn = and i64 %i.cm, 1
  %.not.i.i.i.i48 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i48, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc51
  %i.co = load ptr, ptr %7, align 8               ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.co, i64 %i.cr
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.ae, %.noexc51
  %i.ct = phi ptr [ %i.cs, %bb.ae ], [ %7, %.noexc51 ]
  %i.cu = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.cl, ptr noundef %i.ct, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIP14RtpAudioStreamE8metaTypeE, ptr noundef nonnull %i.a)
          to label %.noexc52 unwind label %bb.af  ; 0 uses

.noexc52:                                         ; preds = %_ZNK8QVariant9constDataEv.exit.i.i
  %i.cv = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit

_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit:  ; preds = %.noexc52, %bb.ac
  %.0.i.i = phi ptr [ %i.ck, %bb.ac ], [ %i.cv, %.noexc52 ] ; 2 uses
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cw = load ptr, ptr %i.n, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 544
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i32 @_ZNK8QSpinBox5valueEv(ptr noundef align 8 dereferenceable_or_null(40) %i.cy)
  %i.da = getelementptr i8, ptr %.0.i.i, i64 7496
  store i32 %i.cz, ptr %i.da, align 8
  call void @_ZN14RtpAudioStream12decodeVisualEv(ptr noundef align 8 dereferenceable_or_null(7696) %.0.i.i)
  %i.db = add nuw nsw i32 %.01261, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.db, %i.az
  br i1 %exitcond.not, label %.preheader, label %bb.x, !llvm.loop !175

bb.af:                                            ; preds = %_ZNK8QVariant9constDataEv.exit.i.i, %bb.ad, %bb.ab, %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ah

._crit_edge:                                      ; preds = %.lr.ph63, %.preheader
  call void @_ZN15RtpPlayerDialog10createPlotEb(ptr noundef align 8 dereferenceable_or_null(472) %0, i1 noundef zeroext false)
  %i.dd = load ptr, ptr %0, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 472
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef align 8 dereferenceable_or_null(472) %0)
  %i.dg = load i32, ptr %i.b, align 4
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.b, align 4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ag, label %_ZN15RtpPlayerDialog8unlockUIEv.exit

bb.ag:                                            ; preds = %._crit_edge
  call void @_ZN7QWidget10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(472) %0, i1 noundef zeroext true)
  br label %_ZN15RtpPlayerDialog8unlockUIEv.exit

_ZN15RtpPlayerDialog8unlockUIEv.exit:             ; preds = %._crit_edge, %bb.ag
  ret void

.lr.ph63:                                         ; preds = %.preheader, %.lr.ph63
  %.062 = phi i32 [ %i.dm, %.lr.ph63 ], [ 0, %.preheader ] ; 2 uses
  %i.dj = load ptr, ptr %i.n, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 320
  %i.dl = load ptr, ptr %i.dk, align 8
  call void @_ZN9QTreeView22resizeColumnToContentsEi(ptr noundef align 8 dereferenceable_or_null(40) %i.dl, i32 noundef %.062)
  %i.dm = add nuw nsw i32 %.062, 1                ; 2 uses
  %i.dn = load ptr, ptr %i.n, align 8
  %i.do = getelementptr i8, ptr %i.dn, i64 320
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef i32 @_ZNK11QTreeWidget11columnCountEv(ptr noundef align 8 dereferenceable_or_null(40) %i.dp)
  %i.dr = add i32 %i.dq, -1
  %i.ds = icmp slt i32 %i.dm, %i.dr
  br i1 %i.ds, label %.lr.ph63, label %._crit_edge, !llvm.loop !176

bb.ah:                                            ; preds = %bb.af, %_ZN7QStringD2Ev.exit46
  %.pn19 = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %.pn.pn, %_ZN7QStringD2Ev.exit46 ]
  resume { ptr, i32 } %.pn19
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK8QSpinBox5valueEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN14RtpAudioStream12decodeVisualEv(ptr noundef align 8 dereferenceable_or_null(7696)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15RtpPlayerDialog26on_buttonBox_helpRequestedEv(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(472) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @mainApp, align 8
  tail call void @_ZN15MainApplication15helpTopicActionE14topic_action_e(ptr noundef align 8 dereferenceable_or_null(168) %i.a, i32 noundef 255)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN15MainApplication15helpTopicActionE14topic_action_e(ptr noundef align 8 dereferenceable_or_null(168), i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN12AudioRouting26formatAudioRoutingToStringEv(ptr noundef align 4 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK12QAudioDevice19maximumChannelCountEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15RtpPlayerDialog15invertSelectionEv(ptr noundef align 8 dereferenceable_or_null(472) initializes((432, 433)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 432        ; 2 uses
  store i8 1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 144        ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 320
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 @_ZN7QObject12blockSignalsEb(ptr noundef align 8 dereferenceable_or_null(16) %i.e, i1 noundef zeroext true) #25 ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 320
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 @_ZNK11QTreeWidget17topLevelItemCountEv(ptr noundef align 8 dereferenceable_or_null(40) %i.i)
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 320
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 @_ZN7QObject12blockSignalsEb(ptr noundef align 8 dereferenceable_or_null(16) %i.n, i1 noundef zeroext false) #25 ; 0 uses
  store i8 0, ptr %i.a, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 312
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513) %i.r, i32 noundef 2)
  tail call void @_ZN15RtpPlayerDialog15updateHintLabelEv(ptr noundef align 8 dereferenceable_or_null(472) %0)
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi i32 [ %i.y, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 320
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr @_ZNK11QTreeWidget12topLevelItemEi(ptr noundef align 8 dereferenceable_or_null(40) %i.u, i32 noundef %.05) ; 2 uses
  %i.w = tail call noundef zeroext i1 @_ZNK15QTreeWidgetItem10isSelectedEv(ptr noundef align 8 dereferenceable_or_null(92) %i.v)
  %i.x = xor i1 %i.w, true
  tail call void @_ZN15QTreeWidgetItem11setSelectedEb(ptr noundef align 8 dereferenceable_or_null(92) %i.v, i1 noundef zeroext %i.x)
  %i.y = add nuw nsw i32 %.05, 1                  ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 320
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 @_ZNK11QTreeWidget17topLevelItemCountEv(ptr noundef align 8 dereferenceable_or_null(40) %i.ab)
  %i.ad = icmp slt i32 %i.y, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !178
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN17QAbstractItemView14clearSelectionEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractButton12animateClickEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef i64 @_ZN15RtpPlayerDialog17saveAudioHeaderAUEP5QFilejj(ptr nofree readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store <4 x i8> <i8 46, i8 115, i8 110, i8 100>, ptr %i.a, align 4
  %i.b = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not = icmp eq i64 %i.b, 4
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store <4 x i8> <i8 0, i8 0, i8 0, i8 24>, ptr %i.a, align 4
  %i.c = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not15 = icmp eq i64 %i.c, 4
  br i1 %.not15, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.a, align 4
  %i.d = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not16 = icmp eq i64 %i.d, 4
  br i1 %.not16, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store <4 x i8> <i8 0, i8 0, i8 0, i8 3>, ptr %i.a, align 4
  %i.e = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not17 = icmp eq i64 %i.e, 4
  br i1 %.not17, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %7 = lshr i32 %3, 24
  %8 = trunc nuw i32 %7 to i8
  store i8 %8, ptr %i.a, align 4
  %9 = lshr i32 %3, 16
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %4, align 1
  %11 = lshr i32 %3, 8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %5, align 2
  %13 = trunc i32 %3 to i8
  store i8 %13, ptr %6, align 1
  %i.f = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not18 = icmp eq i64 %i.f, 4
  br i1 %.not18, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %14 = lshr i32 %2, 24
  %15 = trunc nuw i32 %14 to i8
  store i8 %15, ptr %i.a, align 4
  %16 = lshr i32 %2, 16
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %4, align 1
  %18 = lshr i32 %2, 8
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %5, align 2
  %20 = trunc i32 %2 to i8
  store i8 %20, ptr %6, align 1
  %i.g = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not19 = icmp eq i64 %i.g, 4
  br i1 %.not19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i64 %i.j(ptr noundef align 8 dereferenceable_or_null(16) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i64 [ %i.k, %bb.g ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.0
}

; Function Attrs: null_pointer_is_valid
declare noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef i64 @_ZN15RtpPlayerDialog18saveAudioHeaderWAVEP5QFilejjx(ptr nofree readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 10 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i16, align 2                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.d = zext i32 %2 to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = mul i64 %i.e, %4
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  store <4 x i8> <i8 82, i8 73, i8 70, i8 70>, ptr %i.a, align 4
  %i.h = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not = icmp eq i64 %i.h, 4
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %i.g, 36
  store i32 %i.i, ptr %i.b, align 4
  %i.j = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
  %.not36 = icmp eq i64 %i.j, 4
  br i1 %.not36, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  store <4 x i8> <i8 87, i8 65, i8 86, i8 69>, ptr %i.a, align 4
  %i.k = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not37 = icmp eq i64 %i.k, 4
  br i1 %.not37, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  store <4 x i8> <i8 102, i8 109, i8 116, i8 32>, ptr %i.a, align 4
  %i.l = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not38 = icmp eq i64 %i.l, 4
  br i1 %.not38, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  store i32 16, ptr %i.b, align 4
  %i.m = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
  %.not39 = icmp eq i64 %i.m, 4
  br i1 %.not39, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i16 1, ptr %i.c, align 2
  %i.n = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.c, i64 noundef 2)
  %.not40 = icmp eq i64 %i.n, 2
  br i1 %.not40, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.o = trunc i32 %2 to i16                      ; 2 uses
  store i16 %i.o, ptr %i.c, align 2
  %i.p = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.c, i64 noundef 2)
  %.not41 = icmp eq i64 %i.p, 2
  br i1 %.not41, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  store i32 %3, ptr %i.b, align 4
  %i.q = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
  %.not42 = icmp eq i64 %i.q, 4
  br i1 %.not42, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.r = shl i32 %2, 1
  %i.s = mul i32 %i.r, %3
  store i32 %i.s, ptr %i.b, align 4
  %i.t = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
  %.not43 = icmp eq i64 %i.t, 4
  br i1 %.not43, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.u = shl i16 %i.o, 1
  store i16 %i.u, ptr %i.c, align 2
  %i.v = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.c, i64 noundef 2)
  %.not44 = icmp eq i64 %i.v, 2
  br i1 %.not44, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  store i16 16, ptr %i.c, align 2
  %i.w = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.c, i64 noundef 2)
  %.not45 = icmp eq i64 %i.w, 2
  br i1 %.not45, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  store <4 x i8> <i8 100, i8 97, i8 116, i8 97>, ptr %i.a, align 4
  %i.x = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %.not46 = icmp eq i64 %i.x, 4
  br i1 %.not46, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store i32 %i.g, ptr %i.b, align 4
  %i.y = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
  %.not47 = icmp eq i64 %i.y, 4
  br i1 %.not47, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef i64 %i.ab(ptr noundef align 8 dereferenceable_or_null(16) %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.n
  %.0 = phi i64 [ %i.ac, %bb.n ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN15RtpPlayerDialog24writeAudioSilenceSamplesEP5QFilexi(ptr nofree readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1
  %.not1523 = icmp sgt i32 %3, 0
  %.not1421 = icmp sgt i64 %2, 0
  %or.cond = and i1 %.not1523, %.not1421
  br i1 %or.cond, label %.preheader.us, label %.critedge17

.preheader.us:                                    ; preds = %bb.a, %..critedge_crit_edge.us
  %.01124.us = phi i32 [ %i.e, %..critedge_crit_edge.us ], [ 0, %bb.a ]
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = add nuw nsw i64 %.022.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %2
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.c, !llvm.loop !179

bb.c:                                             ; preds = %.preheader.us, %bb.b
  %.022.us = phi i64 [ 0, %.preheader.us ], [ %i.c, %bb.b ]
  %i.d = call noundef i64 @_ZN9QIODevice5writeEPKcx(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not.us = icmp eq i64 %i.d, 2
  br i1 %.not.us, label %bb.b, label %.critedge17

..critedge_crit_edge.us:                          ; preds = %bb.b
  %i.e = add nuw nsw i32 %.01124.us, 1            ; 2 uses
  %exitcond29.not = icmp eq i32 %i.e, %3
  br i1 %exitcond29.not, label %.critedge17, label %.preheader.us, !llvm.loop !180

.critedge17:                                      ; preds = %..critedge_crit_edge.us, %bb.c, %bb.a
  %.not1520 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %..critedge_crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.not1520
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN15RtpPlayerDialog24writeAudioStreamsSamplesEP5QFile5QListIP14RtpAudioStreamEb(ptr nofree readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca [2 x i8], align 2                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  br i1 %3, label %.split41.us, label %.split41

.split41.us:                                      ; preds = %bb.a, %_ZN9QtPrivate17QForeachContainerI5QListIP14RtpAudioStreamEED2Ev.exit18.us
  %.011.us = phi i1 [ %.314.us, %_ZN9QtPrivate17QForeachContainerI5QListIP14RtpAudioStreamEED2Ev.exit18.us ], [ true, %bb.a ] ; 3 uses
  br i1 %.011.us, label %bb.b, label %.split43.us

bb.b:                                             ; preds = %.split41.us
  %i.f = load ptr, ptr %2, align 8, !noalias !185 ; 5 uses
  %i.g = load ptr, ptr %i.c, align 8, !noalias !185 ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !noalias !185
  %.not.i.i.i.i.i.us = icmp eq ptr %i.f, null     ; 3 uses
  br i1 %.not.i.i.i.i.i.us, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP14RtpAudioStreamEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.f, i32 1 acq_rel, align 4, !noalias !185 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP14RtpAudioStreamEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit.us

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP14RtpAudioStreamEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit.us: ; preds = %bb.c, %bb.b
  %.idx48 = shl i64 %i.h, 3                       ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 %.idx48
  %.not2427.us = icmp eq i64 %.idx48, 0
end_hunk_0
begin_hunk_1_@_ZN9QtPrivate19sequential_erase_ifI5QListIP14RtpAudioStreamEZNS_16sequential_eraseIS4_S3_EEDaRT_RKT0_EUlS7_E_EEDaS7_RS8_:bb.a
  br i1 %i.o, label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %.sroa.034.051.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, %i.i
  br i1 %i.r, label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit78, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.sroa.034.051.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit80, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %.sroa.034.051.i.i.i, i64 32
  %i.w = add nsw i64 %.052.i.i.i, -1
  %i.x = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !320

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %gepdiff = and i64 %.idx45, 24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi61.i.i.i = phi i64 [ %gepdiff, %._crit_edge.loopexit.i.i.i ], [ %.idx45, %bb.a ]
  %.sroa.034.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.y, label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load ptr, ptr %.sroa.014.0.copyload, align 8
  br label %bb.k

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.014.0.copyload, align 8
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load ptr, ptr %.sroa.034.0.lcssa.i.i.i, align 8
  %i.aa = load ptr, ptr %.sroa.014.0.copyload, align 8 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %.sroa.034.0.lcssa.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge.i.i.i
  %i.ad = phi ptr [ %i.aa, %bb.h ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.034.1.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %.sroa.034.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.034.1.i.i.i, align 8
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %.sroa.034.1.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge57.i.i.i
  %i.ah = phi ptr [ %i.ad, %bb.j ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.034.2.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.034.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.034.2.i.i.i, align 8
  %i.aj = icmp eq ptr %i.ai, %i.ah
  %spec.select.i.i.i = select i1 %i.aj, ptr %.sroa.034.2.i.i.i, ptr %i.e
  br label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit

_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ak = getelementptr i8, ptr %.sroa.034.051.i.i.i, i64 8
  br label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit

_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit78: ; preds = %bb.d
  %i.al = getelementptr i8, ptr %.sroa.034.051.i.i.i, i64 16
  br label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit

_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit80: ; preds = %bb.e
  %i.am = getelementptr i8, ptr %.sroa.034.051.i.i.i, i64 24
  br label %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit

_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit: ; preds = %bb.b, %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit, %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit78, %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit80, %._crit_edge.i.i.i, %bb.g, %bb.i, %bb.k
  %.sroa.010.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.034.1.i.i.i, %bb.i ], [ %spec.select.i.i.i, %bb.k ], [ %i.e, %._crit_edge.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i, %bb.g ], [ %i.am, %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit80 ], [ %i.al, %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit78 ], [ %i.ak, %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i, %bb.b ]
  %i.an = ptrtoint ptr %.sroa.010.0.in.sroa.speculated.i.i.i to i64
  %i.ao = sub i64 %i.an, %i.f                     ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp eq i64 %i.ap, %i.d
  br i1 %i.aq, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit
  %i.ar = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN5QListIP14RtpAudioStreamE3endEv.exit, label %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i: ; preds = %bb.l
  %i.as = load atomic i32, ptr %i.ar monotonic, align 4
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %_ZN5QListIP14RtpAudioStreamE3endEv.exit, label %_ZN5QListIP14RtpAudioStreamE3endEv.exit.thread

_ZN5QListIP14RtpAudioStreamE3endEv.exit.thread:   ; preds = %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i
  %i.au = getelementptr [8 x i8], ptr %i.b, i64 %i.d
  br label %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30

_ZN5QListIP14RtpAudioStreamE3endEv.exit:          ; preds = %bb.l, %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i
  tail call void @_ZN17QArrayDataPointerIP14RtpAudioStreamE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.pre60 = load i64, ptr %i.c, align 8
  %.pre61 = load ptr, ptr %0, align 8             ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %.pre, i64 %.pre60 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.pre61, null
  br i1 %.not.i.i.i.i29, label %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.thread.i.i.i31, label %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30

_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30: ; preds = %_ZN5QListIP14RtpAudioStreamE3endEv.exit.thread, %_ZN5QListIP14RtpAudioStreamE3endEv.exit
  %i.aw = phi ptr [ %i.au, %_ZN5QListIP14RtpAudioStreamE3endEv.exit.thread ], [ %i.av, %_ZN5QListIP14RtpAudioStreamE3endEv.exit ] ; 2 uses
  %i.ax = phi ptr [ %i.b, %_ZN5QListIP14RtpAudioStreamE3endEv.exit.thread ], [ %.pre, %_ZN5QListIP14RtpAudioStreamE3endEv.exit ]
  %i.ay = phi ptr [ %i.ar, %_ZN5QListIP14RtpAudioStreamE3endEv.exit.thread ], [ %.pre61, %_ZN5QListIP14RtpAudioStreamE3endEv.exit ]
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.thread.i.i.i31, label %_ZSt9__advanceIN5QListIP14RtpAudioStreamE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit

_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.thread.i.i.i31: ; preds = %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30, %_ZN5QListIP14RtpAudioStreamE3endEv.exit
  %i.bb = phi ptr [ %i.aw, %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30 ], [ %i.av, %_ZN5QListIP14RtpAudioStreamE3endEv.exit ]
  tail call void @_ZN17QArrayDataPointerIP14RtpAudioStreamE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre62 = load ptr, ptr %i.a, align 8
  br label %_ZSt9__advanceIN5QListIP14RtpAudioStreamE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN5QListIP14RtpAudioStreamE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30, %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.thread.i.i.i31
  %i.bc = phi ptr [ %i.aw, %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30 ], [ %i.bb, %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.thread.i.i.i31 ] ; 4 uses
  %i.bd = phi ptr [ %i.ax, %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.i.i.i30 ], [ %.pre62, %_ZNK17QArrayDataPointerIP14RtpAudioStreamE11needsDetachEv.exit.thread.i.i.i31 ]
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ao  ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %.not54 = icmp eq ptr %i.bf, %i.bc
  br i1 %.not54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt9__advanceIN5QListIP14RtpAudioStreamE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit
  %.pre64 = load ptr, ptr %1, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %i.bg = phi ptr [ %i.bm, %bb.n ], [ %.pre64, %.lr.ph.preheader ] ; 2 uses
  %i.bh = phi ptr [ %i.bn, %bb.n ], [ %i.bf, %.lr.ph.preheader ] ; 2 uses
  %.sroa.033.055 = phi ptr [ %.sroa.033.1, %bb.n ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = load ptr, ptr %i.bg, align 8
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store ptr %i.bi, ptr %.sroa.033.055, align 8
  %i.bl = getelementptr i8, ptr %.sroa.033.055, i64 8
  %.pre63 = load ptr, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %i.bm = phi ptr [ %i.bg, %.lr.ph ], [ %.pre63, %bb.m ]
  %.sroa.033.1 = phi ptr [ %.sroa.033.055, %.lr.ph ], [ %i.bl, %bb.m ] ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.bc
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !321

._crit_edge:                                      ; preds = %bb.n, %_ZSt9__advanceIN5QListIP14RtpAudioStreamE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.033.0.lcssa = phi ptr [ %i.be, %_ZSt9__advanceIN5QListIP14RtpAudioStreamE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ], [ %.sroa.033.1, %bb.n ] ; 2 uses
  %i.bo = ptrtoint ptr %i.bc to i64
  %i.bp = ptrtoint ptr %.sroa.033.0.lcssa to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = tail call ptr @_ZN5QListIP14RtpAudioStreamE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr %.sroa.033.0.lcssa, ptr %i.bc) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit, %._crit_edge
  %.0 = phi i64 [ %i.br, %._crit_edge ], [ 0, %_ZSt7find_ifIN5QListIP14RtpAudioStreamE14const_iteratorEZN9QtPrivate16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS8_E_ES7_S7_S7_S9_.exit ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #19

attributes #0 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress noinline null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { cold }
attributes #33 = { cold noreturn }

!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null}
!1 = distinct !{!1, !17}
!2 = distinct !{!2, !17}
!3 = distinct !{!3, !17}
!4 = distinct !{!4, !17}
!5 = distinct !{!5, !17}
!6 = distinct !{!6, !17}
!7 = distinct !{!7, !17}
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, !17}
!11 = !{i32 8, !"cf-protection-return", i32 1}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"probe-stack", !"inline-asm"}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i8 0, i8 2}
!19 = !{i64 8}
!20 = !{}
!21 = !{ptr @_ZN15RtpPlayerDialog19cleanupMarkerStreamEv}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{ptr @_ZN15RtpPlayerDialog21handleGoToSetupPacketEP15QTreeWidgetItem}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, i1 true, !"_ZN7QObject7connectIM7QWidgetFvRK6QPointEM15RtpPlayerDialogFvS4_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESE_PKNSD_IT0_E6ObjectESJ_N2Qt14ConnectionTypeE"}
!26 = distinct !{!26, !25, !"_ZN7QObject7connectIM7QWidgetFvRK6QPointEM15RtpPlayerDialogFvS4_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESE_PKNSD_IT0_E6ObjectESJ_N2Qt14ConnectionTypeE: argument 0"}
!27 = distinct !{!27, i1 true, !"_ZN7QObject7connectIM6QTimerFvNS1_14QPrivateSignalEEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE"}
!28 = distinct !{!28, !27, !"_ZN7QObject7connectIM6QTimerFvNS1_14QPrivateSignalEEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZN7QObject7connectIM11QTreeWidgetFvP15QTreeWidgetItemiEM15RtpPlayerDialogFvS3_iEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!30 = distinct !{!30, !29, !"_ZN7QObject7connectIM11QTreeWidgetFvP15QTreeWidgetItemiEM15RtpPlayerDialogFvS3_iEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZN7QObject7connectIM11QCustomPlotFvP11QMouseEventEM15RtpPlayerDialogFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!32 = distinct !{!32, !31, !"_ZN7QObject7connectIM11QCustomPlotFvP11QMouseEventEM15RtpPlayerDialogFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZN7QObject7connectIM11QCustomPlotFvP11QMouseEventEM15RtpPlayerDialogFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!34 = distinct !{!34, !33, !"_ZN7QObject7connectIM11QCustomPlotFvP11QMouseEventEM15RtpPlayerDialogFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZN7QObject7connectIM11QCustomPlotFvP11QMouseEventEM15RtpPlayerDialogFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!36 = distinct !{!36, !35, !"_ZN7QObject7connectIM11QCustomPlotFvP11QMouseEventEM15RtpPlayerDialogFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZN7QObject7connectIM11QCustomPlotFvP20QCPAbstractPlottableiP11QMouseEventEM15RtpPlayerDialogFvS3_iS5_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESF_PKNSE_IT0_E6ObjectESK_N2Qt14ConnectionTypeE"}
!38 = distinct !{!38, !37, !"_ZN7QObject7connectIM11QCustomPlotFvP20QCPAbstractPlottableiP11QMouseEventEM15RtpPlayerDialogFvS3_iS5_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESF_PKNSE_IT0_E6ObjectESK_N2Qt14ConnectionTypeE: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZN7QObject7connectIM6QTimerFvNS1_14QPrivateSignalEEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE"}
!40 = distinct !{!40, !39, !"_ZN7QObject7connectIM6QTimerFvNS1_14QPrivateSignalEEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE: argument 0"}
!41 = distinct !{!41, i1 true, !"_ZN7QObject7connectIM15QAbstractButtonFvvEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!42 = distinct !{!42, !41, !"_ZN7QObject7connectIM15QAbstractButtonFvvEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!43 = distinct !{!43, i1 true, !"_ZN7QObject7connectIM7QActionFvbEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!44 = distinct !{!44, !43, !"_ZN7QObject7connectIM7QActionFvbEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZN7QObject7connectIM15QAbstractButtonFvvEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!46 = distinct !{!46, !45, !"_ZN7QObject7connectIM15QAbstractButtonFvvEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZN9QtPrivate21qMakeForeachContainerI5QListI12QAudioDeviceEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_"}
!48 = distinct !{!48, !47, !"_ZN9QtPrivate21qMakeForeachContainerI5QListI12QAudioDeviceEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_: argument 0"}
!49 = distinct !{!49, i1 true, !"_ZNK4QMapI7QStringbE4keysEv"}
!50 = distinct !{!50, !49, !"_ZNK4QMapI7QStringbE4keysEv: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZNK8QMapDataISt3mapI7QStringbSt4lessIS1_ESaISt4pairIKS1_bEEEE4keysEv"}
!52 = distinct !{!52, !51, !"_ZNK8QMapDataISt3mapI7QStringbSt4lessIS1_ESaISt4pairIKS1_bEEEE4keysEv: argument 0"}
!53 = distinct !{!53, i1 true, !"_ZN9QtPrivate21qMakeForeachContainerI5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_"}
!54 = distinct !{!54, !53, !"_ZN9QtPrivate21qMakeForeachContainerI5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_: argument 0"}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, i1 true, !"_ZN7QObject7connectIM11CaptureFileFv12CaptureEventEM15RtpPlayerDialogFvS2_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE"}
!59 = distinct !{!59, !58, !"_ZN7QObject7connectIM11CaptureFileFv12CaptureEventEM15RtpPlayerDialogFvS2_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE: argument 0"}
!60 = !{!26}
!61 = !{!28}
!62 = !{!30}
!63 = !{!32}
!64 = !{!34}
!65 = !{!36}
!66 = !{!38}
!67 = !{!40}
!68 = !{!42}
!69 = !{!44}
!70 = !{!46}
!71 = !{!48}
!72 = !{!50}
!73 = !{!52}
!74 = !{!52, !50}
!75 = !{!54}
!76 = !{!59}
!77 = distinct !{!77, i1 true, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!78 = distinct !{!78, !77, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!80 = distinct !{!80, !79, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!81 = !{!78}
!82 = !{!80}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, i1 true, !"_ZN4QSetIiE6insertEOi"}
!86 = distinct !{!86, !85, !"_ZN4QSetIiE6insertEOi: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN4QSetIiE6insertEOi"}
!88 = distinct !{!88, !87, !"_ZN4QSetIiE6insertEOi: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZN4QSetIiE6insertEOi"}
!90 = distinct !{!90, !89, !"_ZN4QSetIiE6insertEOi: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZN4QSetIiE6insertEOi"}
!92 = distinct !{!92, !91, !"_ZN4QSetIiE6insertEOi: argument 0"}
!93 = !{!86}
!94 = !{!88}
!95 = !{!90}
!96 = !{!92}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, i1 true, !"_ZplRK7QStringPKc"}
!100 = distinct !{!100, !99, !"_ZplRK7QStringPKc: argument 0"}
!101 = distinct !{!101, !17}
!102 = !{!100}
!103 = distinct !{!103, i1 true, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListIP15QTreeWidgetItemEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_"}
!104 = distinct !{!104, !103, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListIP15QTreeWidgetItemEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_: argument 0"}
!105 = distinct !{!105, !17}
!106 = !{!104}
!107 = distinct !{!107, i1 true, !"_ZplRK7QStringPKc"}
!108 = distinct !{!108, !107, !"_ZplRK7QStringPKc: argument 0"}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = !{!108}
!112 = distinct !{!112, i1 true, !"_ZN15RtpPlayerDialog23currentOutputDeviceNameEv"}
!113 = distinct !{!113, !112, !"_ZN15RtpPlayerDialog23currentOutputDeviceNameEv: argument 0"}
!114 = distinct !{!114, i1 true, !"_ZN9QtPrivate21qMakeForeachContainerI5QListI12QAudioDeviceEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_"}
!115 = distinct !{!115, !114, !"_ZN9QtPrivate21qMakeForeachContainerI5QListI12QAudioDeviceEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_: argument 0"}
!116 = distinct !{!116, !17}
!117 = !{!113}
!118 = !{!115}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, i1 true, !"_ZN10QMultiHashIjP14RtpAudioStreamE6insertERKjRKS1_"}
!123 = distinct !{!123, !122, !"_ZN10QMultiHashIjP14RtpAudioStreamE6insertERKjRKS1_: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN10QMultiHashIjP14RtpAudioStreamE7emplaceIJRKS1_EEENS2_8iteratorERKjDpOT_"}
!125 = distinct !{!125, !124, !"_ZN10QMultiHashIjP14RtpAudioStreamE7emplaceIJRKS1_EEENS2_8iteratorERKjDpOT_: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZN7QObject7connectIM14RtpAudioStreamFvPS1_N6QAudio5ErrorEEM15RtpPlayerDialogFvS2_S4_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESE_PKNSD_IT0_E6ObjectESJ_N2Qt14ConnectionTypeE"}
!127 = distinct !{!127, !126, !"_ZN7QObject7connectIM14RtpAudioStreamFvPS1_N6QAudio5ErrorEEM15RtpPlayerDialogFvS2_S4_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESE_PKNSD_IT0_E6ObjectESJ_N2Qt14ConnectionTypeE: argument 0"}
!128 = distinct !{!128, i1 true, !"_ZNK15QTreeWidgetItem10foregroundEi"}
!129 = distinct !{!129, !128, !"_ZNK15QTreeWidgetItem10foregroundEi: argument 0"}
!130 = distinct !{null}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, i1 true, !"_ZN7QObject7connectIM14RtpAudioStreamFv7QStringEM15RtpPlayerDialogFvS2_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE"}
!133 = distinct !{!133, !132, !"_ZN7QObject7connectIM14RtpAudioStreamFv7QStringEM15RtpPlayerDialogFvS2_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESC_PKNSB_IT0_E6ObjectESH_N2Qt14ConnectionTypeE: argument 0"}
!134 = !{!125, !123}
!135 = !{!127}
!136 = !{!129}
!137 = !{!133}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = !{ptr @_ZN15RtpPlayerDialog28on_actionSelectAll_triggeredEv}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = distinct !{!151, !17}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, i1 true, !"_ZplRK7QStringPKc"}
!155 = distinct !{!155, !154, !"_ZplRK7QStringPKc: argument 0"}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
!158 = !{!155}
!159 = distinct !{!159, i1 true, !"_ZN7QObject7connectIM10QAudioSinkFvN6QAudio5StateEEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!160 = distinct !{!160, !159, !"_ZN7QObject7connectIM10QAudioSinkFvN6QAudio5StateEEM15RtpPlayerDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!161 = !{!160}
end_hunk_1
