Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/theme_parser?download=true
inline.NumInlined: 819
inline.NumDeleted: 352
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11ThemeParser18stripJsoncCommentsERK10QByteArray:bb.a
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = icmp sgt i64 %i.h, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.critedge, !llvm.loop !18

.lr.ph:                                           ; preds = %bb.q
  br label %bb.r, !llvm.loop !18

bb.r:                                             ; preds = %.lr.ph, %.thread75
  %i.az = phi i64 [ %i.ax, %.lr.ph ], [ %i.bl, %.thread75 ]
  %i.ba = phi i32 [ %i.aw, %.lr.ph ], [ %i.bk, %.thread75 ] ; 3 uses
  %.685 = phi i32 [ %i.av, %.lr.ph ], [ %i.ba, %.thread75 ] ; 2 uses
  %i.bb = sext i32 %.685 to i64
  %i.bc = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1
  switch i8 %i.be, label %.thread75 [
    i8 42, label %bb.s
    i8 10, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %i.bc, i64 %i.az
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 47
  br i1 %i.bh, label %bb.t, label %.thread75

bb.t:                                             ; preds = %bb.s
  %i.bi = add i32 %.685, 2
  br label %.critedge, !llvm.loop !18

bb.u:                                             ; preds = %bb.r
  %i.bj = invoke noundef align 8 dereferenceable(24) ptr @_ZN10QByteArray6appendEc(ptr noundef align 8 dereferenceable_or_null(24) %0, i8 noundef signext 10)
          to label %.thread75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread75:                                        ; preds = %bb.r, %bb.s, %bb.u
  %i.bk = add i32 %i.ba, 1                        ; 2 uses
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = icmp sgt i64 %i.h, %i.bl
  br i1 %i.bm, label %bb.r, label %..critedge.loopexit77_crit_edge, !llvm.loop !20

.critedge71:                                      ; preds = %bb.m, %bb.c, %bb.l
  %i.bn = invoke noundef align 8 dereferenceable(24) ptr @_ZN10QByteArray6appendEc(ptr noundef align 8 dereferenceable_or_null(24) %0, i8 noundef signext %i.n)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %.critedge71
  %i.bo = add i32 %.05496, 1
  br label %.critedge

..critedge.loopexit_crit_edge:                    ; preds = %bb.k
  br label %.critedge, !llvm.loop !18

..critedge.loopexit76_crit_edge:                  ; preds = %bb.p
  br label %.critedge, !llvm.loop !18

..critedge.loopexit76_crit_edge89:                ; preds = %bb.o
  br label %.critedge, !llvm.loop !18

..critedge.loopexit77_crit_edge:                  ; preds = %.thread75
  br label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %bb.g, %bb.q, %..critedge.loopexit77_crit_edge, %bb.n, %..critedge.loopexit76_crit_edge, %..critedge.loopexit76_crit_edge89, %bb.e, %..critedge.loopexit_crit_edge, %bb.t, %bb.v
  %.8 = phi i32 [ %i.bo, %bb.v ], [ %i.bi, %bb.t ], [ %i.am, %bb.n ], [ %i.av, %bb.q ], [ %i.p, %bb.e ], [ %.3, %..critedge.loopexit_crit_edge ], [ %i.as, %..critedge.loopexit76_crit_edge ], [ %.586, %..critedge.loopexit76_crit_edge89 ], [ %i.ba, %..critedge.loopexit77_crit_edge ], [ %i.x, %bb.g ] ; 2 uses
  %i.bp = sext i32 %.8 to i64                     ; 2 uses
  %i.bq = icmp sgt i64 %i.h, %i.bp
  br i1 %i.bq, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %_ZN10QByteArray7reserveEx.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN13QJsonDocument8fromJsonERK10QByteArrayP15QJsonParseError(ptr dead_on_unwind writable sret(%class.QJsonDocument) align 8, ptr noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK13QJsonDocument6isNullEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare void @_ZNK14QMessageLogger7warningEv(ptr dead_on_unwind writable sret(%class.QDebug) align 8, ptr noundef align 8 dereferenceable_or_null(32)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK15QJsonParseError11errorStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 4 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QDebugD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZNK13QJsonDocument6objectEv(ptr dead_on_unwind writable sret(%class.QJsonObject) align 8, ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind writable sret(%class.QJsonValue) align 8, ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind writable sret(%class.QJsonObject) align 8, ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QJsonValueD1Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK10QJsonValue5toIntEi(ptr noundef align 8 dereferenceable_or_null(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11ThemeParser12parseSectionERK11QJsonObjectRK7QStringRK16ThemeSectionInfoRK9ThemeInfoR5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(16) %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef align 8 dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef align 8 dereferenceable(104) %4, ptr noundef align 8 dereferenceable(8) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.QString, align 8             ; 6 uses
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %7 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %8 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %9 = alloca %class.anon, align 8                ; 4 uses
  %10 = alloca %class.QString, align 16           ; 10 uses
  %11 = alloca %class.QJsonObject, align 8        ; 12 uses
  %12 = alloca %class.QJsonValue, align 8         ; 7 uses
  %13 = alloca %class.QList.6, align 16           ; 12 uses
  %14 = alloca %class.QString, align 16           ; 14 uses
  %15 = alloca %class.QString, align 8            ; 9 uses
  %16 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %17 = alloca %class.QByteArray, align 8         ; 9 uses
  %18 = alloca %class.QByteArray, align 8         ; 9 uses
  %19 = alloca %class.QByteArray, align 8         ; 9 uses
  %20 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %21 = alloca %class.QByteArray, align 8         ; 9 uses
  %22 = alloca %class.QByteArray, align 8         ; 9 uses
  %23 = alloca %class.QByteArray, align 8         ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %24 = alloca %class.QString, align 8            ; 9 uses
  %25 = alloca %struct.ThemeColorPair, align 4    ; 5 uses
  %26 = alloca %class.QJsonObject, align 8        ; 7 uses
  %27 = alloca %class.QJsonValueRef, align 8      ; 6 uses
  %28 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %29 = alloca %class.QByteArray, align 8         ; 9 uses
  %30 = alloca %class.QString, align 8            ; 9 uses
  %31 = alloca %class.QByteArray, align 8         ; 9 uses
  %32 = alloca %class.QByteArray, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %12, ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(24) %2)
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %11, ptr noundef nonnull align 8 dereferenceable_or_null(24) %12)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  store <2 x ptr> %i.e, ptr %13, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.g, align 16
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QStringEC2ERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5QListI7QStringEC2ERKS1_.exit

_ZN5QListI7QStringEC2ERKS1_.exit:                 ; preds = %bb.b, %bb.c
  %i.k = invoke noundef zeroext i1 @_ZN11QJsonObject6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %11, i64 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %_ZN5QListI7QStringEC2ERKS1_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx.i.i.i142 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0..sroa_idx.i.i5.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %27, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZN7QStringD2Ev.exit173
  %.sroa.8254.0 = phi i64 [ %35, %_ZN7QStringD2Ev.exit173 ], [ 1, %.preheader ] ; 6 uses
  %i.af = invoke noundef zeroext i1 @_ZN11QJsonObject6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %11, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.d
  %i.ag = invoke noundef i64 @_ZNK11QJsonObject4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %11)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.noexc
  %i.ah = shl i64 %i.ag, 1
  %.unshifted.i.i = xor i64 %i.ah, %.sroa.8254.0
  %i.ai = icmp ugt i64 %.unshifted.i.i, 1
  br i1 %i.ai, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %3, align 8, !range !9, !noundef !10
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load i64, ptr %i.g, align 16
  %i.am = icmp ne i64 %i.al, 0
  %or.cond.not = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.not, label %bb.bn, label %bb.cg

bb.g:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %bb.d, %_ZN5QListI7QStringEC2ERKS1_.exit
  %lpad.loopexit.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZN18QJsonValueConstRef9objectKeyES_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, ptr nonnull %11, i64 %.sroa.8254.0)
          to label %_ZNK11QJsonObject8iterator3keyEv.exit unwind label %bb.p

_ZNK11QJsonObject8iterator3keyEv.exit:            ; preds = %bb.h
  invoke void @_ZN7QString14toLower_helperERS_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %15)
          to label %_ZNO7QString7toLowerEv.exit unwind label %bb.q

_ZNO7QString7toLowerEv.exit:                      ; preds = %_ZNK11QJsonObject8iterator3keyEv.exit
  %i.ao = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i65, label %bb.j, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZNO7QString7toLowerEv.exit
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.aq = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %_ZNO7QString7toLowerEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ar = call noundef i32 @_ZN18QJsonValueConstRef12concreteTypeES_(ptr nonnull %11, i64 %.sroa.8254.0) #24
  %i.as = icmp eq i32 %i.ar, 5
  br i1 %i.as, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store i32 2, ptr %16, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  store ptr @.str.28, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %17, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %2)
          to label %_ZNKR7QString6toUtf8Ev.exit unwind label %bb.s

_ZNKR7QString6toUtf8Ev.exit:                      ; preds = %bb.k
  %i.at = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.at, null
  %spec.select.i.i = select i1 %.not.i.i69, ptr @_ZN10QByteArray6_emptyE, ptr %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %14)
          to label %_ZNKR7QString6toUtf8Ev.exit71 unwind label %bb.t

_ZNKR7QString6toUtf8Ev.exit71:                    ; preds = %_ZNKR7QString6toUtf8Ev.exit
  %i.au = load ptr, ptr %i.o, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %19, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %4)
          to label %_ZNKR7QString6toUtf8Ev.exit75 unwind label %bb.u

_ZNKR7QString6toUtf8Ev.exit75:                    ; preds = %_ZNKR7QString6toUtf8Ev.exit71
  %.not.i.i72 = icmp eq ptr %i.au, null
  %spec.select.i.i73 = select i1 %.not.i.i72, ptr @_ZN10QByteArray6_emptyE, ptr %i.au
  %i.av = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.av, null
  %spec.select.i.i77 = select i1 %.not.i.i76, ptr @_ZN10QByteArray6_emptyE, ptr %i.av
  invoke void (ptr, ptr, ...) @_ZNK14QMessageLogger7warningEPKcz(ptr noundef nonnull align 8 dereferenceable_or_null(32) %16, ptr noundef @.str.19, ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %spec.select.i.i73, ptr noundef nonnull %spec.select.i.i77) #22
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %_ZNKR7QString6toUtf8Ev.exit75
  %i.aw = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i78, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.l
  %i.ax = atomicrmw add ptr %i.aw, i32 -1 acq_rel, align 4
  %.not.i.i79 = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i79, label %bb.m, label %_ZN10QByteArrayD2Ev.exit

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.ay = load ptr, ptr %19, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ay, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.l, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.az = load ptr, ptr %18, align 8              ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i80, label %_ZN10QByteArrayD2Ev.exit83, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i81

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i81:     ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.ba = atomicrmw add ptr %i.az, i32 -1 acq_rel, align 4
  %.not.i.i82 = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i82, label %bb.n, label %_ZN10QByteArrayD2Ev.exit83

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i81
  %i.bb = load ptr, ptr %18, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit83

_ZN10QByteArrayD2Ev.exit83:                       ; preds = %_ZN10QByteArrayD2Ev.exit, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i81, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.bc = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i84, label %_ZN10QByteArrayD2Ev.exit87, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i85

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i85:     ; preds = %_ZN10QByteArrayD2Ev.exit83
  %i.bd = atomicrmw add ptr %i.bc, i32 -1 acq_rel, align 4
  %.not.i.i86 = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i86, label %bb.o, label %_ZN10QByteArrayD2Ev.exit87

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i85
  %i.be = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit87

_ZN10QByteArrayD2Ev.exit87:                       ; preds = %_ZN10QByteArrayD2Ev.exit83, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i85, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.bj

bb.p:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit91

bb.q:                                             ; preds = %_ZNK11QJsonObject8iterator3keyEv.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i88, label %_ZN7QStringD2Ev.exit91, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89:    ; preds = %bb.q
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %.not.i.i90 = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i90, label %bb.r, label %_ZN7QStringD2Ev.exit91

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89
  %i.bj = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit91

_ZN7QStringD2Ev.exit91:                           ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89, %bb.q, %bb.p
  %.pn40 = phi { ptr, i32 } [ %i.bf, %bb.p ], [ %i.bg, %bb.q ], [ %i.bg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i89 ], [ %i.bg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZN7QStringD2Ev.exit177

bb.s:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit103

bb.t:                                             ; preds = %_ZNKR7QString6toUtf8Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit99

bb.u:                                             ; preds = %_ZNKR7QString6toUtf8Ev.exit71
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit95

bb.v:                                             ; preds = %_ZNKR7QString6toUtf8Ev.exit75
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bo = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i92, label %_ZN10QByteArrayD2Ev.exit95, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i93

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i93:     ; preds = %bb.v
  %i.bp = atomicrmw add ptr %i.bo, i32 -1 acq_rel, align 4
  %.not.i.i94 = icmp eq i32 %i.bp, 1
end_hunk_0
begin_hunk_1_@_ZN11ThemeParser12parseSectionERK11QJsonObjectRK7QStringRK16ThemeSectionInfoRK9ThemeInfoR5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN7QStringC2ERKS_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = atomicrmw add ptr %i.de, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i.i

_ZN7QStringC2ERKS_.exit.i.i:                      ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %10, ptr %9, align 8
  %i.dh = invoke noundef i64 @_ZN9QtPrivate19sequential_erase_ifI5QListI7QStringEZNS_16sequential_eraseIS3_S2_EEDaRT_RKT0_EUlS6_E_EEDaS6_RS7_(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %13, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aq unwind label %bb.as     ; 0 uses

bb.aq:                                            ; preds = %_ZN7QStringC2ERKS_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.di = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i4.i.i, label %_ZN5QListI7QStringE9removeAllIS0_EExRKT_.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i:  ; preds = %bb.aq
  %i.dj = atomicrmw add ptr %i.di, i32 -1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.dj, 1
  br i1 %.not.i.i.i.i, label %bb.ar, label %_ZN5QListI7QStringE9removeAllIS0_EExRKT_.exit

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i
  %i.dk = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dk, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN5QListI7QStringE9removeAllIS0_EExRKT_.exit

bb.as:                                            ; preds = %_ZN7QStringC2ERKS_.exit.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i5.i.i, label %_ZN7QStringD2Ev.exit8.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i: ; preds = %bb.as
  %i.dn = atomicrmw add ptr %i.dm, i32 -1 acq_rel, align 4
  %.not.i.i7.i.i = icmp eq i32 %i.dn, 1
  br i1 %.not.i.i7.i.i, label %bb.at, label %_ZN7QStringD2Ev.exit8.i.i

bb.at:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i
  %i.do = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.do, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit8.i.i

_ZN7QStringD2Ev.exit8.i.i:                        ; preds = %bb.at, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

_ZN5QListI7QStringE9removeAllIS0_EExRKT_.exit:    ; preds = %bb.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.au

bb.au:                                            ; preds = %_ZN5QListI7QStringE9removeAllIS0_EExRKT_.exit, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !32
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.dp = load ptr, ptr %i.y, align 8, !noalias !34 ; 2 uses
  %.not.i.i.i.i141 = icmp eq ptr %i.dp, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i141, ptr @_ZN7QString6_emptyE, ptr %i.dp
  %i.dq = load i64, ptr %i.z, align 8, !noalias !34
  store i8 2, ptr %7, align 8, !alias.scope !33, !noalias !32
  store i64 %i.dq, ptr %i.aa, align 8, !alias.scope !33, !noalias !32
  store ptr %spec.select.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i142, align 8, !alias.scope !33, !noalias !32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !32
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.dr = load ptr, ptr %i.q, align 8, !noalias !36 ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.dr, null
  %spec.select.i.i.i4.i = select i1 %.not.i.i.i3.i, ptr @_ZN7QString6_emptyE, ptr %i.dr
  %i.ds = load i64, ptr %i.r, align 16, !noalias !36
  store i8 2, ptr %8, align 8, !alias.scope !35, !noalias !32
  store i64 %i.ds, ptr %i.ab, align 8, !alias.scope !35, !noalias !32
  store ptr %spec.select.i.i.i4.i, ptr %.sroa.2.0..sroa_idx.i.i5.i, align 8, !alias.scope !35, !noalias !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !37
  store ptr %7, ptr %i.a, align 16, !noalias !37
  store ptr %8, ptr %i.ac, align 8, !noalias !37
  store ptr null, ptr %i.ad, align 16, !noalias !37
  invoke void @_ZN9QtPrivate12argToQStringE11QStringViewmPPKNS_7ArgBaseE(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %24, i64 4, ptr nonnull @.str.21, i64 noundef 2, ptr noundef nonnull %i.a)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !32
  %i.dt = invoke noundef i32 @_ZNK11ThemeParser13stringToTokenERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.aw unwind label %bb.bd     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.du = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i144, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i145

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i145:   ; preds = %bb.aw
  %i.dv = atomicrmw add ptr %i.du, i32 -1 acq_rel, align 4
  %.not.i.i146 = icmp eq i32 %i.dv, 1
  br i1 %.not.i.i146, label %bb.ax, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i145
  %i.dw = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dw, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.aw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i145, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  store i32 %i.dt, ptr %i.b, align 4
  %.not = icmp eq i32 %i.dt, 77
  br i1 %.not, label %bb.bi, label %bb.ay

bb.ay:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  store ptr %11, ptr %27, align 8
  store i64 %.sroa.8254.0, ptr %i.ae, align 8
  invoke void @_ZNK13QJsonValueRef8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %26, ptr noundef nonnull align 8 dereferenceable_or_null(16) %27)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN11ThemeParser14parseColorPairERK11QJsonObject(ptr dead_on_unwind nonnull writable sret(%struct.ThemeColorPair) align 4 %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.dx = invoke noundef align 4 dereferenceable(32) ptr @_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairEixERKS1_(ptr noundef align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(32) %i.dx, ptr noundef nonnull align 4 dereferenceable(32) %25, i64 32, i1 false)
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.bi

bb.bc:                                            ; preds = %bb.au
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit169

bb.bd:                                            ; preds = %bb.av
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ea = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i158, label %_ZN17QArrayDataPointerIDsED2Ev.exit169, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159:   ; preds = %bb.bd
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4
  %.not.i.i160 = icmp eq i32 %i.eb, 1
  br i1 %.not.i.i160, label %bb.be, label %_ZN17QArrayDataPointerIDsED2Ev.exit169

bb.be:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159
  %i.ec = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ec, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit169

_ZN17QArrayDataPointerIDsED2Ev.exit169:           ; preds = %bb.be, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159, %bb.bd, %bb.bc
  %.pn46 = phi { ptr, i32 } [ %i.dy, %bb.bc ], [ %i.dz, %bb.bd ], [ %i.dz, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159 ], [ %i.dz, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.bl

bb.bf:                                            ; preds = %bb.ay
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %26) #21
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn48 = phi { ptr, i32 } [ %i.ee, %bb.bg ], [ %i.ed, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bb, %_ZN17QArrayDataPointerIDsED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN10QByteArrayD2Ev.exit127, %_ZN10QByteArrayD2Ev.exit87
  %i.ef = load ptr, ptr %14, align 16             ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i170, label %_ZN7QStringD2Ev.exit173, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171:   ; preds = %bb.bj
  %i.eg = atomicrmw add ptr %i.ef, i32 -1 acq_rel, align 4
  %.not.i.i172 = icmp eq i32 %i.eg, 1
  br i1 %.not.i.i172, label %bb.bk, label %_ZN7QStringD2Ev.exit173

bb.bk:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171
  %i.eh = load ptr, ptr %14, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eh, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit173

_ZN7QStringD2Ev.exit173:                          ; preds = %bb.bj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %33 = and i64 %.sroa.8254.0, -2
  %i.ei = add i64 %33, 2
  %34 = and i64 %.sroa.8254.0, 1
  %35 = or disjoint i64 %i.ei, %34
  br label %bb.d, !llvm.loop !31

bb.bl:                                            ; preds = %bb.bh, %_ZN17QArrayDataPointerIDsED2Ev.exit169
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.bh ], [ %.pn46, %_ZN17QArrayDataPointerIDsED2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.body

.body:                                            ; preds = %_ZN7QStringD2Ev.exit8.i.i, %bb.bl, %_ZN10QByteArrayD2Ev.exit139, %_ZN10QByteArrayD2Ev.exit103
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %_ZN10QByteArrayD2Ev.exit103 ], [ %.pn48.pn, %bb.bl ], [ %i.dl, %_ZN7QStringD2Ev.exit8.i.i ], [ %.pn42.pn.pn, %_ZN10QByteArrayD2Ev.exit139 ] ; 3 uses
  %i.ej = load ptr, ptr %14, align 16             ; 2 uses
  %.not.i.i.i174 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i174, label %_ZN7QStringD2Ev.exit177, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175:   ; preds = %.body
  %i.ek = atomicrmw add ptr %i.ej, i32 -1 acq_rel, align 4
  %.not.i.i176 = icmp eq i32 %i.ek, 1
  br i1 %.not.i.i176, label %bb.bm, label %_ZN7QStringD2Ev.exit177

bb.bm:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175
  %i.el = load ptr, ptr %14, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.el, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit177

_ZN7QStringD2Ev.exit177:                          ; preds = %bb.bm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175, %.body, %_ZN7QStringD2Ev.exit91
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40, %_ZN7QStringD2Ev.exit91 ], [ %.pn51.pn.pn.pn, %.body ], [ %.pn51.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175 ], [ %.pn51.pn.pn.pn, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %.loopexit.split-lp

bb.bn:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store i32 2, ptr %28, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %28, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.em, i8 0, i64 20, i1 false)
  store ptr @.str.28, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 2, ptr @.str.23)
          to label %bb.bo unwind label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  %i.eo = load ptr, ptr %6, align 8               ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.es = load i64, ptr %i.er, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not.i.i.i179 = icmp eq ptr %i.eq, null
  %spec.select.i.i.i180 = select i1 %.not.i.i.i179, ptr @_ZN7QString6_emptyE, ptr %i.eq
  invoke void @_ZN9QtPrivate16QStringList_joinEPK5QListI7QStringEPK5QCharx(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %30, ptr noundef nonnull align 1 dereferenceable_or_null(1) %13, ptr noundef nonnull %spec.select.i.i.i180, i64 noundef %i.es)
          to label %_ZNK19QListSpecialMethodsI7QStringE4joinERKS0_.exit unwind label %bb.bw

_ZNK19QListSpecialMethodsI7QStringE4joinERKS0_.exit: ; preds = %bb.bo
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %30)
          to label %_ZNO7QString6toUtf8Ev.exit unwind label %bb.bx

_ZNO7QString6toUtf8Ev.exit:                       ; preds = %_ZNK19QListSpecialMethodsI7QStringE4joinERKS0_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.eu, null
  %spec.select.i.i184 = select i1 %.not.i.i183, ptr @_ZN10QByteArray6_emptyE, ptr %i.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %31, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %2)
          to label %_ZNKR7QString6toUtf8Ev.exit186 unwind label %bb.by

_ZNKR7QString6toUtf8Ev.exit186:                   ; preds = %_ZNO7QString6toUtf8Ev.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %32, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %4)
          to label %_ZNKR7QString6toUtf8Ev.exit190 unwind label %bb.bz

_ZNKR7QString6toUtf8Ev.exit190:                   ; preds = %_ZNKR7QString6toUtf8Ev.exit186
  %.not.i.i187 = icmp eq ptr %i.ew, null
  %spec.select.i.i188 = select i1 %.not.i.i187, ptr @_ZN10QByteArray6_emptyE, ptr %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not.i.i191 = icmp eq ptr %i.ey, null
  %spec.select.i.i192 = select i1 %.not.i.i191, ptr @_ZN10QByteArray6_emptyE, ptr %i.ey
  invoke void (ptr, ptr, ...) @_ZNK14QMessageLogger7warningEPKcz(ptr noundef nonnull align 8 dereferenceable_or_null(32) %28, ptr noundef @.str.22, ptr noundef nonnull %spec.select.i.i184, ptr noundef nonnull %spec.select.i.i188, ptr noundef nonnull %spec.select.i.i192) #22
          to label %bb.bp unwind label %bb.ca

bb.bp:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit190
  %i.ez = load ptr, ptr %32, align 8              ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i193, label %_ZN10QByteArrayD2Ev.exit196, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i194

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i194:    ; preds = %bb.bp
  %i.fa = atomicrmw add ptr %i.ez, i32 -1 acq_rel, align 4
  %.not.i.i195 = icmp eq i32 %i.fa, 1
  br i1 %.not.i.i195, label %bb.bq, label %_ZN10QByteArrayD2Ev.exit196

bb.bq:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i194
  %i.fb = load ptr, ptr %32, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fb, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit196

_ZN10QByteArrayD2Ev.exit196:                      ; preds = %bb.bp, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i194, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.fc = load ptr, ptr %31, align 8              ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i197, label %_ZN10QByteArrayD2Ev.exit200, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i198

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i198:    ; preds = %_ZN10QByteArrayD2Ev.exit196
  %i.fd = atomicrmw add ptr %i.fc, i32 -1 acq_rel, align 4
  %.not.i.i199 = icmp eq i32 %i.fd, 1
  br i1 %.not.i.i199, label %bb.br, label %_ZN10QByteArrayD2Ev.exit200

bb.br:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i198
  %i.fe = load ptr, ptr %31, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fe, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit200

_ZN10QByteArrayD2Ev.exit200:                      ; preds = %_ZN10QByteArrayD2Ev.exit196, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i198, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.ff = load ptr, ptr %29, align 8              ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i201, label %_ZN10QByteArrayD2Ev.exit204, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i202

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i202:    ; preds = %_ZN10QByteArrayD2Ev.exit200
  %i.fg = atomicrmw add ptr %i.ff, i32 -1 acq_rel, align 4
  %.not.i.i203 = icmp eq i32 %i.fg, 1
  br i1 %.not.i.i203, label %bb.bs, label %_ZN10QByteArrayD2Ev.exit204

bb.bs:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i202
  %i.fh = load ptr, ptr %29, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fh, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit204

_ZN10QByteArrayD2Ev.exit204:                      ; preds = %_ZN10QByteArrayD2Ev.exit200, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i202, %bb.bs
  %i.fi = load ptr, ptr %30, align 8              ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i205, label %_ZN7QStringD2Ev.exit208, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i206

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i206:   ; preds = %_ZN10QByteArrayD2Ev.exit204
  %i.fj = atomicrmw add ptr %i.fi, i32 -1 acq_rel, align 4
  %.not.i.i207 = icmp eq i32 %i.fj, 1
  br i1 %.not.i.i207, label %bb.bt, label %_ZN7QStringD2Ev.exit208

bb.bt:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i206
  %i.fk = load ptr, ptr %30, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fk, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit208

_ZN7QStringD2Ev.exit208:                          ; preds = %_ZN10QByteArrayD2Ev.exit204, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i206, %bb.bt
  %.not.i.i.i209 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i209, label %_ZN7QStringD2Ev.exit212, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i210

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i210:   ; preds = %_ZN7QStringD2Ev.exit208
  %i.fl = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %.not.i.i211 = icmp eq i32 %i.fl, 1
  br i1 %.not.i.i211, label %bb.bu, label %_ZN7QStringD2Ev.exit212

bb.bu:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i210
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.eo, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit212

_ZN7QStringD2Ev.exit212:                          ; preds = %_ZN7QStringD2Ev.exit208, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i210, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.cg

bb.bv:                                            ; preds = %bb.bn
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit232

bb.bw:                                            ; preds = %bb.bo
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit228

bb.bx:                                            ; preds = %_ZNK19QListSpecialMethodsI7QStringE4joinERKS0_.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit224

bb.by:                                            ; preds = %_ZNO7QString6toUtf8Ev.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit220

bb.bz:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit186
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit216

bb.ca:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit190
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fs = load ptr, ptr %32, align 8              ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i213, label %_ZN10QByteArrayD2Ev.exit216, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i214

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i214:    ; preds = %bb.ca
  %i.ft = atomicrmw add ptr %i.fs, i32 -1 acq_rel, align 4
  %.not.i.i215 = icmp eq i32 %i.ft, 1
  br i1 %.not.i.i215, label %bb.cb, label %_ZN10QByteArrayD2Ev.exit216
end_hunk_1
