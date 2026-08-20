inline.NumInlined: 1201
inline.NumDeleted: 619
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN19InterfaceStatisticsC2EP7QObject:bb.a

bb.m:                                             ; preds = %.noexc112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #22
  %i.bn = load ptr, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN20InterfaceStatsWorker6failedEiRK7QString to i64), ptr %i.a, align 8, !noalias !30
  %.fca.1.gep12.i117 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep12.i117, align 8, !noalias !30
  store i64 ptrtoint (ptr @_ZN19InterfaceStatistics14onWorkerFailedEiRK7QString to i64), ptr %i.b, align 8, !noalias !30
  %.fca.1.gep.i118 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i118, align 8, !noalias !30
  %i.bo = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc120 unwind label %bb.s  ; 5 uses

.noexc120:                                        ; preds = %bb.m
  store i32 1, ptr %i.bo, align 4, !noalias !30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM19InterfaceStatisticsFviRK7QStringENS_4ListIJiS4_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.bp, align 8, !noalias !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 ptrtoint (ptr @_ZN19InterfaceStatistics14onWorkerFailedEiRK7QString to i64), ptr %i.bq, align 8, !noalias !30
  %.repack7.i.i119 = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 0, ptr %.repack7.i.i119, align 8, !noalias !30
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %10, ptr noundef %i.bn, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.bo, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN20InterfaceStatsWorker16staticMetaObjectE)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr null, ptr %11, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 14, ptr %i.bs, align 8
  invoke void @_ZN7QObject15doSetObjectNameERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN7QObject13setObjectNameIvEEvRK7QString.exit unwind label %bb.t

_ZN7QObject13setObjectNameIvEEvRK7QString.exit:   ; preds = %bb.n
  %i.bt = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN7QObject13setObjectNameIvEEvRK7QString.exit
  %i.bu = atomicrmw sub ptr %i.bt, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bu, 1
  br i1 %.not.i.i, label %bb.o, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bv = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bv, i64 noundef 2, i64 noundef 8) #22
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %_ZN7QObject13setObjectNameIvEEvRK7QString.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  invoke void @_ZN7QThread5startENS_8PriorityE(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.u, i32 noundef 7)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  ret void

bb.q:                                             ; preds = %bb.c, %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 72) #23
  br label %bb.w

bb.s:                                             ; preds = %.noexc120, %bb.m, %.noexc112, %bb.l, %.noexc104, %bb.k, %.noexc96, %bb.j, %.noexc87, %bb.i, %.noexc78, %bb.h, %.noexc69, %bb.g, %.noexc61, %bb.f, %.noexc, %bb.e, %_ZN17QArrayDataPointerIDsED2Ev.exit, %bb.d
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i124, label %_ZN17QArrayDataPointerIDsED2Ev.exit131, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i125

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i125:   ; preds = %bb.t
  %i.cb = atomicrmw sub ptr %i.ca, i32 1 acq_rel, align 4
  %.not.i.i126 = icmp eq i32 %i.cb, 1
  br i1 %.not.i.i126, label %bb.u, label %_ZN17QArrayDataPointerIDsED2Ev.exit131

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i125
  %i.cc = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cc, i64 noundef 2, i64 noundef 8) #22
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit131

_ZN17QArrayDataPointerIDsED2Ev.exit131:           ; preds = %bb.u, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i125, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.v

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit131, %bb.s
  %.pn = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bz, %_ZN17QArrayDataPointerIDsED2Ev.exit131 ]
  call void @_ZN5QListI7QStringED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.aa) #22
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.z) #22
  call void @_ZN5QHashI7QString5QListIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.y) #22
  call void @_ZN5QHashI7QString5QListIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.x) #22
  call void @_ZN5QHashI7QStringyED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.w) #22
  call void @_ZN5QHashI7QStringyED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.v) #22
  call void @_ZN7QThreadD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %i.u) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.bw, %bb.q ], [ %i.bx, %bb.r ]
  call void @_ZN7QObjectD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObjectC2EPS_(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorkerC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(65), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QThreadC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject12moveToThreadEP7QThread(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QThread8finishedENS_14QPrivateSignalE(ptr noundef align 8 dereferenceable_or_null(16)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject11deleteLaterEv(ptr noundef align 8 dereferenceable_or_null(16)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN19InterfaceStatistics11startWorkerEv(ptr noundef align 8 dereferenceable_or_null(115)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorker5startEv(ptr noundef align 8 dereferenceable_or_null(65)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN19InterfaceStatistics10stopWorkerEv(ptr noundef align 8 dereferenceable_or_null(115)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorker4stopEv(ptr noundef align 8 dereferenceable_or_null(65)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN19InterfaceStatistics11pauseWorkerEv(ptr noundef align 8 dereferenceable_or_null(115)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorker5pauseEv(ptr noundef align 8 dereferenceable_or_null(65)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN19InterfaceStatistics12resumeWorkerEv(ptr noundef align 8 dereferenceable_or_null(115)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorker6resumeEv(ptr noundef align 8 dereferenceable_or_null(65)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN19InterfaceStatistics17setWorkerIntervalEi(ptr noundef align 8 dereferenceable_or_null(115), i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorker17setUpdateIntervalEi(ptr noundef align 8 dereferenceable_or_null(65), i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN19InterfaceStatistics15setWorkerFilterERK5QListI7QStringE(ptr noundef align 8 dereferenceable_or_null(115), ptr noundef align 8 dereferenceable(24)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorker18setInterfaceFilterERK5QListI7QStringE(ptr noundef align 8 dereferenceable_or_null(65), ptr noundef align 8 dereferenceable(24)) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN20InterfaceStatsWorker7sampledERK5QHashI7QString20InterfaceStatsSampleE(ptr noundef align 8 dereferenceable_or_null(65), ptr noundef align 1) #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics9onSampledERK5QHashI7QString20InterfaceStatsSampleE(ptr noundef align 8 dereferenceable_or_null(115) %0, ptr nofree noundef readonly align 1 captures(none) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 11 uses
  %3 = alloca %struct.QHashDummyValue, align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK4QSetI7QStringE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8
  br label %_ZNK4QSetI7QStringE4sizeEv.exit

_ZNK4QSetI7QStringE4sizeEv.exit:                  ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZNK4QSetI7QStringE4sizeEv.exit
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %.not.i.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.o = add nuw i64 %i.q, 1                      ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %._crit_edge, label %.lr.ph, !llvm.loop !33

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.q = phi i64 [ %i.o, %bb.e ], [ 1, %bb.d ]    ; 4 uses
  %i.r = lshr i64 %i.q, 7
  %i.s = getelementptr [144 x i8], ptr %i.j, i64 %i.r
  %i.t = and i64 %i.q, 127
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.not.i.i.i.i = icmp eq i8 %i.v, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread.lr.ph, !llvm.loop !33

_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread.lr.ph: ; preds = %.lr.ph, %bb.c
  %.sroa.4.0.i84 = phi i64 [ 0, %bb.c ], [ %i.q, %.lr.ph ]
  %i.w = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 56
  %i.z = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread

._crit_edge.loopexit:                             ; preds = %_ZN5QHashI7QString20InterfaceStatsSampleE14const_iteratorppEv.exit
  %.pre = load ptr, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %_ZNK4QSetI7QStringE4sizeEv.exit, %bb.d, %._crit_edge.loopexit
  %4 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.d ], [ %i.d, %_ZNK4QSetI7QStringE4sizeEv.exit ], [ %i.d, %bb.e ] ; 2 uses
  %.not.i.i30 = icmp eq ptr %4, null
  br i1 %.not.i.i30, label %_ZNK4QSetI7QStringE4sizeEv.exit31, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ad = getelementptr i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  br label %_ZNK4QSetI7QStringE4sizeEv.exit31

_ZNK4QSetI7QStringE4sizeEv.exit31:                ; preds = %._crit_edge, %bb.f
  %i.af = phi i64 [ %i.ae, %bb.f ], [ 0, %._crit_edge ]
  %.not = icmp eq i64 %i.af, %i.g
  br i1 %.not, label %bb.t, label %bb.s

_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread: ; preds = %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread.lr.ph, %_ZN5QHashI7QString20InterfaceStatsSampleE14const_iteratorppEv.exit
  %.sroa.8.064 = phi i64 [ %.sroa.4.0.i84, %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN5QHashI7QString20InterfaceStatsSampleE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.055.063 = phi ptr [ %i.h, %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread.lr.ph ], [ %.sroa.055.1, %_ZN5QHashI7QString20InterfaceStatsSampleE14const_iteratorppEv.exit ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.sroa.055.063, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = lshr i64 %.sroa.8.064, 7
  %i.aj = getelementptr [144 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = and i64 %.sroa.8.064, 127
  %i.al = getelementptr i8, ptr %i.aj, i64 128
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr [40 x i8], ptr %i.am, i64 %i.ap ; 11 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  %i.as = call noundef ptr @_ZNK5QHashI7QStringyE9valueImplERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.w, ptr noundef align 8 dereferenceable(24) %i.aq) #22 ; 2 uses
  %.not.i32 = icmp eq ptr %i.as, null
  %..i = select i1 %.not.i32, ptr %i.ar, ptr %i.as
  %.0.i = load i64, ptr %..i, align 8             ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 32     ; 3 uses
  %i.au = call noundef ptr @_ZNK5QHashI7QStringyE9valueImplERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.x, ptr noundef align 8 dereferenceable(24) %i.aq) #22 ; 2 uses
  %.not.i33 = icmp eq ptr %i.au, null
  %..i34 = select i1 %.not.i33, ptr %i.at, ptr %i.au
  %.0.i35 = load i64, ptr %..i34, align 8         ; 2 uses
  %i.av = load i64, ptr %i.ar, align 8            ; 3 uses
  %.not28 = icmp ult i64 %i.av, %.0.i
  %i.aw = sub nuw i64 %i.av, %.0.i
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = select i1 %.not28, i32 0, i32 %i.ax     ; 2 uses
  %i.az = load i64, ptr %i.at, align 8            ; 2 uses
  %.not29 = icmp ult i64 %i.az, %.0.i35
  %i.ba = sub nuw i64 %i.az, %.0.i35
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = select i1 %.not29, i32 0, i32 %i.bb
  %i.bd = call noundef align 8 dereferenceable(8) ptr @_ZN5QHashI7QStringyEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.w, ptr noundef align 8 dereferenceable(24) %i.aq)
  store i64 %i.av, ptr %i.bd, align 8
  %i.be = load i64, ptr %i.at, align 8
  %i.bf = call noundef align 8 dereferenceable(8) ptr @_ZN5QHashI7QStringyEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.x, ptr noundef align 8 dereferenceable(24) %i.aq)
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = call noundef align 8 dereferenceable(24) ptr @_ZN5QHashI7QString5QListIiEEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.y, ptr noundef align 8 dereferenceable(24) %i.aq) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ay, ptr %i.b, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bg, i64 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.bj = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread
  %i.bk = load atomic i32, ptr %i.bj monotonic, align 4
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN5QListIiE6appendEi.exit.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK5QHashI7QString20InterfaceStatsSampleE14const_iteratorneERKS3_.exit.thread
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bg, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIiE6appendEi.exit.i

_ZN5QListIiE6appendEi.exit.i:                     ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bn = load i32, ptr %i.z, align 8
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = icmp sgt i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.g, label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit

bb.g:                                             ; preds = %_ZN5QListIiE6appendEi.exit.i
  %i.bq = sub i64 %i.bm, %i.bo                    ; 2 uses
  %i.br = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bs = load atomic i32, ptr %i.br monotonic, align 4
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i, %bb.g
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bg, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i.i = load i64, ptr %i.bh, align 8
  br label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i

_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i
  %i.bu = phi i64 [ %.pre.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i ], [ %i.bm, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i ] ; 2 uses
  %.idx3.i.i.i = shl i64 %i.bq, 2                 ; 2 uses
  %.idx4.i.i.i = shl i64 %i.bu, 2
  %.not.i.i.i.i36 = icmp eq i64 %.idx3.i.i.i, %.idx4.i.i.i
  br i1 %.not.i.i.i.i36, label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 %.idx3.i.i.i
  store ptr %i.bx, ptr %i.bv, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i

_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i: ; preds = %bb.h, %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i
  %i.by = sub i64 %i.bu, %i.bq
  store i64 %i.by, ptr %i.bh, align 8
  br label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit

_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit: ; preds = %_ZN5QListIiE6appendEi.exit.i, %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i
  %i.bz = call noundef align 8 dereferenceable(24) ptr @_ZN5QHashI7QString5QListIiEEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.aa, ptr noundef align 8 dereferenceable(24) %i.aq) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bc, ptr %i.a, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 4 uses
  %i.cb = load i64, ptr %i.ca, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bz, i64 noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.cc = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i37 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i37, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i49, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i38

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i38: ; preds = %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit
  %i.cd = load atomic i32, ptr %i.cc monotonic, align 4
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i49, label %_ZN5QListIiE6appendEi.exit.i39

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i49: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i38, %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bz, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIiE6appendEi.exit.i39

_ZN5QListIiE6appendEi.exit.i39:                   ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i49, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load i64, ptr %i.ca, align 8            ; 3 uses
  %i.cg = load i32, ptr %i.z, align 8
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp sgt i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.i, label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit50

bb.i:                                             ; preds = %_ZN5QListIiE6appendEi.exit.i39
  %i.cj = sub i64 %i.cf, %i.ch                    ; 2 uses
  %i.ck = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i.i.i.i.i40 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i40, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i47, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i41

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i41: ; preds = %bb.i
  %i.cl = load atomic i32, ptr %i.ck monotonic, align 4
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i47, label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i42

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i47: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i41, %bb.i
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bz, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i.i48 = load i64, ptr %i.ca, align 8
  br label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i42

_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i42: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i47, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i41
  %i.cn = phi i64 [ %.pre.i.i48, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i47 ], [ %i.cf, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i41 ] ; 2 uses
  %.idx3.i.i.i43 = shl i64 %i.cj, 2               ; 2 uses
  %.idx4.i.i.i44 = shl i64 %i.cn, 2
  %.not.i.i.i.i45 = icmp eq i64 %.idx3.i.i.i43, %.idx4.i.i.i44
  br i1 %.not.i.i.i.i45, label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i46, label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i42
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.idx3.i.i.i43
  store ptr %i.cq, ptr %i.co, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i46

_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i46: ; preds = %bb.j, %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i42
  %i.cr = sub i64 %i.cn, %i.cj
  store i64 %i.cr, ptr %i.ca, align 8
  br label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit50

_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit50: ; preds = %_ZN5QListIiE6appendEi.exit.i39, %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i46
  %i.cs = icmp sgt i32 %i.ay, 0
  br i1 %i.cs, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !35
  %i.ct = load ptr, ptr %i.aq, align 8, !noalias !35 ; 3 uses
  store ptr %i.ct, ptr %2, align 8, !noalias !35
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !35
  store ptr %i.cv, ptr %i.ab, align 8, !noalias !35
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !35
  store i64 %i.cx, ptr %i.ac, align 8, !noalias !35
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7QStringC2ERKS_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = atomicrmw add ptr %i.ct, i32 1 acq_rel, align 4, !noalias !35 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i.i.i

_ZN7QStringC2ERKS_.exit.i.i.i:                    ; preds = %bb.l, %bb.k
  %i.cz = invoke { ptr, i64 } @_ZN5QHashI7QString15QHashDummyValueE7emplaceIJRKS1_EEENS2_8iteratorEOS0_DpOT_(ptr noundef align 8 dereferenceable_or_null(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.m unwind label %bb.o, !noalias !35 ; 0 uses

bb.m:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i.i.i
  %i.da = load ptr, ptr %2, align 8, !noalias !35 ; 2 uses
  %.not.i.i.i4.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i4.i.i.i, label %_ZN4QSetI7QStringE6insertERKS0_.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.db = atomicrmw sub ptr %i.da, i32 1 acq_rel, align 4, !noalias !35
  %.not.i.i.i.i.i51 = icmp eq i32 %i.db, 1
  br i1 %.not.i.i.i.i.i51, label %bb.n, label %_ZN4QSetI7QStringE6insertERKS0_.exit

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i
  %i.dc = load ptr, ptr %2, align 8, !noalias !35
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dc, i64 noundef 2, i64 noundef 8) #22, !noalias !35
end_hunk_0
begin_hunk_1_@_ZNK19InterfaceStatistics4rateERK7QString:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !noalias !50 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noalias !50 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNK5QHashI7QString5QListIiEE5valueERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4, !noalias !50 ; 0 uses
  br label %_ZNK5QHashI7QString5QListIiEE5valueERKS0_.exit

_ZNK5QHashI7QString5QListIiEE5valueERKS0_.exit:   ; preds = %bb.b, %bb.c
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5QHashI7QString5QListIiEE5valueERKS0_.exit
  %i.j = getelementptr [4 x i8], ptr %i.e, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK5QHashI7QString5QListIiEE5valueERKS0_.exit
  %.0 = phi i32 [ 0, %_ZNK5QHashI7QString5QListIiEE5valueERKS0_.exit ], [ %spec.select, %bb.d ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5QListIiED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i:       ; preds = %bb.e
  %i.m = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.m, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN5QListIiED2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 8) #22
  br label %_ZN5QListIiED2Ev.exit

_ZN5QListIiED2Ev.exit:                            ; preds = %bb.a, %bb.e, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i, %bb.f
  %.013 = phi i32 [ %.0, %bb.f ], [ %.0, %bb.e ], [ %.0, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK19InterfaceStatistics14updateIntervalEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(115) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK19InterfaceStatistics15historyCapacityEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(115) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK19InterfaceStatistics9isRunningEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(115) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics5startEv(ptr noundef align 8 dereferenceable_or_null(115) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 113
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %0, i64 40
  tail call void @_ZN5QHashI7QStringyE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.e) #22
  %i.f = getelementptr i8, ptr %0, i64 48
  tail call void @_ZN5QHashI7QStringyE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.f) #22
  %i.g = getelementptr i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4
  tail call void @_ZN19InterfaceStatistics17setWorkerIntervalEi(ptr noundef align 8 dereferenceable_or_null(115) %0, i32 noundef %i.h)
  %i.i = getelementptr i8, ptr %0, i64 80
  tail call void @_ZN19InterfaceStatistics15setWorkerFilterERK5QListI7QStringE(ptr noundef align 8 dereferenceable_or_null(115) %0, ptr noundef align 8 dereferenceable(24) %i.i)
  tail call void @_ZN19InterfaceStatistics11startWorkerEv(ptr noundef align 8 dereferenceable_or_null(115) %0)
  store i8 1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics14resetBaselinesEv(ptr noundef align 8 dereferenceable_or_null(115) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  tail call void @_ZN5QHashI7QStringyE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.a) #22
  %i.b = getelementptr i8, ptr %0, i64 48
  tail call void @_ZN5QHashI7QStringyE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.b) #22
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics4stopEv(ptr noundef align 8 dereferenceable_or_null(115) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN19InterfaceStatistics10stopWorkerEv(ptr noundef align 8 dereferenceable_or_null(115) %0)
  store i8 0, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 113
  store i8 0, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics13pauseSamplingEv(ptr noundef align 8 dereferenceable_or_null(115) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 113        ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !39, !noundef !40
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN19InterfaceStatistics11pauseWorkerEv(ptr noundef align 8 dereferenceable_or_null(115) %0)
  %i.g = getelementptr i8, ptr %0, i64 40
  tail call void @_ZN5QHashI7QStringyE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.g) #22
  %i.h = getelementptr i8, ptr %0, i64 48
  tail call void @_ZN5QHashI7QStringyE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.h) #22
  store i8 1, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics14resumeSamplingEv(ptr noundef align 8 dereferenceable_or_null(115) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 113        ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !39, !noundef !40
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN19InterfaceStatistics12resumeWorkerEv(ptr noundef align 8 dereferenceable_or_null(115) %0)
  store i8 0, ptr %i.f, align 1
  %i.i = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call noundef ptr @_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE8detachedEPS6_(ptr noundef %i.j) ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  br label %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i

_ZN5QHashI7QString5QListIiEE6detachEv.exit.i:     ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.j, %bb.d ], [ %i.m, %bb.e ] ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %.not.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN5QHashI7QString5QListIiEE5beginEv.exit

bb.f:                                             ; preds = %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_ZN5QHashI7QString5QListIiEE5beginEv.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %i.w, 1                      ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.s
  br i1 %i.v, label %_ZN5QHashI7QString5QListIiEE5beginEv.exit, label %.lr.ph, !llvm.loop !53

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.w = phi i64 [ %i.u, %bb.g ], [ 1, %bb.f ]    ; 4 uses
  %i.x = lshr i64 %i.w, 7
  %i.y = getelementptr [144 x i8], ptr %i.p, i64 %i.x
  %i.z = and i64 %i.w, 127
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread.lr.ph, !llvm.loop !53

_ZN5QHashI7QString5QListIiEE5beginEv.exit:        ; preds = %bb.g, %bb.f, %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i
  %.sroa.0.0.i.i = phi ptr [ %i.n, %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i ], [ null, %bb.f ], [ null, %bb.g ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not, label %.critedge, label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread.lr.ph

_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread.lr.ph: ; preds = %.lr.ph, %_ZN5QHashI7QString5QListIiEE5beginEv.exit
  %.sroa.5.0.i.i47 = phi i64 [ 0, %_ZN5QHashI7QString5QListIiEE5beginEv.exit ], [ %i.w, %.lr.ph ]
  %.sroa.0.0.i.i46 = phi ptr [ %.sroa.0.0.i.i, %_ZN5QHashI7QString5QListIiEE5beginEv.exit ], [ %i.n, %.lr.ph ]
  %i.ac = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 64
  br label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread

._crit_edge:                                      ; preds = %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit
  br i1 %.1, label %bb.o, label %.critedge

_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread: ; preds = %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread.lr.ph, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit
  %.031 = phi i1 [ false, %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread.lr.ph ], [ %.1, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit ] ; 2 uses
  %.sroa.8.030 = phi i64 [ %.sroa.5.0.i.i47, %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit ] ; 3 uses
  %.sroa.021.029 = phi ptr [ %.sroa.0.0.i.i46, %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread.lr.ph ], [ %.sroa.021.1, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.sroa.021.029, i64 32 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = lshr i64 %.sroa.8.030, 7                ; 2 uses
  %i.ah = getelementptr [144 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = and i64 %.sroa.8.030, 127               ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.ah, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr [48 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 24     ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 40     ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18, label %bb.h

bb.h:                                             ; preds = %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread
  %i.at = getelementptr i8, ptr %i.ao, i64 32     ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ar
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 -1, ptr %i.b, align 4
  call void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.ap, i64 noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.az = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN5QListIiE6appendEi.exit.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i, %bb.i
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.ap, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIiE6appendEi.exit.i

_ZN5QListIiE6appendEi.exit.i:                     ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bc = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.bd = load i32, ptr %i.ac, align 8
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = icmp sgt i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.j, label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit

bb.j:                                             ; preds = %_ZN5QListIiE6appendEi.exit.i
  %i.bg = sub i64 %i.bc, %i.be                    ; 2 uses
  %i.bh = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bi = load atomic i32, ptr %i.bh monotonic, align 4
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i, %bb.j
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.ap, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i.i = load i64, ptr %i.aq, align 8
  br label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i

_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i
  %i.bk = phi i64 [ %.pre.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i ], [ %i.bc, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i ] ; 2 uses
  %.idx3.i.i.i = shl i64 %i.bg, 2                 ; 2 uses
  %.idx4.i.i.i = shl i64 %i.bk, 2
  %.not.i.i.i.i4 = icmp eq i64 %.idx3.i.i.i, %.idx4.i.i.i
  br i1 %.not.i.i.i.i4, label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i
  %i.bl = load ptr, ptr %i.at, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx3.i.i.i
  store ptr %i.bm, ptr %i.at, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i

_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i: ; preds = %bb.k, %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i
  %i.bn = sub i64 %i.bk, %i.bg
  store i64 %i.bn, ptr %i.aq, align 8
  br label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit

_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit: ; preds = %_ZN5QListIiE6appendEi.exit.i, %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i
  %i.bo = load ptr, ptr %i.ae, align 8
  %i.bp = getelementptr [144 x i8], ptr %i.bo, i64 %i.ag ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 128
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.ai
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr [48 x i8], ptr %i.br, i64 %i.bu
  %i.bw = call noundef align 8 dereferenceable(24) ptr @_ZN5QHashI7QString5QListIiEEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.ad, ptr noundef align 8 dereferenceable(24) %i.bv) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 -1, ptr %i.a, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bw, i64 noundef %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.bz = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i5, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i17, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i6

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i6: ; preds = %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit
  %i.ca = load atomic i32, ptr %i.bz monotonic, align 4
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i17, label %_ZN5QListIiE6appendEi.exit.i7

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i17: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i6, %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bw, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIiE6appendEi.exit.i7

_ZN5QListIiE6appendEi.exit.i7:                    ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i.i17, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cc = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.cd = load i32, ptr %i.ac, align 8
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = icmp sgt i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.l, label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18

bb.l:                                             ; preds = %_ZN5QListIiE6appendEi.exit.i7
  %i.cg = sub i64 %i.cc, %i.ce                    ; 2 uses
  %i.ch = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i8, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i15, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i9

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i9: ; preds = %bb.l
  %i.ci = load atomic i32, ptr %i.ch monotonic, align 4
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i15, label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i10

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i15: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i9, %bb.l
  call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bw, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i.i16 = load i64, ptr %i.bx, align 8
  br label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i10

_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i10: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i15, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i9
  %i.ck = phi i64 [ %.pre.i.i16, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i15 ], [ %i.cc, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i9 ] ; 2 uses
  %.idx3.i.i.i11 = shl i64 %i.cg, 2               ; 2 uses
  %.idx4.i.i.i12 = shl i64 %i.ck, 2
  %.not.i.i.i.i13 = icmp eq i64 %.idx3.i.i.i11, %.idx4.i.i.i12
  br i1 %.not.i.i.i.i13, label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i14, label %bb.m

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 %.idx3.i.i.i11
  store ptr %i.cn, ptr %i.cl, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i14

_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i14: ; preds = %bb.m, %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i.i10
  %i.co = sub i64 %i.ck, %i.cg
  store i64 %i.co, ptr %i.bx, align 8
  br label %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18

_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18: ; preds = %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i14, %_ZN5QListIiE6appendEi.exit.i7, %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread, %bb.h
  %.1 = phi i1 [ %.031, %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread ], [ %.031, %bb.h ], [ true, %_ZN5QListIiE6appendEi.exit.i7 ], [ true, %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i.i14 ] ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.021.029, i64 16
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = add i64 %.sroa.8.030, 1                 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %i.cq
  br i1 %i.cs, label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18
  %i.ct = load ptr, ptr %i.ae, align 8
  br label %.lr.ph48

bb.n:                                             ; preds = %.lr.ph48
  %i.cu = add i64 %i.cw, 1                        ; 2 uses
  %i.cv = icmp eq i64 %i.cu, %i.cq
  br i1 %i.cv, label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit, label %.lr.ph48, !llvm.loop !53

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.n
  %i.cw = phi i64 [ %i.cu, %bb.n ], [ %i.cr, %.lr.ph48.preheader ] ; 4 uses
  %i.cx = lshr i64 %i.cw, 7
  %i.cy = getelementptr [144 x i8], ptr %i.ct, i64 %i.cx
  %i.cz = and i64 %i.cw, 127
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %.not.i.i.i20 = icmp eq i8 %i.db, -1
  br i1 %.not.i.i.i20, label %bb.n, label %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge51, !llvm.loop !53

._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge51: ; preds = %.lr.ph48
  br label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit, !llvm.loop !53

_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit:   ; preds = %bb.n, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge51, %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18
  %.sroa.021.1 = phi ptr [ %.sroa.021.029, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge51 ], [ null, %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18 ], [ null, %bb.n ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.cw, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge51 ], [ 0, %_ZNK19InterfaceStatistics12appendCappedER5QListIiEi.exit18 ], [ 0, %bb.n ] ; 2 uses
  %i.dc = icmp ne ptr %.sroa.021.1, null
  %i.dd = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.dc, %i.dd
  br i1 %or.cond, label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread, label %._crit_edge, !llvm.loop !54

bb.o:                                             ; preds = %._crit_edge
  call void @_ZN19InterfaceStatistics17statisticsUpdatedEv(ptr noundef align 8 dereferenceable_or_null(115) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZN5QHashI7QString5QListIiEE5beginEv.exit, %._crit_edge, %bb.o, %bb.a, %bb.b
  ret void
end_hunk_1
begin_hunk_2_@_ZN5QHashI7QStringyE6removeERKS0_:bb.a
bb.g:                                             ; preds = %_ZN5QHashI7QStringyE6detachEv.exit
  tail call void @_ZN12QHashPrivate4DataINS_4NodeI7QStringyEEE5eraseENS4_6BucketE(ptr noundef align 8 dereferenceable_or_null(40) %i.be, ptr %i.bg, i64 %i.bh) #22
  br label %_ZNK5QHashI7QStringyE7isEmptyEv.exit.thread

_ZNK5QHashI7QStringyE7isEmptyEv.exit.thread:      ; preds = %bb.g, %_ZN5QHashI7QStringyE6detachEv.exit, %bb.a, %_ZNK5QHashI7QStringyE7isEmptyEv.exit
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK5QHashI7QStringyE7isEmptyEv.exit ], [ false, %_ZN5QHashI7QStringyE6detachEv.exit ], [ true, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN5QHashI7QString5QListIiEE6removeERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 8 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit.thread, label %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit

_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit:     ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = tail call noundef i64 @_Z5qHash11QStringViewm(i64 %i.j, ptr %i.h, i64 noundef %i.f) #25
  %i.l = getelementptr i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, %i.k                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = lshr i64 %i.o, 7                         ; 2 uses
  %i.s = getelementptr [144 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = and i64 %i.o, 127                        ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit.thread, label %.lr.ph.i

_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit.thread: ; preds = %bb.b
  %.idx = mul i64 %i.r, 144
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.b
  %i.x = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.y = lshr i64 %i.m, 7
  br label %bb.c

bb.c:                                             ; preds = %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i, %.lr.ph.i
  %i.z = phi i8 [ %i.v, %.lr.ph.i ], [ %i.at, %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i ]
  %.sroa.0.015.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.0.1.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i ] ; 4 uses
  %.sroa.7.014.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.sroa.7.1.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i ] ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr %.sroa.0.015.i, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr [48 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, %i.j
  br i1 %i.ag, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i

_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i:         ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.j, ptr %i.ai, i64 %i.j, ptr %i.h, i32 noundef 1) #25
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i

_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i:  ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i, %bb.c
  %i.al = add nuw nsw i64 %.sroa.7.014.i, 1       ; 2 uses
  %i.am = icmp eq i64 %i.al, 128
  br i1 %i.am, label %bb.d, label %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i, !prof !48

bb.d:                                             ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i
  %i.an = getelementptr i8, ptr %.sroa.0.015.i, i64 144 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.x
  %i.aq = sdiv exact i64 %i.ap, 144
  %i.ar = icmp eq i64 %i.aq, %i.y
  %spec.select.i = select i1 %i.ar, ptr %i.q, ptr %i.an
  br label %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i

_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i: ; preds = %bb.d, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i
  %.sroa.7.1.i = phi i64 [ %i.al, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.015.i, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i ], [ %spec.select.i, %bb.d ] ; 3 uses
  %i.as = getelementptr i8, ptr %.sroa.0.1.i, i64 %.sroa.7.1.i
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %i.au = icmp eq i8 %i.at, -1
  br i1 %i.au, label %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit, label %bb.c, !llvm.loop !56

_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit: ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i
  %.sroa.7.0.lcssa.i = phi i64 [ %.sroa.7.014.i, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i ], [ %.sroa.7.1.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i ]
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.0.015.i, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i ], [ %.sroa.0.1.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE6Bucket14advanceWrappedEPKS6_.exit.i ]
  %i.av = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.aw = sub i64 %i.av, %i.x
  br label %bb.e

bb.e:                                             ; preds = %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit, %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit.thread
  %.sink = phi i64 [ %i.aw, %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit ], [ %.idx, %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit.thread ]
  %.sroa.7.0.lcssa.i.sink = phi i64 [ %.sroa.7.0.lcssa.i, %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit ], [ %i.t, %_ZNK12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE10findBucketERKS2_.exit.thread ] ; 2 uses
  %i.ax = sdiv exact i64 %.sink, 144
  %i.ay = shl nsw i64 %i.ax, 7
  %i.az = or i64 %i.ay, %.sroa.7.0.lcssa.i.sink
  %i.ba = load atomic i32, ptr %i.a monotonic, align 8
  %i.bb = icmp ugt i32 %i.ba, 1
  br i1 %i.bb, label %bb.f, label %_ZN5QHashI7QString5QListIiEE6detachEv.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = tail call noundef ptr @_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE8detachedEPS6_(ptr noundef nonnull %i.a) ; 3 uses
  store ptr %i.bc, ptr %0, align 8
  %.phi.trans.insert = getelementptr i8, ptr %i.bc, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN5QHashI7QString5QListIiEE6detachEv.exit

_ZN5QHashI7QString5QListIiEE6detachEv.exit:       ; preds = %bb.e, %bb.f
  %i.bd = phi ptr [ %i.q, %bb.e ], [ %.pre, %bb.f ]
  %i.be = phi ptr [ %i.a, %bb.e ], [ %i.bc, %bb.f ]
  %i.bf = lshr i64 %i.az, 7
  %i.bg = getelementptr [144 x i8], ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bh = and i64 %.sroa.7.0.lcssa.i.sink, 127    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %.not.i4.not = icmp eq i8 %i.bj, -1
  br i1 %.not.i4.not, label %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5QHashI7QString5QListIiEE6detachEv.exit
  tail call void @_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE5eraseENS6_6BucketE(ptr noundef align 8 dereferenceable_or_null(40) %i.be, ptr %i.bg, i64 %i.bh) #22
  br label %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit.thread

_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit.thread: ; preds = %bb.g, %_ZN5QHashI7QString5QListIiEE6detachEv.exit, %bb.a, %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK5QHashI7QString5QListIiEE7isEmptyEv.exit ], [ false, %_ZN5QHashI7QString5QListIiEE6detachEv.exit ], [ true, %bb.g ]
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN19InterfaceStatistics15activityChangedEv(ptr noundef align 8 dereferenceable_or_null(115)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics13resetActivityEv(ptr noundef align 8 dereferenceable_or_null(115) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4QSetI7QStringE7isEmptyEv.exit.thread, label %_ZNK4QSetI7QStringE7isEmptyEv.exit

_ZNK4QSetI7QStringE7isEmptyEv.exit:               ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNK4QSetI7QStringE7isEmptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4QSetI7QStringE7isEmptyEv.exit
  tail call void @_ZN5QHashI7QString15QHashDummyValueE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.a) #22
  tail call void @_ZN19InterfaceStatistics15activityChangedEv(ptr noundef align 8 dereferenceable_or_null(115) %0)
  br label %_ZNK4QSetI7QStringE7isEmptyEv.exit.thread

_ZNK4QSetI7QStringE7isEmptyEv.exit.thread:        ; preds = %bb.a, %_ZNK4QSetI7QStringE7isEmptyEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19InterfaceStatistics18setHistoryCapacityEi(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(115) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 104        ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %1, %i.c
  store i32 %1, ptr %i.b, align 8
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = icmp ugt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call noundef ptr @_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE8detachedEPS6_(ptr noundef %i.f) ; 2 uses
  store ptr %i.i, ptr %i.e, align 8
  br label %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i

_ZN5QHashI7QString5QListIiEE6detachEv.exit.i:     ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.f, %bb.d ], [ %i.i, %bb.e ] ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %.not.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i, label %bb.f, label %._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge

bb.f:                                             ; preds = %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %i.s, 1                      ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.o
  br i1 %i.r, label %._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !53

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.s = phi i64 [ %i.q, %bb.g ], [ 1, %bb.f ]    ; 4 uses
  %i.t = lshr i64 %i.s, 7
  %i.u = getelementptr [144 x i8], ptr %i.l, i64 %i.t
  %i.v = and i64 %i.s, 127
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %.not.i.i.i.i = icmp eq i8 %i.x, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN5QHashI7QString5QListIiEE5beginEv.exit, !llvm.loop !53

._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge: ; preds = %bb.g, %bb.f, %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i
  %.sroa.0.0.i.i = phi ptr [ %i.j, %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i ], [ null, %bb.f ], [ null, %bb.g ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not, label %._crit_edge, label %_ZN5QHashI7QString5QListIiEE5beginEv.exit

_ZN5QHashI7QString5QListIiEE5beginEv.exit:        ; preds = %.lr.ph, %._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge
  %.sroa.749.055.ph = phi i64 [ 0, %._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge ], [ %i.s, %.lr.ph ]
  %.sroa.046.054.ph = phi ptr [ %.sroa.0.0.i.i, %._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge ], [ %i.j, %.lr.ph ]
  br label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread

._crit_edge:                                      ; preds = %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit, %._ZN5QHashI7QString5QListIiEE5beginEv.exit.loopexit_crit_edge
  %i.y = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %.not.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = icmp ugt i32 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i11

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ac = tail call noundef ptr @_ZN12QHashPrivate4DataINS_4NodeI7QString5QListIiEEEE8detachedEPS6_(ptr noundef %i.z) ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8
  br label %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i11

_ZN5QHashI7QString5QListIiEE6detachEv.exit.i11:   ; preds = %bb.i, %bb.h
  %i.ad = phi ptr [ %i.z, %bb.h ], [ %i.ac, %bb.i ] ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %.not.i.i.i12 = icmp eq i8 %i.ag, -1
  br i1 %.not.i.i.i12, label %bb.j, label %._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge

bb.j:                                             ; preds = %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i11
  %i.ah = getelementptr i8, ptr %i.ad, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge, label %.lr.ph83

bb.k:                                             ; preds = %.lr.ph83
  %i.ak = add nuw i64 %i.am, 1                    ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.ai
  br i1 %i.al, label %._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge, label %.lr.ph83, !llvm.loop !53

.lr.ph83:                                         ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %i.ak, %bb.k ], [ 1, %bb.j ]  ; 4 uses
  %i.an = lshr i64 %i.am, 7
  %i.ao = getelementptr [144 x i8], ptr %i.af, i64 %i.an
  %i.ap = and i64 %i.am, 127
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %.not.i.i.i.i17 = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i.i.i17, label %bb.k, label %_ZN5QHashI7QString5QListIiEE5beginEv.exit18, !llvm.loop !53

._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge: ; preds = %bb.k, %bb.j, %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i11
  %.sroa.0.0.i.i13 = phi ptr [ %i.ad, %_ZN5QHashI7QString5QListIiEE6detachEv.exit.i11 ], [ null, %bb.j ], [ null, %bb.k ] ; 2 uses
  %.not83 = icmp eq ptr %.sroa.0.0.i.i13, null
  br i1 %.not83, label %.loopexit, label %_ZN5QHashI7QString5QListIiEE5beginEv.exit18

_ZN5QHashI7QString5QListIiEE5beginEv.exit18:      ; preds = %.lr.ph83, %._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge
  %.sroa.7.058.ph = phi i64 [ 0, %._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge ], [ %i.am, %.lr.ph83 ]
  %.sroa.039.057.ph = phi ptr [ %.sroa.0.0.i.i13, %._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge ], [ %i.ad, %.lr.ph83 ]
  br label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit25.thread

_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread: ; preds = %_ZN5QHashI7QString5QListIiEE5beginEv.exit, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit
  %.sroa.749.055 = phi i64 [ %.sroa.749.1, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit ], [ %.sroa.749.055.ph, %_ZN5QHashI7QString5QListIiEE5beginEv.exit ] ; 3 uses
  %.sroa.046.054 = phi ptr [ %.sroa.046.1, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit ], [ %.sroa.046.054.ph, %_ZN5QHashI7QString5QListIiEE5beginEv.exit ] ; 3 uses
  %i.as = getelementptr i8, ptr %.sroa.046.054, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = lshr i64 %.sroa.749.055, 7
  %i.av = getelementptr [144 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = and i64 %.sroa.749.055, 127
  %i.ax = getelementptr i8, ptr %i.av, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr [48 x i8], ptr %i.ay, i64 %i.bb ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 40     ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = load i32, ptr %i.b, align 8
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = icmp sgt i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.l, label %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit

bb.l:                                             ; preds = %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread
  %i.bj = sub i64 %i.bf, %i.bh                    ; 2 uses
  %i.bk = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i19, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i: ; preds = %bb.l
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i, label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i, %bb.l
  tail call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.bd, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i = load i64, ptr %i.be, align 8
  br label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i

_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i:   ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i
  %i.bn = phi i64 [ %.pre.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i ], [ %i.bf, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i ] ; 2 uses
  %.idx3.i.i = shl i64 %i.bj, 2                   ; 2 uses
  %.idx4.i.i = shl i64 %i.bn, 2
  %.not.i.i.i20 = icmp eq i64 %.idx3.i.i, %.idx4.i.i
  br i1 %.not.i.i.i20, label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i
  %i.bo = getelementptr i8, ptr %i.bc, i64 32     ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.idx3.i.i
  store ptr %i.bq, ptr %i.bo, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i

_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i: ; preds = %bb.m, %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i
  %i.br = sub i64 %i.bn, %i.bj
  store i64 %i.br, ptr %i.be, align 8
  br label %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit

_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit: ; preds = %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread, %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i
  %i.bs = getelementptr i8, ptr %.sroa.046.054, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = add i64 %.sroa.749.055, 1               ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.bt
  br i1 %i.bv, label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit
  %i.bw = load ptr, ptr %i.as, align 8
  br label %.lr.ph76

bb.n:                                             ; preds = %.lr.ph76
  %i.bx = add i64 %i.bz, 1                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.bt
  br i1 %i.by, label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit, label %.lr.ph76, !llvm.loop !53

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.n
  %i.bz = phi i64 [ %i.bx, %bb.n ], [ %i.bu, %.lr.ph76.preheader ] ; 4 uses
  %i.ca = lshr i64 %i.bz, 7
  %i.cb = getelementptr [144 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = and i64 %i.bz, 127
  %i.cd = getelementptr i8, ptr %i.cb, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %.not.i.i.i21 = icmp eq i8 %i.ce, -1
  br i1 %.not.i.i.i21, label %bb.n, label %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge79, !llvm.loop !53

._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge79: ; preds = %.lr.ph76
  br label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit, !llvm.loop !53

_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit:   ; preds = %bb.n, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge79, %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit
  %.sroa.046.1 = phi ptr [ %.sroa.046.054, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge79 ], [ null, %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit ], [ null, %bb.n ] ; 2 uses
  %.sroa.749.1 = phi i64 [ %i.bz, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit_crit_edge79 ], [ 0, %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit ], [ 0, %bb.n ] ; 2 uses
  %i.cf = icmp ne ptr %.sroa.046.1, null
  %i.cg = icmp ne i64 %.sroa.749.1, 0
  %or.cond = or i1 %i.cf, %i.cg
  br i1 %or.cond, label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit.thread, label %._crit_edge

_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit25.thread: ; preds = %_ZN5QHashI7QString5QListIiEE5beginEv.exit18, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38
  %.sroa.7.058 = phi i64 [ %.sroa.7.1, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38 ], [ %.sroa.7.058.ph, %_ZN5QHashI7QString5QListIiEE5beginEv.exit18 ] ; 3 uses
  %.sroa.039.057 = phi ptr [ %.sroa.039.1, %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38 ], [ %.sroa.039.057.ph, %_ZN5QHashI7QString5QListIiEE5beginEv.exit18 ] ; 3 uses
  %i.ch = getelementptr i8, ptr %.sroa.039.057, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = lshr i64 %.sroa.7.058, 7
  %i.ck = getelementptr [144 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = and i64 %.sroa.7.058, 127
  %i.cm = getelementptr i8, ptr %i.ck, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.ck, i64 %i.cl
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr [48 x i8], ptr %i.cn, i64 %i.cq ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 24     ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 40     ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = load i32, ptr %i.b, align 8
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = icmp sgt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.o, label %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit35

bb.o:                                             ; preds = %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit25.thread
  %i.cy = sub i64 %i.cu, %i.cw                    ; 2 uses
  %i.cz = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i26, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i33, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i27

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i27: ; preds = %bb.o
  %i.da = load atomic i32, ptr %i.cz monotonic, align 4
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i33, label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i28

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i33: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i27, %bb.o
  tail call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.cs, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i34 = load i64, ptr %i.ct, align 8
  br label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i28

_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i28: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i33, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i27
  %i.dc = phi i64 [ %.pre.i34, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i33 ], [ %i.cu, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i27 ] ; 2 uses
  %.idx3.i.i29 = shl i64 %i.cy, 2                 ; 2 uses
  %.idx4.i.i30 = shl i64 %i.dc, 2
  %.not.i.i.i31 = icmp eq i64 %.idx3.i.i29, %.idx4.i.i30
  br i1 %.not.i.i.i31, label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i32, label %bb.p

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i28
  %i.dd = getelementptr i8, ptr %i.cr, i64 32     ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 %.idx3.i.i29
  store ptr %i.df, ptr %i.dd, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i32

_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i32: ; preds = %bb.p, %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i.i28
  %i.dg = sub i64 %i.dc, %i.cy
  store i64 %i.dg, ptr %i.ct, align 8
  br label %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit35

_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit35: ; preds = %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit25.thread, %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i.i32
  %i.dh = getelementptr i8, ptr %.sroa.039.057, i64 16
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.dj = add i64 %.sroa.7.058, 1                 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.di
  br i1 %i.dk, label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit35
  %i.dl = load ptr, ptr %i.ch, align 8
  br label %.lr.ph89

bb.q:                                             ; preds = %.lr.ph89
  %i.dm = add i64 %i.do, 1                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.di
  br i1 %i.dn, label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38, label %.lr.ph89, !llvm.loop !53

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.q
  %i.do = phi i64 [ %i.dm, %bb.q ], [ %i.dj, %.lr.ph89.preheader ] ; 4 uses
  %i.dp = lshr i64 %i.do, 7
  %i.dq = getelementptr [144 x i8], ptr %i.dl, i64 %i.dp
  %i.dr = and i64 %i.do, 127
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  %.not.i.i.i37 = icmp eq i8 %i.dt, -1
  br i1 %.not.i.i.i37, label %bb.q, label %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38_crit_edge92, !llvm.loop !53

._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38_crit_edge92: ; preds = %.lr.ph89
  br label %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38, !llvm.loop !53

_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38: ; preds = %bb.q, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38_crit_edge92, %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit35
  %.sroa.039.1 = phi ptr [ %.sroa.039.057, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38_crit_edge92 ], [ null, %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit35 ], [ null, %bb.q ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %i.do, %._ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38_crit_edge92 ], [ 0, %_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE.exit35 ], [ 0, %bb.q ] ; 2 uses
  %i.du = icmp ne ptr %.sroa.039.1, null
  %i.dv = icmp ne i64 %.sroa.7.1, 0
  %or.cond52 = or i1 %i.du, %i.dv
  br i1 %or.cond52, label %_ZNK5QHashI7QString5QListIiEE8iteratorneERKS4_.exit25.thread, label %.loopexit

.loopexit:                                        ; preds = %_ZN5QHashI7QString5QListIiEE8iteratorppEv.exit38, %._ZN5QHashI7QString5QListIiEE5beginEv.exit18.loopexit_crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK19InterfaceStatistics14trimToCapacityER5QListIiE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(115) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp sgt i64 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5QListIiE6removeExx.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 %i.b, %i.e                       ; 2 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i: ; preds = %bb.b
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i, label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i, %bb.b
  tail call void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load i64, ptr %i.a, align 8
  br label %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i

_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i:     ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i
  %i.k = phi i64 [ %.pre, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i ], [ %i.b, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i ] ; 2 uses
  %.idx3.i = shl i64 %i.g, 2                      ; 2 uses
  %.idx4.i = shl i64 %i.k, 2
  %.not.i.i = icmp eq i64 %.idx3.i, %.idx4.i
  br i1 %.not.i.i, label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx3.i
  store ptr %i.n, ptr %i.l, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i

_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i:  ; preds = %_ZN17QArrayDataPointerIiE6detachEPS0_.exit.i, %bb.c
  %i.o = sub i64 %i.k, %i.g
  store i64 %i.o, ptr %i.a, align 8
  br label %_ZN5QListIiE6removeExx.exit

_ZN5QListIiE6removeExx.exit:                      ; preds = %_ZN9QtPrivate12QPodArrayOpsIiE5eraseEPix.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef align 8 dereferenceable(8) ptr @_ZN5QHashI7QStringyEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QHash, align 8               ; 8 uses
  %3 = alloca %"struct.QHashPrivate::Data<QHashPrivate::Node<QString, unsigned long long>>::InsertionResult", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread, label %_ZNK5QHashI7QStringyE10isDetachedEv.exit

_ZN5QHashI7QStringyEC2ERKS1_.exit.thread:         ; preds = %bb.a
  store ptr null, ptr %2, align 8
  br label %bb.d

_ZNK5QHashI7QStringyE10isDetachedEv.exit:         ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5QHashI7QStringyE10isDetachedEv.exit
  store ptr null, ptr %2, align 8
  br label %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9

bb.c:                                             ; preds = %_ZNK5QHashI7QStringyE10isDetachedEv.exit
  store ptr %i.a, ptr %2, align 8
  %i.d = load atomic i32, ptr %i.a monotonic, align 4
  %.not.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i, label %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9, label %_ZN5QHashI7QStringyEC2ERKS1_.exit

_ZN5QHashI7QStringyEC2ERKS1_.exit:                ; preds = %bb.c
  %i.e = atomicrmw add ptr %i.a, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %0, align 8            ; 2 uses
  %.not.i5 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i5, label %bb.d, label %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9

_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9:        ; preds = %bb.b, %bb.c, %_ZN5QHashI7QStringyEC2ERKS1_.exit
  %.pr12 = phi ptr [ %.pr.pre, %_ZN5QHashI7QStringyEC2ERKS1_.exit ], [ %i.a, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.f = load atomic i32, ptr %.pr12 monotonic, align 4
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN5QHashI7QStringyE6detachEv.exit

bb.d:                                             ; preds = %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread, %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9, %_ZN5QHashI7QStringyEC2ERKS1_.exit
  %i.h = phi ptr [ null, %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread ], [ %.pr12, %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9 ], [ null, %_ZN5QHashI7QStringyEC2ERKS1_.exit ]
  %i.i = invoke noundef ptr @_ZN12QHashPrivate4DataINS_4NodeI7QStringyEEE8detachedEPS4_(ptr noundef %i.h)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.d
  store ptr %i.i, ptr %0, align 8
  br label %_ZN5QHashI7QStringyE6detachEv.exit

_ZN5QHashI7QStringyE6detachEv.exit:               ; preds = %.noexc, %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9
  %i.j = phi ptr [ %i.i, %.noexc ], [ %.pr12, %_ZN5QHashI7QStringyEC2ERKS1_.exit.thread9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN12QHashPrivate4DataINS_4NodeI7QStringyEEE12findOrInsertERKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.QHashPrivate::Data<QHashPrivate::Node<QString, unsigned long long>>::InsertionResult") align 8 %3, ptr noundef align 8 dereferenceable_or_null(40) %i.j, ptr noundef align 8 dereferenceable(24) %1) #22
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !39, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN5QHashI7QStringyE6detachEv.exit
  %i.n = load ptr, ptr %3, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = lshr i64 %i.r, 7
  %i.t = getelementptr [144 x i8], ptr %i.p, i64 %i.s ; 2 uses
  %i.u = and i64 %i.r, 127
  %i.v = getelementptr i8, ptr %i.t, i64 128
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.t, i64 %i.u
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr [32 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = load ptr, ptr %1, align 8               ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  store ptr %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.af, align 8
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZN12QHashPrivate4NodeI7QStringyE13createInPlaceIJyEEEvPS2_RKS1_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = atomicrmw add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12QHashPrivate4NodeI7QStringyE13createInPlaceIJyEEEvPS2_RKS1_DpOT_.exit

_ZN12QHashPrivate4NodeI7QStringyE13createInPlaceIJyEEEvPS2_RKS1_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.aj, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QHashI7QStringyED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %_ZN12QHashPrivate4NodeI7QStringyE13createInPlaceIJyEEEvPS2_RKS1_DpOT_.exit, %_ZN5QHashI7QStringyE6detachEv.exit
  %i.al = load ptr, ptr %3, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = lshr i64 %i.ap, 7
  %i.ar = getelementptr [144 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.as = and i64 %i.ap, 127
  %i.at = getelementptr i8, ptr %i.ar, i64 128
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.as
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr [32 x i8], ptr %i.au, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN5QHashI7QStringyED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %i.az
}

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QHashI7QStringyE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %_ZN9QtPrivate8RefCount5derefEv.exit

_ZN9QtPrivate8RefCount5derefEv.exit:              ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3 = icmp eq i32 %i.d, 1
  br i1 %.not3, label %bb.c, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
end_hunk_2
