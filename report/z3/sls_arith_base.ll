inline.NumInlined: 7668
inline.NumDeleted: 1628
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK3sls10arith_baseI13checked_int64ILb1EEE3dttEbRKS2_RKNS3_4ineqE:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.ay = icmp slt i64 %i.ar, 0
  %i.az = icmp sgt i64 %i.as, -1
  %or.cond3.i.i33 = and i1 %i.ay, %i.az
  br i1 %or.cond3.i.i33, label %bb.ad, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit35

bb.ad:                                            ; preds = %bb.ac
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ba, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit35:   ; preds = %bb.z, %bb.ab, %bb.ac
  %i.bb = icmp eq i64 %i.as, 0
  %spec.select = zext i1 %i.bb to i64
  br label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.ae:                                            ; preds = %bb.x
  br i1 %i.at, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bc = icmp sgt i64 %i.ar, 0
  %i.bd = icmp slt i64 %i.as, 1
  %or.cond.i.i37 = and i1 %i.bc, %i.bd
  br i1 %or.cond.i.i37, label %bb.ag, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit38

bb.ag:                                            ; preds = %bb.af
  %i.be = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.be, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bf = icmp slt i64 %i.aq, 0
  br i1 %i.bf, label %bb.ai, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit38

bb.ai:                                            ; preds = %bb.ah
  %i.bg = icmp slt i64 %i.ar, 0
  %i.bh = icmp sgt i64 %i.as, -1
  %or.cond3.i.i36 = and i1 %i.bg, %i.bh
  br i1 %or.cond3.i.i36, label %bb.aj, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit38

bb.aj:                                            ; preds = %bb.ai
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.bi, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit38:   ; preds = %bb.af, %bb.ah, %bb.ai
  %i.bj = icmp ne i64 %i.as, 0
  %spec.select74 = zext i1 %i.bj to i64
  br label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.ak:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i64, ptr %2, align 8, !tbaa !17    ; 6 uses
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !45 ; 9 uses
  %i.bn = add i64 %i.bm, %i.bl                    ; 11 uses
  %i.bo = icmp sgt i64 %i.bl, 0                   ; 3 uses
  br i1 %1, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %bb.ak
  br i1 %i.bo, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.bp = icmp sgt i64 %i.bm, 0
  %i.bq = icmp slt i64 %i.bn, 1
  %or.cond.i.i40 = and i1 %i.bp, %i.bq
  br i1 %or.cond.i.i40, label %bb.an, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit41

bb.an:                                            ; preds = %bb.am
  %i.br = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.br, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.bs = icmp slt i64 %i.bl, 0
  br i1 %i.bs, label %bb.ap, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit41

bb.ap:                                            ; preds = %bb.ao
  %i.bt = icmp slt i64 %i.bm, 0
  %i.bu = icmp sgt i64 %i.bn, -1
  %or.cond3.i.i39 = and i1 %i.bt, %i.bu
  br i1 %or.cond3.i.i39, label %bb.aq, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit41

bb.aq:                                            ; preds = %bb.ap
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.bv, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit41:   ; preds = %bb.am, %bb.ao, %bb.ap
  %i.bw = icmp slt i64 %i.bn, 0
  br i1 %i.bw, label %bb.ar, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.ar:                                            ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit41
  %i.bx = icmp eq i64 %i.bm, -9223372036854775808
  br i1 %i.bx, label %bb.as, label %_ZngILb1EE13checked_int64IXT_EERKS1_.exit42

bb.as:                                            ; preds = %bb.ar
  %i.by = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.by, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZngILb1EE13checked_int64IXT_EERKS1_.exit42:      ; preds = %bb.ar
  %i.bz = sub i64 0, %i.bn                        ; 4 uses
  %i.ca = icmp slt i64 %i.bm, 0
  br i1 %i.ca, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit42
  %i.cb = icmp slt i64 %i.bl, 0
  %i.cc = icmp slt i64 %i.bz, 1
  %or.cond.i.i44 = and i1 %i.cb, %i.cc
  br i1 %or.cond.i.i44, label %bb.au, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.au:                                            ; preds = %bb.at
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cd, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.av:                                            ; preds = %_ZngILb1EE13checked_int64IXT_EERKS1_.exit42
  %i.ce = icmp ne i64 %i.bm, 0
  %i.cf = icmp sgt i64 %i.bz, -1
  %i.cg = and i1 %i.ce, %i.cf
  %or.cond75 = and i1 %i.bo, %i.cg
  br i1 %or.cond75, label %bb.aw, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.aw:                                            ; preds = %bb.av
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ch, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.ax:                                            ; preds = %bb.ak
  br i1 %i.bo, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ci = icmp sgt i64 %i.bm, 0                   ; 2 uses
  %i.cj = icmp slt i64 %i.bn, 1
  %or.cond.i.i47 = and i1 %i.ci, %i.cj
  br i1 %or.cond.i.i47, label %bb.az, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48.thread

bb.az:                                            ; preds = %bb.ay
  %i.ck = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ck, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.cl = icmp slt i64 %i.bl, 0
  br i1 %i.cl, label %bb.bb, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48

bb.bb:                                            ; preds = %bb.ba
  %i.cm = icmp slt i64 %i.bm, 0
  %i.cn = icmp sgt i64 %i.bn, -1
  %or.cond3.i.i46 = and i1 %i.cm, %i.cn
  br i1 %or.cond3.i.i46, label %bb.bc, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48

bb.bc:                                            ; preds = %bb.bb
  %i.co = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.co, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48:   ; preds = %bb.ba, %bb.bb
  %i.cp = icmp slt i64 %i.bn, 0
  br i1 %i.cp, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit, label %bb.be

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48.thread: ; preds = %bb.ay
  %i.cq = icmp slt i64 %i.bn, 0
  br i1 %i.cq, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit, label %.thread72

.thread72:                                        ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48.thread
  %i.cr = icmp eq i64 %i.bn, 0
  %or.cond.i.i50 = and i1 %i.ci, %i.cr
  br i1 %or.cond.i.i50, label %bb.bd, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit51

bb.bd:                                            ; preds = %.thread72
  %i.cs = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cs, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.be:                                            ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48
  %i.ct = icmp ne i64 %i.bl, 0
  %i.cu = icmp slt i64 %i.bm, 0
  %or.cond76 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond76, label %bb.bf, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit51

bb.bf:                                            ; preds = %bb.be
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cv, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit51:   ; preds = %.thread72, %bb.be
  %i.cw = add nuw nsw i64 %i.bn, 1
  %4 = icmp samesign ugt i64 %i.bn, 9223372036854775806
  br i1 %4, label %bb.bg, label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

bb.bg:                                            ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit51
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cx, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.bh:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.17, i32 noundef 141, ptr noundef nonnull @.str.18)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit

_ZplILb1EE13checked_int64IXT_EERKS1_RKl.exit:     ; preds = %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit29.thread, %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit38, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit35, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit51, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48.thread, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit41, %bb.av, %bb.at, %bb.v, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit29, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit, %bb.bh
  %.sroa.071.0 = phi i64 [ 0, %bb.bh ], [ 0, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48.thread ], [ %i.aa, %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit ], [ 0, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit ], [ %spec.select78, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit29.thread ], [ 0, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit48 ], [ %i.cw, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit51 ], [ %i.bz, %bb.av ], [ %spec.select, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit35 ], [ %i.bz, %bb.at ], [ %spec.select74, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit38 ], [ 0, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit41 ], [ %i.f, %bb.v ], [ 0, %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit29 ]
  ret i64 %.sroa.071.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden i64 @_ZNK3sls10arith_baseI13checked_int64ILb1EEE3dttEbRKNS3_4ineqEjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.checked_int64, align 8       ; 5 uses
  %6 = alloca %class.checked_int64, align 8       ; 4 uses
  %7 = alloca %class.checked_int64, align 8       ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !57     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit

_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit, %.critedge
  %.029 = phi ptr [ %i.an, %.critedge ], [ %i.a, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %.not21 = icmp eq i32 %i.i, %3
  br i1 %.not21, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw [184 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %4, align 8, !tbaa !17     ; 3 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !45   ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp sgt i64 %i.p, 0
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = icmp slt i64 %i.q, 0
  %i.u = icmp slt i64 %i.r, 1
  %or.cond.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %bb.d, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.v, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.w = icmp slt i64 %i.p, 0
  br i1 %i.w, label %bb.f, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = icmp sgt i64 %i.q, 0
  %i.y = icmp sgt i64 %i.r, -1
  %or.cond3.i.i = and i1 %i.x, %i.y
  br i1 %or.cond3.i.i, label %bb.g, label %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.z, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.c, %bb.e, %bb.f
  store i64 %i.r, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.aa = load i64, ptr %.029, align 8, !tbaa !17
  store i64 %i.aa, ptr %5, align 8, !tbaa !17
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  %i.ac = load i64, ptr %5, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp sgt i64 %i.ad, 0
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.ag = icmp sgt i64 %i.ac, 0
  %i.ah = icmp slt i64 %i.ae, 1
  %or.cond.i.i23 = and i1 %i.ag, %i.ah
  br i1 %or.cond.i.i23, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ai, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.j:                                             ; preds = %_ZmiILb1EE13checked_int64IXT_EERKS1_S3_.exit
  %i.aj = icmp slt i64 %i.ad, 0
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp slt i64 %i.ac, 0
  %i.al = icmp sgt i64 %i.ae, -1
  %or.cond3.i.i22 = and i1 %i.ak, %i.al
  br i1 %or.cond3.i.i22, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.am, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

.critedge:                                        ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.029, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h
  store i64 %i.ae, ptr %6, align 8
  %i.ao = call i64 @_ZNK3sls10arith_baseI13checked_int64ILb1EEE3dttEbRKS2_RKNS3_4ineqE(ptr noundef nonnull align 8 dereferenceable(672) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(49) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.a, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit, %bb.m
  %.sroa.024.1 = phi i64 [ %i.ao, %bb.m ], [ 1, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit ], [ 1, %bb.a ], [ 1, %.critedge ]
  ret i64 %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden i64 @_ZNK3sls10arith_baseI13checked_int64ILb1EEE3dttEbRKNS3_4ineqERKS2_S8_(ptr noundef nonnull align 8 dereferenceable(672) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.checked_int64, align 8       ; 5 uses
  %6 = alloca %class.checked_int64, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.b = load i64, ptr %3, align 8, !tbaa !17
  store i64 %i.b, ptr %5, align 8, !tbaa !17
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.d = load i64, ptr %5, align 8                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i64 %i.d, 0
  %i.i = icmp slt i64 %i.f, 1
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %bb.c, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.j, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.e, 0
  br i1 %i.k, label %bb.e, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i64 %i.d, 0
  %i.m = icmp sgt i64 %i.f, -1
  %or.cond3.i.i = and i1 %i.l, %i.m
  br i1 %or.cond3.i.i, label %bb.f, label %_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.n, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZplILb1EE13checked_int64IXT_EERKS1_S3_.exit:     ; preds = %bb.b, %bb.d, %bb.e
  store i64 %i.f, ptr %6, align 8
  %i.o = call i64 @_ZNK3sls10arith_baseI13checked_int64ILb1EEE3dttEbRKS2_RKNS3_4ineqE(ptr noundef nonnull align 8 dereferenceable(672) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(49) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i64 %i.o
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden i64 @_ZNK3sls10arith_baseI13checked_int64ILb1EEE3dtsEjjRKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
end_hunk_0
