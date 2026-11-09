Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Update?download=true
inline.NumInlined: 456
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 48
begin_hunk_0_@llvm.lifetime.start.p0

declare noundef i32 @_ZN14COutFileStream5CloseEv(ptr noundef nonnull align 8 dereferenceable(1112)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18COutMultiVolStream5WriteEPKvjPj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !177 {
bb.a:
  %4 = alloca %"struct.COutMultiVolStream::CSubStreamInfo", align 8 ; 12 uses
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  %5 = alloca %class.CStringBase, align 8         ; 15 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %.outer.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !8
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not76 = icmp eq i32 %2, 0
  br i1 %.not76, label %.thread, label %.outer.split.outer

.outer.split.outer:                               ; preds = %.outer.preheader, %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit
  %.052.ph = phi i32 [ %.153, %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit ], [ undef, %.outer.preheader ]
  %i.v = load i32, ptr %i.e, align 4, !tbaa !77
  %.promoted = load i32, ptr %i.c, align 4, !tbaa !98
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.outer, %.outer
  %i.w = phi i32 [ %.promoted, %.outer.split.outer ], [ %i.mx, %.outer ] ; 4 uses
  %.not77 = icmp slt i32 %i.w, %i.v
  br i1 %.not77, label %bb.bc, label %bb.c

bb.c:                                             ; preds = %.outer.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.x = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #20
          to label %.noexc.i unwind label %bb.d   ; 9 uses

.noexc.i:                                         ; preds = %bb.c
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = load i32, ptr %i.i, align 4, !tbaa !99
  %i.aa = icmp sgt i32 %i.z, 0
  %.pre1.i.i = load i32, ptr %i.h, align 8, !tbaa !100 ; 5 uses
  br i1 %i.aa, label %.preheader.i.i.i, label %_ZN18COutMultiVolStream14CSubStreamInfoC2Ev.exit

.preheader.i.i.i:                                 ; preds = %.noexc.i
  %i.ab = icmp sgt i32 %.pre1.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !101 ; 9 uses
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.pre.i.i.i580 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre1.i.i to i64 ; 5 uses
  %min.iters.check582 = icmp ult i32 %.pre1.i.i, 8
  %i.ac = sub i64 %.pre.i.i.i580, %i.y
  %diff.check584 = icmp ugt i64 %i.ac, -32
  %or.cond595 = select i1 %min.iters.check582, i1 true, i1 %diff.check584
  br i1 %or.cond595, label %scalar.ph581.preheader, label %vector.ph585

vector.ph585:                                     ; preds = %.lr.ph.i.i.i
  %n.vec586 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body587

vector.body587:                                   ; preds = %vector.body587, %vector.ph585
  %index588 = phi i64 [ 0, %vector.ph585 ], [ %index.next591, %vector.body587 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index588 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load589 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !103
  %wide.load590 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !103
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index588 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %wide.load589, ptr %i.af, align 4, !tbaa !103
  store <4 x i32> %wide.load590, ptr %i.ag, align 4, !tbaa !103
  %index.next591 = add nuw i64 %index588, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next591, %n.vec586
  br i1 %i.ah, label %middle.block592, label %vector.body587, !llvm.loop !158

middle.block592:                                  ; preds = %vector.body587
  %cmp.n593 = icmp eq i64 %n.vec586, %wide.trip.count.i.i.i
  br i1 %cmp.n593, label %._crit_edge.thread.i.i.i, label %scalar.ph581.preheader

scalar.ph581.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block592
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec586, %middle.block592 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph581.prol.loopexit, label %scalar.ph581.prol

scalar.ph581.prol:                                ; preds = %scalar.ph581.preheader, %scalar.ph581.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph581.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph581.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph581.prol ], [ 0, %scalar.ph581.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !103
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.prol
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph581.prol.loopexit, label %scalar.ph581.prol, !llvm.loop !159

scalar.ph581.prol.loopexit:                       ; preds = %scalar.ph581.prol, %scalar.ph581.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph581.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph581.prol ]
  %i.al = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge.thread.i.i.i, label %scalar.ph581

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.an = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.an, label %_ZN18COutMultiVolStream14CSubStreamInfoC2Ev.exit, label %._crit_edge.thread.i.i.i

scalar.ph581:                                     ; preds = %scalar.ph581.prol.loopexit, %scalar.ph581
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph581 ], [ %indvars.iv.i.i.i.unr, %scalar.ph581.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !103
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !103
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !103
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !103
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !103
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %scalar.ph581, !llvm.loop !160

._crit_edge.thread.i.i.i:                         ; preds = %scalar.ph581.prol.loopexit, %scalar.ph581, %middle.block592, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #21
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !100
  br label %_ZN18COutMultiVolStream14CSubStreamInfoC2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !107 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #22
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN11CStringBaseIwED2Ev.exit166
  %common.resume.op = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn, %_ZN11CStringBaseIwED2Ev.exit166 ], [ %i.ba, %bb.e ], [ %i.ba, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN18COutMultiVolStream14CSubStreamInfoC2Ev.exit: ; preds = %.noexc.i, %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.bi = phi i32 [ %.pre1.i.i, %.noexc.i ], [ %.pre1.i.i, %._crit_edge.i.i.i ], [ %.pre.i.i, %._crit_edge.thread.i.i.i ]
  store ptr %i.x, ptr %i.g, align 8, !tbaa !101
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bj
  store i32 0, ptr %i.bk, align 4, !tbaa !103
  store i32 4, ptr %i.i, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !98
  %i.bm = add nsw i32 %i.bl, 1
  invoke void @_Z21ConvertUInt32ToStringjPw(i32 noundef %i.bm, ptr noundef nonnull %i.a)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %_ZN18COutMultiVolStream14CSubStreamInfoC2Ev.exit
  %wcslen.i.i = call i64 @wcslen(ptr nonnull %i.a)
  %i.bn = trunc i64 %wcslen.i.i to i32            ; 5 uses
  %i.bo = add nsw i32 %i.bn, 1                    ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = icmp slt i32 %i.bn, -1
  %i.bs = shl nuw nsw i64 %i.bq, 2
  %i.bt = select i1 %i.br, i64 -1, i64 %i.bs
  %i.bu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #20
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %bb.h
  store i32 0, ptr %i.bu, align 4, !tbaa !103
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %bb.g
  %.sroa.0220.1 = phi ptr [ null, %bb.g ], [ %i.bu, %.noexc ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0220.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.bx, %bb.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.bv, %bb.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bw = load i32, ptr %.0.i.i, align 4, !tbaa !103 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.bw, ptr %.04.i.i, align 4, !tbaa !103
  %.not.i.i91 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i91, label %_ZN11CStringBaseIwEC2EPKw.exit.preheader, label %bb.i, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit.preheader:         ; preds = %bb.i
  %i.by = icmp slt i32 %i.bn, 3
  br i1 %i.by, label %.lr.ph, label %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN11CStringBaseIwEC2EPKw.exit.preheader, %_ZN11CStringBaseIwED2Ev.exit121
  %.sroa.25.0330 = phi i32 [ %.sroa.25.2, %_ZN11CStringBaseIwED2Ev.exit121 ], [ %i.bo, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 3 uses
  %.sroa.13.0329 = phi i32 [ %i.cl, %_ZN11CStringBaseIwED2Ev.exit121 ], [ %i.bn, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 4 uses
  %.sroa.0220.0328 = phi ptr [ %.sroa.0220.2, %_ZN11CStringBaseIwED2Ev.exit121 ], [ %.sroa.0220.1, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 6 uses
  %i.bz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.j unwind label %bb.s       ; 5 uses

bb.j:                                             ; preds = %.lr.ph
  store i32 48, ptr %i.bz, align 4, !tbaa !103
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 0, ptr %i.ca, align 4, !tbaa !103
  %i.cb = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i unwind label %bb.t ; 6 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.j
  store i32 0, ptr %i.cb, align 4, !tbaa !103, !noalias !178
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.cb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ce, %bb.k ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.cc, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.cd = load i32, ptr %.0.i.i.i, align 4, !tbaa !103, !noalias !178 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.cd, ptr %.04.i.i.i, align 4, !tbaa !103, !noalias !178
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.k, !llvm.loop !0

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.k
  %.not.i.i167 = icmp sgt i32 %.sroa.13.0329, 0
  br i1 %.not.i.i167, label %bb.l, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.l:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.cf = invoke noalias noundef nonnull dereferenceable(28) ptr @_Znam(i64 noundef 28) #20
          to label %.lr.ph.i.i.i175 unwind label %_ZN11CStringBaseIwED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i175:                                  ; preds = %bb.l
  %i.cg = load i32, ptr %i.cb, align 4, !tbaa !103
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !103
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !103
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %.lr.ph.i.i.i175, %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.sroa.0208.1 = phi ptr [ %i.cb, %_ZN11CStringBaseIwEC2ERKS0_.exit.i ], [ %i.cf, %.lr.ph.i.i.i175 ] ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.sroa.0208.1.pn = phi ptr [ %.sroa.0208.1, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %.04.i.i168, %bb.m ]
  %.0.i4.i = phi ptr [ %.sroa.0220.0328, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.ci, %bb.m ] ; 2 uses
  %.04.i.i168 = getelementptr inbounds nuw i8, ptr %.sroa.0208.1.pn, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  %i.cj = load i32, ptr %.0.i4.i, align 4, !tbaa !103 ; 2 uses
  store i32 %i.cj, ptr %.04.i.i168, align 4, !tbaa !103
  %.not.i5.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i5.i, label %bb.n, label %bb.m, !llvm.loop !0

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #21
  br label %_ZN11CStringBaseIwED2Ev.exit123

bb.n:                                             ; preds = %bb.m
  %i.cl = add nsw i32 %.sroa.13.0329, 1           ; 2 uses
  store i32 0, ptr %.sroa.0220.0328, align 4, !tbaa !103
  %i.cm = add nsw i32 %.sroa.13.0329, 2           ; 3 uses
  %i.cn = icmp eq i32 %i.cm, %.sroa.25.0330
  br i1 %i.cn, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i106, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = icmp slt i32 %.sroa.13.0329, -2
  %i.cq = shl nuw nsw i64 %i.co, 2
  %i.cr = select i1 %i.cp, i64 -1, i64 %i.cq
  %i.cs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cr) #20
          to label %.noexc120 unwind label %_ZN11CStringBaseIwED2Ev.exit122 ; 2 uses

.noexc120:                                        ; preds = %bb.o
  %i.ct = icmp sgt i32 %.sroa.25.0330, 0
  br i1 %i.ct, label %._crit_edge.thread.i.i113, label %bb.p

._crit_edge.thread.i.i113:                        ; preds = %.noexc120
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0220.0328) #21
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread.i.i113, %.noexc120
  store i32 0, ptr %i.cs, align 4, !tbaa !103
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i106

_ZN11CStringBaseIwE11SetCapacityEi.exit.i106:     ; preds = %bb.p, %bb.n
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.0328, %bb.n ], [ %i.cs, %bb.p ] ; 3 uses
  %.sroa.25.2 = phi i32 [ %.sroa.25.0330, %bb.n ], [ %i.cm, %bb.p ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i106
  %.04.i.i107 = phi ptr [ %.sroa.0220.2, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i106 ], [ %i.cw, %bb.q ] ; 2 uses
  %.0.i.i108 = phi ptr [ %.sroa.0208.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i106 ], [ %i.cu, %bb.q ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 4
  %i.cv = load i32, ptr %.0.i.i108, align 4, !tbaa !103 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.04.i.i107, i64 4
  store i32 %i.cv, ptr %.04.i.i107, align 4, !tbaa !103
  %.not.i.i109 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i109, label %_ZN11CStringBaseIwED2Ev.exit121, label %bb.q, !llvm.loop !0

_ZN11CStringBaseIwED2Ev.exit121:                  ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0208.1) #21
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #21
  %exitcond.not = icmp eq i32 %i.cl, 3
  br i1 %exitcond.not, label %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge, label %.lr.ph, !llvm.loop !163

bb.r:                                             ; preds = %_ZN18COutMultiVolStream14CSubStreamInfoC2Ev.exit, %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit166

bb.s:                                             ; preds = %.lr.ph
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.t:                                             ; preds = %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit123

_ZN11CStringBaseIwED2Ev.exit122:                  ; preds = %bb.o
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0208.1) #21
  br label %_ZN11CStringBaseIwED2Ev.exit123

_ZN11CStringBaseIwED2Ev.exit123:                  ; preds = %bb.t, %_ZN11CStringBaseIwED2Ev.exit.i, %_ZN11CStringBaseIwED2Ev.exit122
  %.pn85 = phi { ptr, i32 } [ %i.da, %_ZN11CStringBaseIwED2Ev.exit122 ], [ %i.cz, %bb.t ], [ %i.ck, %_ZN11CStringBaseIwED2Ev.exit.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #21
  br label %bb.ba

_ZN11CStringBaseIwEC2EPKw.exit._crit_edge:        ; preds = %_ZN11CStringBaseIwED2Ev.exit121, %_ZN11CStringBaseIwEC2EPKw.exit.preheader
  %.sroa.0220.0.lcssa = phi ptr [ %.sroa.0220.1, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ], [ %.sroa.0220.2, %_ZN11CStringBaseIwED2Ev.exit121 ] ; 4 uses
  %.sroa.13.0.lcssa = phi i32 [ %i.bn, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ], [ 3, %_ZN11CStringBaseIwED2Ev.exit121 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !179
  %i.db = load i32, ptr %i.l, align 8, !tbaa !100, !noalias !179 ; 6 uses
  %i.dc = add nsw i32 %i.db, 1                    ; 5 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124, label %bb.u

bb.u:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = icmp slt i32 %i.db, -1
  %i.dg = shl nuw nsw i64 %i.de, 2
  %i.dh = select i1 %i.df, i64 -1, i64 %i.dg
  %i.di = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dh) #20
          to label %.noexc130 unwind label %bb.ai ; 3 uses

.noexc130:                                        ; preds = %bb.u
  store ptr %i.di, ptr %5, align 8, !tbaa !101, !alias.scope !179
  store i32 0, ptr %i.di, align 4, !tbaa !103, !noalias !179
  store i32 %i.dc, ptr %i.m, align 4, !tbaa !99, !alias.scope !179
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124:   ; preds = %.noexc130, %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge
  %i.dj = phi ptr [ null, %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge ], [ %i.di, %.noexc130 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE:bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fd, i64 88 ; 4 uses
  store i32 0, ptr %i.gv, align 8, !tbaa !100
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !101 ; 2 uses
  store i32 0, ptr %i.gw, align 4, !tbaa !103
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fd, i64 92 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !99
  %i.gz = icmp eq i32 %i.be, %i.gy
  br i1 %i.gz, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119.preheader, label %bb.ag

bb.ag:                                            ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.ha = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ey) #20
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit ; 10 uses

.noexc134:                                        ; preds = %bb.ag
  %i.hb = ptrtoaddr ptr %i.ha to i64
  %i.hc = load i32, ptr %i.gx, align 4, !tbaa !99
  %i.hd = icmp sgt i32 %i.hc, 0
  %.pre7.i118 = load i32, ptr %i.gv, align 8, !tbaa !100 ; 5 uses
  br i1 %i.hd, label %.preheader.i.i124, label %bb.ah

.preheader.i.i124:                                ; preds = %.noexc134
  %i.he = icmp sgt i32 %.pre7.i118, 0
  %.pre.i.i125 = load ptr, ptr %i.gu, align 8, !tbaa !101 ; 9 uses
  br i1 %i.he, label %.lr.ph.i.i129, label %._crit_edge.i.i126

.lr.ph.i.i129:                                    ; preds = %.preheader.i.i124
  %.pre.i.i125194 = ptrtoaddr ptr %.pre.i.i125 to i64
  %wide.trip.count.i.i130 = zext nneg i32 %.pre7.i118 to i64 ; 5 uses
  %min.iters.check196 = icmp ult i32 %.pre7.i118, 8
  %i.hf = sub i64 %.pre.i.i125194, %i.hb
  %diff.check198 = icmp ugt i64 %i.hf, -32
  %or.cond228 = select i1 %min.iters.check196, i1 true, i1 %diff.check198
  br i1 %or.cond228, label %scalar.ph195.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i.i129
  %n.vec200 = and i64 %wide.trip.count.i.i130, 2147483640 ; 3 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next205, %vector.body201 ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i125, i64 %index202 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %wide.load203 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !103
  %wide.load204 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !103
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index202 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <4 x i32> %wide.load203, ptr %i.hi, align 4, !tbaa !103
  store <4 x i32> %wide.load204, ptr %i.hj, align 4, !tbaa !103
  %index.next205 = add nuw i64 %index202, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next205, %n.vec200
  br i1 %i.hk, label %middle.block206, label %vector.body201, !llvm.loop !206

middle.block206:                                  ; preds = %vector.body201
  %cmp.n207 = icmp eq i64 %n.vec200, %wide.trip.count.i.i130
  br i1 %cmp.n207, label %._crit_edge.thread.i.i127, label %scalar.ph195.preheader

scalar.ph195.preheader:                           ; preds = %.lr.ph.i.i129, %middle.block206
  %indvars.iv.i.i131.ph = phi i64 [ 0, %.lr.ph.i.i129 ], [ %n.vec200, %middle.block206 ] ; 3 uses
  %xtraiter232 = and i64 %wide.trip.count.i.i130, 3 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol

scalar.ph195.prol:                                ; preds = %scalar.ph195.preheader, %scalar.ph195.prol
  %indvars.iv.i.i131.prol = phi i64 [ %indvars.iv.next.i.i132.prol, %scalar.ph195.prol ], [ %indvars.iv.i.i131.ph, %scalar.ph195.preheader ] ; 3 uses
  %prol.iter234 = phi i64 [ %prol.iter234.next, %scalar.ph195.prol ], [ 0, %scalar.ph195.preheader ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i125, i64 %indvars.iv.i.i131.prol
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !103
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i131.prol
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !103
  %indvars.iv.next.i.i132.prol = add nuw nsw i64 %indvars.iv.i.i131.prol, 1 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol, !llvm.loop !207

scalar.ph195.prol.loopexit:                       ; preds = %scalar.ph195.prol, %scalar.ph195.preheader
  %indvars.iv.i.i131.unr = phi i64 [ %indvars.iv.i.i131.ph, %scalar.ph195.preheader ], [ %indvars.iv.next.i.i132.prol, %scalar.ph195.prol ]
  %i.ho = sub nsw i64 %indvars.iv.i.i131.ph, %wide.trip.count.i.i130
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge.thread.i.i127, label %scalar.ph195

._crit_edge.i.i126:                               ; preds = %.preheader.i.i124
  %i.hq = icmp eq ptr %.pre.i.i125, null
  br i1 %i.hq, label %bb.ah, label %._crit_edge.thread.i.i127

scalar.ph195:                                     ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195
  %indvars.iv.i.i131 = phi i64 [ %indvars.iv.next.i.i132.3, %scalar.ph195 ], [ %indvars.iv.i.i131.unr, %scalar.ph195.prol.loopexit ] ; 6 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i125, i64 %indvars.iv.i.i131
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !103
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i131
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !103
  %indvars.iv.next.i.i132 = add nuw nsw i64 %indvars.iv.i.i131, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i132
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !103
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i132
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !103
  %indvars.iv.next.i.i132.1 = add nuw nsw i64 %indvars.iv.i.i131, 2 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i132.1
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !103
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i132.1
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !103
  %indvars.iv.next.i.i132.2 = add nuw nsw i64 %indvars.iv.i.i131, 3 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i132.2
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !103
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i132.2
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !103
  %indvars.iv.next.i.i132.3 = add nuw nsw i64 %indvars.iv.i.i131, 4 ; 2 uses
  %exitcond.not.i.i133.3 = icmp eq i64 %indvars.iv.next.i.i132.3, %wide.trip.count.i.i130
  br i1 %exitcond.not.i.i133.3, label %._crit_edge.thread.i.i127, label %scalar.ph195, !llvm.loop !208

._crit_edge.thread.i.i127:                        ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195, %middle.block206, %._crit_edge.i.i126
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i125) #21
  %.pre.i128 = load i32, ptr %i.gv, align 8, !tbaa !100
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.thread.i.i127, %._crit_edge.i.i126, %.noexc134
  %i.id = phi i32 [ %.pre.i128, %._crit_edge.thread.i.i127 ], [ %.pre7.i118, %._crit_edge.i.i126 ], [ %.pre7.i118, %.noexc134 ]
  store ptr %i.ha, ptr %i.gu, align 8, !tbaa !101
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.ie
  store i32 0, ptr %i.if, align 4, !tbaa !103
  store i32 %i.be, ptr %i.gx, align 4, !tbaa !99
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i119.preheader: ; preds = %bb.ah, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %.04.i.i120.ph = phi ptr [ %i.ha, %bb.ah ], [ %i.gw, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119

_ZN11CStringBaseIwE11SetCapacityEi.exit.i119:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119
  %.04.i.i120 = phi ptr [ %i.ii, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119 ], [ %.04.i.i120.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119.preheader ] ; 2 uses
  %.0.i.i121 = phi ptr [ %i.ig, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119 ], [ %.sroa.0149.1165, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119.preheader ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i.i121, i64 4
  %i.ih = load i32, ptr %.0.i.i121, align 4, !tbaa !103 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.04.i.i120, i64 4
  store i32 %i.ih, ptr %.04.i.i120, align 4, !tbaa !103
  %.not.i.i122 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i122, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i123, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i123:         ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i119
  store i32 %.sroa.8.1169, ptr %i.gv, align 8, !tbaa !100
  invoke void @_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(120) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit

bb.ai:                                            ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ij = load i32, ptr %i.en, align 4, !tbaa !77
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next, %i.ik
  br i1 %i.il, label %bb.ad, label %._crit_edge, !llvm.loop !209

.loopexit.split-lp.loopexit:                      ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i123, %bb.ae, %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.y, %bb.v, %bb.r, %bb.aa
  %.sroa.0.4 = phi ptr [ %.sroa.0.2, %bb.aa ], [ %.sroa.0.2, %bb.y ], [ %.sroa.0.2, %bb.v ], [ %.sroa.0.0, %bb.r ]
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %.loopexit.split-lp.loopexit ], [ %.sroa.0.4, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.im = icmp eq ptr %.sroa.0.3, null
  br i1 %i.im, label %_ZN11CStringBaseIwED2Ev.exit136, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.3) #21
  br label %_ZN11CStringBaseIwED2Ev.exit136

_ZN11CStringBaseIwED2Ev.exit136:                  ; preds = %bb.aj, %.loopexit.split-lp, %bb.t
  %.sroa.0149.1166 = phi ptr [ %.sroa.0149.1164175, %bb.t ], [ %.sroa.0149.1165, %.loopexit.split-lp ], [ %.sroa.0149.1165, %bb.aj ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.t ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.aj ] ; 2 uses
  %i.in = icmp eq ptr %.sroa.0149.1166, null
  br i1 %i.in, label %_ZN11CStringBaseIwED2Ev.exit137, label %bb.ak

bb.ak:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit136
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0149.1166) #21
  br label %_ZN11CStringBaseIwED2Ev.exit137

_ZN11CStringBaseIwED2Ev.exit137:                  ; preds = %bb.ak, %_ZN11CStringBaseIwED2Ev.exit136, %_ZN11CStringBaseIwED2Ev.exit34
  %.pn.pn.pn = phi { ptr, i32 } [ %i.p, %_ZN11CStringBaseIwED2Ev.exit34 ], [ %.pn.pn, %_ZN11CStringBaseIwED2Ev.exit136 ], [ %.pn.pn, %bb.ak ]
  resume { ptr, i32 } %.pn.pn.pn

_ZN11CStringBaseIwED2Ev.exit100:                  ; preds = %bb.ac, %_ZN11CStringBaseIwED2Ev.exit99, %bb.i, %.thread139, %bb.a
  %.229 = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %.thread139 ], [ true, %_ZN11CStringBaseIwED2Ev.exit99 ], [ true, %bb.ac ]
  ret i1 %.229
}

declare noundef i32 @_ZNK7CCodecs24FindFormatForArchiveNameERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !215 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !100
  %i.b = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !103
  %wcslen.i = tail call i64 @wcslen(ptr %1)
  %i.c = trunc i64 %wcslen.i to i32               ; 3 uses
  %i.d = add nsw i32 %i.c, 1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !99
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.d to i64
  %i.i = icmp slt i32 %i.c, -1
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #20 ; 5 uses
  %i.m = load i32, ptr %i.e, align 4, !tbaa !99
  %i.n = icmp sgt i32 %i.m, 0
  %.pre4 = load i32, ptr %i.a, align 8, !tbaa !100 ; 5 uses
  br i1 %i.n, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.o = icmp sgt i32 %.pre4, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !101 ; 4 uses
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.pre4 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !103
  %wide.load5 = load <4 x i32>, ptr %i.q, align 4, !tbaa !103
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !103
  store <4 x i32> %wide.load5, ptr %i.s, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.u = icmp eq ptr %.pre.i, null
  br i1 %i.u, label %bb.c, label %._crit_edge.thread.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !103
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !103
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %scalar.ph, !llvm.loop !214

._crit_edge.thread.i:                             ; preds = %scalar.ph, %middle.block, %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #21
  %.pre = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.b
  %i.y = phi i32 [ %.pre, %._crit_edge.thread.i ], [ %.pre4, %._crit_edge.i ], [ %.pre4, %bb.b ]
  store ptr %i.l, ptr %0, align 8, !tbaa !101
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !103
  store i32 %i.d, ptr %i.e, align 4, !tbaa !99
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.preheader: ; preds = %bb.a, %bb.c
  %.04.i.ph = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %.04.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.preheader ] ; 2 uses
  %.0.i = phi ptr [ %i.ab, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ac = load i32, ptr %.0.i, align 4, !tbaa !103 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.ac, ptr %.04.i, align 4, !tbaa !103
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit
  store i32 %i.c, ptr %i.a, align 8, !tbaa !100
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !228 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 7 uses
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %5 = alloca %class.CStringBase, align 8         ; 7 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !100
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !99
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.f to i64
  %i.k = icmp slt i32 %i.e, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #20 ; 10 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = load i32, ptr %i.g, align 4, !tbaa !99
  %i.q = icmp sgt i32 %i.p, 0
  %.pre7.i = load i32, ptr %i.b, align 8, !tbaa !100 ; 5 uses
  br i1 %i.q, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.r = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !101 ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i95 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 8
  %i.s = sub i64 %.pre.i.i95, %i.o
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !103
  %wide.load96 = load <4 x i32>, ptr %i.u, align 4, !tbaa !103
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !103
  store <4 x i32> %wide.load96, ptr %i.w, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !103
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !103
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !217

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %bb.d, label %._crit_edge.thread.i.i

end_hunk_1
begin_hunk_2_@_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2:bb.a
._crit_edge.i.i.i.i.i202.i:                       ; preds = %.preheader.i.i.i.i.i200.i
  %i.alf = icmp eq ptr %.pre.i.i.i.i.i201.i, null
  br i1 %i.alf, label %bb.fx, label %._crit_edge.thread.i.i.i.i.i203.i

vec.epilog.scalar.ph1460:                         ; preds = %vec.epilog.scalar.ph1460.prol.loopexit, %vec.epilog.scalar.ph1460
  %indvars.iv.i.i.i.i.i207.i = phi i64 [ %indvars.iv.next.i.i.i.i.i208.i.3, %vec.epilog.scalar.ph1460 ], [ %indvars.iv.i.i.i.i.i207.i.unr, %vec.epilog.scalar.ph1460.prol.loopexit ] ; 6 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i201.i, i64 %indvars.iv.i.i.i.i.i207.i
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !118
  %i.ali = getelementptr inbounds nuw i8, ptr %i.akl, i64 %indvars.iv.i.i.i.i.i207.i
  store i8 %i.alh, ptr %i.ali, align 1, !tbaa !118
  %indvars.iv.next.i.i.i.i.i208.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i207.i, 1 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i201.i, i64 %indvars.iv.next.i.i.i.i.i208.i
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !118
  %i.all = getelementptr inbounds nuw i8, ptr %i.akl, i64 %indvars.iv.next.i.i.i.i.i208.i
  store i8 %i.alk, ptr %i.all, align 1, !tbaa !118
  %indvars.iv.next.i.i.i.i.i208.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i207.i, 2 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i201.i, i64 %indvars.iv.next.i.i.i.i.i208.i.1
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !118
  %i.alo = getelementptr inbounds nuw i8, ptr %i.akl, i64 %indvars.iv.next.i.i.i.i.i208.i.1
  store i8 %i.aln, ptr %i.alo, align 1, !tbaa !118
  %indvars.iv.next.i.i.i.i.i208.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i207.i, 3 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i201.i, i64 %indvars.iv.next.i.i.i.i.i208.i.2
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !118
  %i.alr = getelementptr inbounds nuw i8, ptr %i.akl, i64 %indvars.iv.next.i.i.i.i.i208.i.2
  store i8 %i.alq, ptr %i.alr, align 1, !tbaa !118
  %indvars.iv.next.i.i.i.i.i208.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i207.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i209.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i208.i.3, %wide.trip.count.i.i.i.i.i206.i
  br i1 %exitcond.not.i.i.i.i.i209.i.3, label %._crit_edge.thread.i.i.i.i.i203.i, label %vec.epilog.scalar.ph1460, !llvm.loop !300

._crit_edge.thread.i.i.i.i.i203.i:                ; preds = %vec.epilog.scalar.ph1460.prol.loopexit, %vec.epilog.scalar.ph1460, %middle.block1456, %vec.epilog.middle.block1469, %._crit_edge.i.i.i.i.i202.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i201.i) #21
  %.pre.i.i.i.i204.i = load i32, ptr %i.akj, align 8, !tbaa !116
  br label %bb.fx

bb.fx:                                            ; preds = %._crit_edge.thread.i.i.i.i.i203.i, %._crit_edge.i.i.i.i.i202.i, %.noexc210.i
  %i.als = phi i32 [ %.pre1.i.i.i.i199.i, %.noexc210.i ], [ %.pre1.i.i.i.i199.i, %._crit_edge.i.i.i.i.i202.i ], [ %.pre.i.i.i.i204.i, %._crit_edge.thread.i.i.i.i.i203.i ]
  store ptr %i.akl, ptr %i.aki, align 8, !tbaa !117
  %i.alt = sext i32 %i.als to i64
  %i.alu = getelementptr inbounds i8, ptr %i.akl, i64 %i.alt
  store i8 0, ptr %i.alu, align 1, !tbaa !118
  store i32 4, ptr %i.akk, align 4, !tbaa !115
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO8COutFileE, i64 16), ptr %i.akg, align 8, !tbaa !109
  %i.alv = load ptr, ptr %i.ake, align 8, !tbaa !109
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.alx = load ptr, ptr %i.alw, align 8
  %i.aly = invoke noundef i32 %i.alx(ptr noundef nonnull align 8 dereferenceable(8) %i.ake)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit347.i.i, !inline_history !296 ; 0 uses

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i: ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.alz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #20
          to label %.noexc197.i unwind label %bb.fz ; 9 uses

.noexc197.i:                                      ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i
  %i.ama = ptrtoaddr ptr %i.alz to i64
  %i.amb = load i32, ptr %i.aco, align 4, !tbaa !99
  %i.amc = icmp sgt i32 %i.amb, 0
  %.pre1.i.i489 = load i32, ptr %i.acn, align 8, !tbaa !100 ; 5 uses
  br i1 %i.amc, label %.preheader.i.i187.i, label %.preheader.i.i490

.preheader.i.i187.i:                              ; preds = %.noexc197.i
  %i.amd = icmp sgt i32 %.pre1.i.i489, 0
  %.pre.i.i188.i = load ptr, ptr %12, align 8, !tbaa !101 ; 9 uses
  br i1 %i.amd, label %.lr.ph.i.i192.i, label %._crit_edge.i.i189.i

.lr.ph.i.i192.i:                                  ; preds = %.preheader.i.i187.i
  %.pre.i.i188.i1424 = ptrtoaddr ptr %.pre.i.i188.i to i64
  %wide.trip.count.i.i193.i = zext nneg i32 %.pre1.i.i489 to i64 ; 5 uses
  %min.iters.check1426 = icmp ult i32 %.pre1.i.i489, 8
  %i.ame = sub i64 %.pre.i.i188.i1424, %i.ama
  %diff.check1428 = icmp ugt i64 %i.ame, -32
  %or.cond1539 = select i1 %min.iters.check1426, i1 true, i1 %diff.check1428
  br i1 %or.cond1539, label %scalar.ph1425.preheader, label %vector.ph1429

vector.ph1429:                                    ; preds = %.lr.ph.i.i192.i
  %n.vec1430 = and i64 %wide.trip.count.i.i193.i, 2147483640 ; 3 uses
  br label %vector.body1431

vector.body1431:                                  ; preds = %vector.body1431, %vector.ph1429
  %index1432 = phi i64 [ 0, %vector.ph1429 ], [ %index.next1435, %vector.body1431 ] ; 3 uses
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i188.i, i64 %index1432 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 16
  %wide.load1433 = load <4 x i32>, ptr %i.amf, align 4, !tbaa !103
  %wide.load1434 = load <4 x i32>, ptr %i.amg, align 4, !tbaa !103
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %index1432 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 16
  store <4 x i32> %wide.load1433, ptr %i.amh, align 4, !tbaa !103
  store <4 x i32> %wide.load1434, ptr %i.ami, align 4, !tbaa !103
  %index.next1435 = add nuw i64 %index1432, 8     ; 2 uses
  %i.amj = icmp eq i64 %index.next1435, %n.vec1430
  br i1 %i.amj, label %middle.block1436, label %vector.body1431, !llvm.loop !301

middle.block1436:                                 ; preds = %vector.body1431
  %cmp.n1437 = icmp eq i64 %n.vec1430, %wide.trip.count.i.i193.i
  br i1 %cmp.n1437, label %._crit_edge.thread.i.i190.i, label %scalar.ph1425.preheader

scalar.ph1425.preheader:                          ; preds = %.lr.ph.i.i192.i, %middle.block1436
  %indvars.iv.i.i194.i.ph = phi i64 [ 0, %.lr.ph.i.i192.i ], [ %n.vec1430, %middle.block1436 ] ; 3 uses
  %xtraiter1704 = and i64 %wide.trip.count.i.i193.i, 3 ; 2 uses
  %lcmp.mod1705.not = icmp eq i64 %xtraiter1704, 0
  br i1 %lcmp.mod1705.not, label %scalar.ph1425.prol.loopexit, label %scalar.ph1425.prol

scalar.ph1425.prol:                               ; preds = %scalar.ph1425.preheader, %scalar.ph1425.prol
  %indvars.iv.i.i194.i.prol = phi i64 [ %indvars.iv.next.i.i195.i.prol, %scalar.ph1425.prol ], [ %indvars.iv.i.i194.i.ph, %scalar.ph1425.preheader ] ; 3 uses
  %prol.iter1706 = phi i64 [ %prol.iter1706.next, %scalar.ph1425.prol ], [ 0, %scalar.ph1425.preheader ]
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i188.i, i64 %indvars.iv.i.i194.i.prol
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !103
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv.i.i194.i.prol
  store i32 %i.aml, ptr %i.amm, align 4, !tbaa !103
  %indvars.iv.next.i.i195.i.prol = add nuw nsw i64 %indvars.iv.i.i194.i.prol, 1 ; 2 uses
  %prol.iter1706.next = add i64 %prol.iter1706, 1 ; 2 uses
  %prol.iter1706.cmp.not = icmp eq i64 %prol.iter1706.next, %xtraiter1704
  br i1 %prol.iter1706.cmp.not, label %scalar.ph1425.prol.loopexit, label %scalar.ph1425.prol, !llvm.loop !302

scalar.ph1425.prol.loopexit:                      ; preds = %scalar.ph1425.prol, %scalar.ph1425.preheader
  %indvars.iv.i.i194.i.unr = phi i64 [ %indvars.iv.i.i194.i.ph, %scalar.ph1425.preheader ], [ %indvars.iv.next.i.i195.i.prol, %scalar.ph1425.prol ]
  %i.amn = sub nsw i64 %indvars.iv.i.i194.i.ph, %wide.trip.count.i.i193.i
  %i.amo = icmp ugt i64 %i.amn, -4
  br i1 %i.amo, label %._crit_edge.thread.i.i190.i, label %scalar.ph1425

._crit_edge.i.i189.i:                             ; preds = %.preheader.i.i187.i
  %i.amp = icmp eq ptr %.pre.i.i188.i, null
  br i1 %i.amp, label %.preheader.i.i490, label %._crit_edge.thread.i.i190.i

scalar.ph1425:                                    ; preds = %scalar.ph1425.prol.loopexit, %scalar.ph1425
  %indvars.iv.i.i194.i = phi i64 [ %indvars.iv.next.i.i195.i.3, %scalar.ph1425 ], [ %indvars.iv.i.i194.i.unr, %scalar.ph1425.prol.loopexit ] ; 6 uses
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i188.i, i64 %indvars.iv.i.i194.i
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !103
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv.i.i194.i
  store i32 %i.amr, ptr %i.ams, align 4, !tbaa !103
  %indvars.iv.next.i.i195.i = add nuw nsw i64 %indvars.iv.i.i194.i, 1 ; 2 uses
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i188.i, i64 %indvars.iv.next.i.i195.i
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !103
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv.next.i.i195.i
  store i32 %i.amu, ptr %i.amv, align 4, !tbaa !103
  %indvars.iv.next.i.i195.i.1 = add nuw nsw i64 %indvars.iv.i.i194.i, 2 ; 2 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i188.i, i64 %indvars.iv.next.i.i195.i.1
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !103
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv.next.i.i195.i.1
  store i32 %i.amx, ptr %i.amy, align 4, !tbaa !103
  %indvars.iv.next.i.i195.i.2 = add nuw nsw i64 %indvars.iv.i.i194.i, 3 ; 2 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i188.i, i64 %indvars.iv.next.i.i195.i.2
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !103
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv.next.i.i195.i.2
  store i32 %i.ana, ptr %i.anb, align 4, !tbaa !103
  %indvars.iv.next.i.i195.i.3 = add nuw nsw i64 %indvars.iv.i.i194.i, 4 ; 2 uses
  %exitcond.not.i.i196.i.3 = icmp eq i64 %indvars.iv.next.i.i195.i.3, %wide.trip.count.i.i193.i
  br i1 %exitcond.not.i.i196.i.3, label %._crit_edge.thread.i.i190.i, label %scalar.ph1425, !llvm.loop !303

._crit_edge.thread.i.i190.i:                      ; preds = %scalar.ph1425.prol.loopexit, %scalar.ph1425, %middle.block1436, %._crit_edge.i.i189.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i188.i) #21
  %.pre.i191.i = load i32, ptr %i.acn, align 8, !tbaa !100
  br label %.preheader.i.i490

.preheader.i.i490:                                ; preds = %._crit_edge.thread.i.i190.i, %._crit_edge.i.i189.i, %.noexc197.i
  %i.anc = phi i32 [ %.pre1.i.i489, %.noexc197.i ], [ %.pre1.i.i489, %._crit_edge.i.i189.i ], [ %.pre.i191.i, %._crit_edge.thread.i.i190.i ]
  store ptr %i.alz, ptr %12, align 8, !tbaa !101
  %i.and = sext i32 %i.anc to i64
  %i.ane = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.and
  store i32 0, ptr %i.ane, align 4, !tbaa !103
  store i32 4, ptr %i.aco, align 4, !tbaa !99
  %i.anf = getelementptr inbounds nuw i8, ptr %i.adg, i64 96 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.adg, i64 120 ; 3 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.adg, i64 128 ; 4 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.adg, i64 132 ; 3 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ake, i64 1104
  %.pre.i.i491 = load i8, ptr %i.anf, align 8, !tbaa !150, !range !139
  %i.ank = trunc nuw i8 %.pre.i.i491 to i1
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fw
  %i.anl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ake, i64 noundef 1112) #21
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit352.i.i

bb.fz:                                            ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit315.i.i

bb.ga:                                            ; preds = %bb.hf, %.preheader.i.i490
  %i.ann = phi i1 [ %i.ank, %.preheader.i.i490 ], [ true, %bb.hf ]
  %.0117429.i.i = phi i32 [ 0, %.preheader.i.i490 ], [ %i.ato, %bb.hf ] ; 3 uses
  br i1 %i.ann, label %bb.gb, label %bb.gs

bb.gb:                                            ; preds = %bb.ga
  %.not206.i.i = icmp eq i32 %.0117429.i.i, 0
  br i1 %.not206.i.i, label %bb.gi, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  invoke void @_Z21ConvertUInt32ToStringjPw(i32 noundef %.0117429.i.i, ptr noundef nonnull %i.c)
          to label %bb.gd unwind label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  store i32 0, ptr %i.anh, align 8, !tbaa !100
  %i.ano = load ptr, ptr %i.ang, align 8, !tbaa !101 ; 2 uses
  store i32 0, ptr %i.ano, align 4, !tbaa !103
  %wcslen.i.i.i.i = call i64 @wcslen(ptr nonnull %i.c)
  %i.anp = trunc i64 %wcslen.i.i.i.i to i32       ; 3 uses
  %i.anq = add nsw i32 %i.anp, 1                  ; 3 uses
  %i.anr = load i32, ptr %i.ani, align 4, !tbaa !99
  %i.ans = icmp eq i32 %i.anq, %i.anr
  br i1 %i.ans, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i.preheader, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ant = zext nneg i32 %i.anq to i64
  %i.anu = icmp slt i32 %i.anp, -1
  %i.anv = shl nuw nsw i64 %i.ant, 2
  %i.anw = select i1 %i.anu, i64 -1, i64 %i.anv
  %i.anx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anw) #20
          to label %.noexc276.i.i unwind label %bb.gh ; 10 uses

.noexc276.i.i:                                    ; preds = %bb.ge
  %i.any = ptrtoaddr ptr %i.anx to i64
  %i.anz = load i32, ptr %i.ani, align 4, !tbaa !99
  %i.aoa = icmp sgt i32 %i.anz, 0
  %.pre4.i.i.i = load i32, ptr %i.anh, align 8, !tbaa !100 ; 5 uses
  br i1 %i.aoa, label %.preheader.i.i266.i.i, label %bb.gf

.preheader.i.i266.i.i:                            ; preds = %.noexc276.i.i
  %i.aob = icmp sgt i32 %.pre4.i.i.i, 0
  %.pre.i.i267.i.i = load ptr, ptr %i.ang, align 8, !tbaa !101 ; 9 uses
  br i1 %i.aob, label %.lr.ph.i.i271.i.i, label %._crit_edge.i.i268.i.i

.lr.ph.i.i271.i.i:                                ; preds = %.preheader.i.i266.i.i
  %.pre.i.i267.i.i1388 = ptrtoaddr ptr %.pre.i.i267.i.i to i64
  %wide.trip.count.i.i272.i.i = zext nneg i32 %.pre4.i.i.i to i64 ; 5 uses
  %min.iters.check1390 = icmp ult i32 %.pre4.i.i.i, 8
  %i.aoc = sub i64 %.pre.i.i267.i.i1388, %i.any
  %diff.check1392 = icmp ugt i64 %i.aoc, -32
  %or.cond1540 = select i1 %min.iters.check1390, i1 true, i1 %diff.check1392
  br i1 %or.cond1540, label %scalar.ph1389.preheader, label %vector.ph1393

vector.ph1393:                                    ; preds = %.lr.ph.i.i271.i.i
  %n.vec1394 = and i64 %wide.trip.count.i.i272.i.i, 2147483640 ; 3 uses
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1393
  %index1396 = phi i64 [ 0, %vector.ph1393 ], [ %index.next1399, %vector.body1395 ] ; 3 uses
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i267.i.i, i64 %index1396 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  %wide.load1397 = load <4 x i32>, ptr %i.aod, align 4, !tbaa !103
  %wide.load1398 = load <4 x i32>, ptr %i.aoe, align 4, !tbaa !103
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %index1396 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  store <4 x i32> %wide.load1397, ptr %i.aof, align 4, !tbaa !103
  store <4 x i32> %wide.load1398, ptr %i.aog, align 4, !tbaa !103
  %index.next1399 = add nuw i64 %index1396, 8     ; 2 uses
  %i.aoh = icmp eq i64 %index.next1399, %n.vec1394
  br i1 %i.aoh, label %middle.block1400, label %vector.body1395, !llvm.loop !304

middle.block1400:                                 ; preds = %vector.body1395
  %cmp.n1401 = icmp eq i64 %n.vec1394, %wide.trip.count.i.i272.i.i
  br i1 %cmp.n1401, label %._crit_edge.thread.i.i269.i.i, label %scalar.ph1389.preheader

scalar.ph1389.preheader:                          ; preds = %.lr.ph.i.i271.i.i, %middle.block1400
  %indvars.iv.i.i273.i.i.ph = phi i64 [ 0, %.lr.ph.i.i271.i.i ], [ %n.vec1394, %middle.block1400 ] ; 3 uses
  %xtraiter1710 = and i64 %wide.trip.count.i.i272.i.i, 3 ; 2 uses
  %lcmp.mod1711.not = icmp eq i64 %xtraiter1710, 0
  br i1 %lcmp.mod1711.not, label %scalar.ph1389.prol.loopexit, label %scalar.ph1389.prol

scalar.ph1389.prol:                               ; preds = %scalar.ph1389.preheader, %scalar.ph1389.prol
  %indvars.iv.i.i273.i.i.prol = phi i64 [ %indvars.iv.next.i.i274.i.i.prol, %scalar.ph1389.prol ], [ %indvars.iv.i.i273.i.i.ph, %scalar.ph1389.preheader ] ; 3 uses
  %prol.iter1712 = phi i64 [ %prol.iter1712.next, %scalar.ph1389.prol ], [ 0, %scalar.ph1389.preheader ]
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i267.i.i, i64 %indvars.iv.i.i273.i.i.prol
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !103
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %indvars.iv.i.i273.i.i.prol
  store i32 %i.aoj, ptr %i.aok, align 4, !tbaa !103
  %indvars.iv.next.i.i274.i.i.prol = add nuw nsw i64 %indvars.iv.i.i273.i.i.prol, 1 ; 2 uses
  %prol.iter1712.next = add i64 %prol.iter1712, 1 ; 2 uses
  %prol.iter1712.cmp.not = icmp eq i64 %prol.iter1712.next, %xtraiter1710
  br i1 %prol.iter1712.cmp.not, label %scalar.ph1389.prol.loopexit, label %scalar.ph1389.prol, !llvm.loop !305

scalar.ph1389.prol.loopexit:                      ; preds = %scalar.ph1389.prol, %scalar.ph1389.preheader
  %indvars.iv.i.i273.i.i.unr = phi i64 [ %indvars.iv.i.i273.i.i.ph, %scalar.ph1389.preheader ], [ %indvars.iv.next.i.i274.i.i.prol, %scalar.ph1389.prol ]
  %i.aol = sub nsw i64 %indvars.iv.i.i273.i.i.ph, %wide.trip.count.i.i272.i.i
  %i.aom = icmp ugt i64 %i.aol, -4
  br i1 %i.aom, label %._crit_edge.thread.i.i269.i.i, label %scalar.ph1389

._crit_edge.i.i268.i.i:                           ; preds = %.preheader.i.i266.i.i
  %i.aon = icmp eq ptr %.pre.i.i267.i.i, null
  br i1 %i.aon, label %bb.gf, label %._crit_edge.thread.i.i269.i.i

scalar.ph1389:                                    ; preds = %scalar.ph1389.prol.loopexit, %scalar.ph1389
  %indvars.iv.i.i273.i.i = phi i64 [ %indvars.iv.next.i.i274.i.i.3, %scalar.ph1389 ], [ %indvars.iv.i.i273.i.i.unr, %scalar.ph1389.prol.loopexit ] ; 6 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i267.i.i, i64 %indvars.iv.i.i273.i.i
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !103
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %indvars.iv.i.i273.i.i
  store i32 %i.aop, ptr %i.aoq, align 4, !tbaa !103
  %indvars.iv.next.i.i274.i.i = add nuw nsw i64 %indvars.iv.i.i273.i.i, 1 ; 2 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i267.i.i, i64 %indvars.iv.next.i.i274.i.i
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !103
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %indvars.iv.next.i.i274.i.i
  store i32 %i.aos, ptr %i.aot, align 4, !tbaa !103
  %indvars.iv.next.i.i274.i.i.1 = add nuw nsw i64 %indvars.iv.i.i273.i.i, 2 ; 2 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i267.i.i, i64 %indvars.iv.next.i.i274.i.i.1
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !103
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %indvars.iv.next.i.i274.i.i.1
  store i32 %i.aov, ptr %i.aow, align 4, !tbaa !103
  %indvars.iv.next.i.i274.i.i.2 = add nuw nsw i64 %indvars.iv.i.i273.i.i, 3 ; 2 uses
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i267.i.i, i64 %indvars.iv.next.i.i274.i.i.2
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !103
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %indvars.iv.next.i.i274.i.i.2
  store i32 %i.aoy, ptr %i.aoz, align 4, !tbaa !103
  %indvars.iv.next.i.i274.i.i.3 = add nuw nsw i64 %indvars.iv.i.i273.i.i, 4 ; 2 uses
  %exitcond.not.i.i275.i.i.3 = icmp eq i64 %indvars.iv.next.i.i274.i.i.3, %wide.trip.count.i.i272.i.i
  br i1 %exitcond.not.i.i275.i.i.3, label %._crit_edge.thread.i.i269.i.i, label %scalar.ph1389, !llvm.loop !306

._crit_edge.thread.i.i269.i.i:                    ; preds = %scalar.ph1389.prol.loopexit, %scalar.ph1389, %middle.block1400, %._crit_edge.i.i268.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i267.i.i) #21
  %.pre.i270.i.i = load i32, ptr %i.anh, align 8, !tbaa !100
  br label %bb.gf

bb.gf:                                            ; preds = %._crit_edge.thread.i.i269.i.i, %._crit_edge.i.i268.i.i, %.noexc276.i.i
  %i.apa = phi i32 [ %.pre.i270.i.i, %._crit_edge.thread.i.i269.i.i ], [ %.pre4.i.i.i, %._crit_edge.i.i268.i.i ], [ %.pre4.i.i.i, %.noexc276.i.i ]
  store ptr %i.anx, ptr %i.ang, align 8, !tbaa !101
  %i.apb = sext i32 %i.apa to i64
  %i.apc = getelementptr inbounds [4 x i8], ptr %i.anx, i64 %i.apb
  store i32 0, ptr %i.apc, align 4, !tbaa !103
  store i32 %i.anq, ptr %i.ani, align 4, !tbaa !99
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i.preheader: ; preds = %bb.gf, %bb.gd
  %.04.i.i.i.i.ph = phi ptr [ %i.anx, %bb.gf ], [ %i.ano, %bb.gd ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i:    ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.apf, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %.04.i.i.i.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i.preheader ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.apd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i.preheader ] ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.ape = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !103 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  store i32 %i.ape, ptr %.04.i.i.i.i, align 4, !tbaa !103
  %.not.i.i265.i.i = icmp eq i32 %i.ape, 0
  br i1 %.not.i.i265.i.i, label %bb.gg, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i, !llvm.loop !0

bb.gg:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
  store i32 %i.anp, ptr %i.anh, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ge, %bb.gc
  %i.apg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.loopexit.split-lp.i.i

bb.gi:                                            ; preds = %bb.gg, %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNK12CArchivePath11GetTempPathEv(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %13, ptr noundef nonnull align 8 dereferenceable(120) %i.aed)
          to label %bb.gj unwind label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  store i32 0, ptr %i.acn, align 8, !tbaa !100
  %i.aph = load ptr, ptr %12, align 8, !tbaa !101 ; 2 uses
  store i32 0, ptr %i.aph, align 4, !tbaa !103
  %i.api = load i32, ptr %i.acq, align 8, !tbaa !100 ; 2 uses
  %i.apj = add nsw i32 %i.api, 1                  ; 3 uses
  %i.apk = load i32, ptr %i.aco, align 4, !tbaa !99
  %i.apl = icmp eq i32 %i.apj, %i.apk
  br i1 %i.apl, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i277.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.apm = zext nneg i32 %i.apj to i64
  %i.apn = icmp slt i32 %i.api, -1
  %i.apo = shl nuw nsw i64 %i.apm, 2
  %i.app = select i1 %i.apn, i64 -1, i64 %i.apo
  %i.apq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.app) #20
          to label %.noexc291.i.i unwind label %bb.gq ; 10 uses

.noexc291.i.i:                                    ; preds = %bb.gk
  %i.apr = ptrtoaddr ptr %i.apq to i64
  %i.aps = load i32, ptr %i.aco, align 4, !tbaa !99
  %i.apt = icmp sgt i32 %i.aps, 0
  %.pre7.i.i.i = load i32, ptr %i.acn, align 8, !tbaa !100 ; 5 uses
  br i1 %i.apt, label %.preheader.i.i281.i.i, label %bb.gl

.preheader.i.i281.i.i:                            ; preds = %.noexc291.i.i
  %i.apu = icmp sgt i32 %.pre7.i.i.i, 0
  %.pre.i.i282.i.i = load ptr, ptr %12, align 8, !tbaa !101 ; 9 uses
  br i1 %i.apu, label %.lr.ph.i.i286.i.i, label %._crit_edge.i.i283.i.i

.lr.ph.i.i286.i.i:                                ; preds = %.preheader.i.i281.i.i
  %.pre.i.i282.i.i1370 = ptrtoaddr ptr %.pre.i.i282.i.i to i64
  %wide.trip.count.i.i287.i.i = zext nneg i32 %.pre7.i.i.i to i64 ; 5 uses
  %min.iters.check1372 = icmp ult i32 %.pre7.i.i.i, 8
  %i.apv = sub i64 %.pre.i.i282.i.i1370, %i.apr
  %diff.check1374 = icmp ugt i64 %i.apv, -32
  %or.cond1541 = select i1 %min.iters.check1372, i1 true, i1 %diff.check1374
  br i1 %or.cond1541, label %scalar.ph1371.preheader, label %vector.ph1375

vector.ph1375:                                    ; preds = %.lr.ph.i.i286.i.i
  %n.vec1376 = and i64 %wide.trip.count.i.i287.i.i, 2147483640 ; 3 uses
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %vector.ph1375
  %index1378 = phi i64 [ 0, %vector.ph1375 ], [ %index.next1381, %vector.body1377 ] ; 3 uses
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i282.i.i, i64 %index1378 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN13CObjectVectorI8CDirItemE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN8CDirItemD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #21
  br label %_ZN8CDirItemD2Ev.exit

_ZN8CDirItemD2Ev.exit:                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 64) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN8CDirItemD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.r, label %bb.a, label %._crit_edge, !llvm.loop !466
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !guid !468 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  ret i32 %i.f
}

declare void @_Z21GetUpdatePairInfoListRK9CDirItemsRK13CObjectVectorI8CArcItemEN13NFileTimeType5EEnumER13CRecordVectorI11CUpdatePairE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN22CArchiveUpdateCallbackC1Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #2

declare noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN13CInFileStream4OpenEPKw(ptr noundef nonnull align 8 dereferenceable(1112), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN9NCompress10CopyStreamEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorI12CUpdatePair2ED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !guid !469 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorI11CUpdatePairED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !guid !470 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !471 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, i64 16), ptr %0, align 8, !tbaa !109
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !472 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, i64 16), ptr %0, align 8, !tbaa !109
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev.exit unwind label %bb.b, !inline_history !155

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22, !inline_history !155
  unreachable

_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19, !inline_history !155
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !474 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.f, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #21
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit: ; preds = %_ZN11CStringBaseIwED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 48) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.z, label %bb.a, label %._crit_edge, !llvm.loop !473
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIyED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !guid !475 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(1084) dereferenceable(1084)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows5NFile3NIO7CInFileD0Ev(ptr noundef nonnull align 8 dereferenceable(1084) %0) unnamed_addr #6 comdat align 2 !guid !476 {
bb.a:
  tail call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1088) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !479 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr %1)
  %i.a = trunc i64 %wcslen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !99   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !100  ; 3 uses
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.c, %i.f                       ; 3 uses
  %.not.i = icmp slt i32 %i.g, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 64
  %i.i = lshr i32 %i.c, 1
  %i.j = icmp sgt i32 %i.c, 8
  %..i = select i1 %i.j, i32 16, i32 4
  %.0.i = select i1 %i.h, i32 %i.i, i32 %..i      ; 2 uses
  %i.k = add nsw i32 %.0.i, %i.g
  %i.l = icmp slt i32 %i.k, %i.a
  %i.m = sub nsw i32 %i.a, %i.g
  %.1.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %i.n = add nsw i32 %.1.i, %i.c                  ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i32 %i.o to i64
  %i.r = icmp slt i32 %i.n, -1
  %i.s = shl nuw nsw i64 %i.q, 2
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #20 ; 4 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !99
  %i.w = icmp sgt i32 %i.v, 0
  %.pre12.i = load i32, ptr %i.d, align 8, !tbaa !100 ; 5 uses
  br i1 %i.w, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.x = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !101 ; 4 uses
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !103
  %wide.load8 = load <4 x i32>, ptr %i.z, align 4, !tbaa !103
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !103
  store <4 x i32> %wide.load8, ptr %i.ab, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !103
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !103
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !478

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #21
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.ah = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre12.i, %._crit_edge.i.i ], [ %.pre12.i, %bb.c ] ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ai
  store i32 0, ptr %i.aj, align 4, !tbaa !103
  store i32 %i.o, ptr %i.b, align 4, !tbaa !99
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ak = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.ah, %bb.d ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !101
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE10GrowLengthEi.exit
  %.04.i = phi ptr [ %i.an, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.aq, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %1, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  %i.ap = load i32, ptr %.0.i4, align 4, !tbaa !103 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.ap, ptr %.04.i, align 4, !tbaa !103
  %.not.i5 = icmp eq i32 %i.ap, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.ar = add nsw i32 %i.ak, %i.a
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !100
  ret ptr %0
}

declare void @_ZN10CTempFiles5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI11CStringBaseIwEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !480 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %0, align 8, !tbaa !109
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.b, !inline_history !152

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22, !inline_history !152
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19, !inline_history !152
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !guid !482 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #21
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.q, label %bb.a, label %._crit_edge, !llvm.loop !481
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN18COutMultiVolStream14CSubStreamInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !486 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_3
