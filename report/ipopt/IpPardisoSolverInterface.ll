Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpPardisoSolverInterface?download=true
inline.NumInlined: 727
inline.NumDeleted: 100
begin_hunk_0_@_ZN5Ipopt22PardisoSolverInterface5SolveEPKiS2_iPd:bb.a
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %5 = alloca %"class.std::basic_ofstream", align 8 ; 14 uses
  %i.e = alloca [128 x i8], align 16              ; 5 uses
  %6 = alloca %"class.std::basic_ofstream", align 8 ; 13 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 7 uses
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1232
  %i.n = load i8, ptr %i.m, align 8, !tbaa !67, !range !41, !noundef !42
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1184
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1234
  store i8 0, ptr %i.q, align 2, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1233
  store i8 1, ptr %i.r, align 1, !tbaa !69
  %i.s = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.s, ptr %i.p, align 8, !tbaa !70
  %i.t = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1200
  store double %i.t, ptr %i.u, align 8, !tbaa !71
  %i.v = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 1216
  store double %i.v, ptr %i.w, align 8, !tbaa !72
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 33, ptr %i.f, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44   ; 10 uses
  store i32 %i.y, ptr %i.g, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 %3, ptr %i.i, align 4, !tbaa !43
  %i.z = mul nsw i32 %i.y, %3                     ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = shl nsw i64 %i.aa, 3
  %i.ad = select i1 %i.ab, i64 -1, i64 %i.ac
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #19 ; 3 uses
  %i.af = load i32, ptr %i.x, align 4, !tbaa !44
  %i.ag = mul nsw i32 %i.af, %3                   ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i32 %i.ag, 0
  %i.aj = shl nsw i64 %i.ah, 3
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.am = icmp sgt i32 %i.y, 0                    ; 3 uses
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.an = zext nneg i32 %i.y to i64
  %i.ao = shl nuw nsw i64 %i.an, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ae, i8 0, i64 %i.ao, i1 false), !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %4, i64 %i.ao, i1 false), !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %.not50 = icmp eq ptr %i.ap, null
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.038 = phi i32 [ %i.ar, %bb.d ], [ 0, %._crit_edge ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = load i32, ptr %i.au, align 8, !tbaa !87 ; 2 uses
  %i.aw = tail call ptr @getenv(ptr noundef nonnull @.str.99) #20
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ax = sext i32 %i.y to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !43 ; 2 uses
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  %i.bb = tail call ptr @getenv(ptr noundef nonnull @.str.100) #20 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  %spec.store.select.i = select i1 %i.bc, ptr @.str.101, ptr %i.bb
  %i.bd = call noundef i32 (ptr, i64, ptr, ...) @_ZN5Ipopt8SnprintfEPclPKcz(ptr noundef nonnull %i.d, i64 noundef 127, ptr noundef nonnull @.str.102, ptr noundef nonnull %spec.store.select.i, i32 noundef %.038, i32 noundef %i.av) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull %i.d, i32 noundef 16)
  %i.be = load ptr, ptr %5, align 8, !tbaa !12
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %5, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 16, ptr %i.bi, align 8, !tbaa !123
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.y)
          to label %bb.g unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 240
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !130 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !135
  %.not.i1.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i1.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 67
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bp)
          to label %.noexc82.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc82.i:                                       ; preds = %bb.i
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef signext i8 %i.bw(ptr noundef nonnull align 8 dereferenceable(570) %i.bp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !107

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc82.i, %bb.h
  %.0.i.i.i.i = phi i8 [ %i.bt, %bb.h ], [ %i.bx, %.noexc82.i ]
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc84.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84.i:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit.i:                          ; preds = %.noexc84.i
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !12
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 240
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !130 ; 6 uses
  %.not.i.i.i86.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i86.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i: ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !135
  %.not.i1.i.i88.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i1.i.i88.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 67
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cg)
          to label %.noexc92.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92.i:                                       ; preds = %bb.l
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef signext i8 %i.cn(ptr noundef nonnull align 8 dereferenceable(570) %i.cg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !107

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i: ; preds = %.noexc92.i, %bb.k
  %.0.i.i.i90.i = phi i8 [ %i.ck, %bb.k ], [ %i.co, %.noexc92.i ]
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i8 noundef signext %.0.i.i.i90.i)
          to label %.noexc94.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94.i:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %_ZNSolsEPFRSoS_E.exit60.preheader.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit60.preheader.i:              ; preds = %.noexc94.i
  %.not56172.i = icmp slt i32 %i.y, 0
  br i1 %.not56172.i, label %.preheader163.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSolsEPFRSoS_E.exit60.preheader.i
  %8 = add nuw i32 %i.y, 1
  %wide.trip.count.i = zext i32 %8 to i64
  br label %.lr.ph.i

.preheader163.i:                                  ; preds = %_ZNSolsEPFRSoS_E.exit61.i, %_ZNSolsEPFRSoS_E.exit60.preheader.i
  %i.cr = icmp sgt i32 %i.az, 1
  br i1 %i.cr, label %.lr.ph175.preheader.i, label %._crit_edge.i

.lr.ph175.preheader.i:                            ; preds = %.preheader163.i
  %wide.trip.count202.i = zext nneg i32 %i.ba to i64 ; 2 uses
  br label %.lr.ph175.i

.lr.ph.i:                                         ; preds = %_ZNSolsEPFRSoS_E.exit61.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNSolsEPFRSoS_E.exit61.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !43
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.ct)
          to label %bb.m unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.m:                                             ; preds = %.lr.ph.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !12
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !130 ; 6 uses
  %.not.i.i.i97.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i97.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !135
  %.not.i1.i.i99.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i1.i.i99.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 67
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.da)
          to label %.noexc103.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103.i:                                      ; preds = %bb.o
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef signext i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(570) %i.da, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !107

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i: ; preds = %.noexc103.i, %bb.n
  %.0.i.i.i101.i = phi i8 [ %i.de, %bb.n ], [ %i.di, %.noexc103.i ]
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i8 noundef signext %.0.i.i.i101.i)
          to label %.noexc105.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %_ZNSolsEPFRSoS_E.exit61.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit61.i:                        ; preds = %.noexc105.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader163.i, label %.lr.ph.i, !llvm.loop !108

.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph175.i, %bb.r, %.noexc114.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111.i, %.noexc116.i, %.lr.ph177.i, %bb.t, %.noexc125.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122.i, %.noexc127.i, %.lr.ph179.i, %bb.v, %.noexc136.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133.i, %.noexc138.i, %.noexc105.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i, %.noexc103.i, %bb.o, %.lr.ph.i, %.invoke.i, %.noexc94.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i, %.noexc92.i, %bb.l, %_ZNSolsEPFRSoS_E.exit.i, %.noexc84.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc82.i, %bb.i, %bb.f
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %common.resume

.lr.ph175.i:                                      ; preds = %_ZNSolsEPFRSoS_E.exit62.i, %.lr.ph175.preheader.i
  %indvars.iv199.i = phi i64 [ 0, %.lr.ph175.preheader.i ], [ %indvars.iv.next200.i, %_ZNSolsEPFRSoS_E.exit62.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv199.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !43
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.dm)
          to label %bb.p unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.p:                                             ; preds = %.lr.ph175.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !12
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 240
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !130 ; 6 uses
  %.not.i.i.i108.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i108.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109.i: ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !135
  %.not.i1.i.i110.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i1.i.i110.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 67
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dt)
          to label %.noexc114.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114.i:                                      ; preds = %bb.r
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef signext i8 %i.ea(ptr noundef nonnull align 8 dereferenceable(570) %i.dt, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !107

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111.i: ; preds = %.noexc114.i, %bb.q
  %.0.i.i.i112.i = phi i8 [ %i.dx, %bb.q ], [ %i.eb, %.noexc114.i ]
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i8 noundef signext %.0.i.i.i112.i)
          to label %.noexc116.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111.i
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %_ZNSolsEPFRSoS_E.exit62.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit62.i:                        ; preds = %.noexc116.i
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %indvars.iv.next200.i, %wide.trip.count202.i
  br i1 %exitcond203.not.i, label %.lr.ph177.i, label %.lr.ph175.i, !llvm.loop !109

.lr.ph177.i:                                      ; preds = %_ZNSolsEPFRSoS_E.exit62.i, %_ZNSolsEPFRSoS_E.exit63.i
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i, %_ZNSolsEPFRSoS_E.exit63.i ], [ 0, %_ZNSolsEPFRSoS_E.exit62.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv204.i
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !46
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.ef)
          to label %_ZNSolsEd.exit.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEd.exit.i:                                 ; preds = %.lr.ph177.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !12
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 240
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !130 ; 6 uses
  %.not.i.i.i119.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i119.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120.i: ; preds = %_ZNSolsEd.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !135
  %.not.i1.i.i121.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i1.i.i121.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 67
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122.i

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.em)
          to label %.noexc125.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125.i:                                      ; preds = %bb.t
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !12
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = invoke noundef signext i8 %i.et(ptr noundef nonnull align 8 dereferenceable(570) %i.em, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !107

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122.i: ; preds = %.noexc125.i, %bb.s
  %.0.i.i.i123.i = phi i8 [ %i.eq, %bb.s ], [ %i.eu, %.noexc125.i ]
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i8 noundef signext %.0.i.i.i123.i)
          to label %.noexc127.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122.i
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %_ZNSolsEPFRSoS_E.exit63.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit63.i:                        ; preds = %.noexc127.i
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 1 ; 2 uses
  %exitcond208.not.i = icmp eq i64 %indvars.iv.next205.i, %wide.trip.count202.i
  br i1 %exitcond208.not.i, label %._crit_edge.i, label %.lr.ph177.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %_ZNSolsEPFRSoS_E.exit63.i, %.preheader163.i
  %.not57.i = icmp ne ptr %4, null
  %or.cond.i = and i1 %.not57.i, %i.am
  br i1 %or.cond.i, label %.lr.ph179.preheader.i, label %.loopexit153.i

.lr.ph179.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count212.i = zext nneg i32 %i.y to i64
  br label %.lr.ph179.i

.lr.ph179.i:                                      ; preds = %_ZNSolsEPFRSoS_E.exit65.i, %.lr.ph179.preheader.i
  %indvars.iv209.i = phi i64 [ 0, %.lr.ph179.preheader.i ], [ %indvars.iv.next210.i, %_ZNSolsEPFRSoS_E.exit65.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv209.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !46
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.ey)
          to label %_ZNSolsEd.exit64.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEd.exit64.i:                               ; preds = %.lr.ph179.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !12
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !130 ; 6 uses
  %.not.i.i.i130.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i130.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131.i

.invoke.i:                                        ; preds = %bb.m, %bb.p, %_ZNSolsEd.exit.i, %_ZNSolsEd.exit64.i, %bb.j, %bb.g
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.cont.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131.i: ; preds = %_ZNSolsEd.exit64.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !135
  %.not.i1.i.i132.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i1.i.i132.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 67
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133.i

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ff)
          to label %.noexc136.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc136.i:                                      ; preds = %bb.v
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = invoke noundef signext i8 %i.fm(ptr noundef nonnull align 8 dereferenceable(570) %i.ff, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !107

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133.i: ; preds = %.noexc136.i, %bb.u
  %.0.i.i.i134.i = phi i8 [ %i.fj, %bb.u ], [ %i.fn, %.noexc136.i ]
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i8 noundef signext %.0.i.i.i134.i)
          to label %.noexc138.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133.i
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fo)
          to label %_ZNSolsEPFRSoS_E.exit65.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit65.i:                        ; preds = %.noexc138.i
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count212.i
  br i1 %exitcond213.not.i, label %.loopexit153.i, label %.lr.ph179.i, !llvm.loop !111

.loopexit153.i:                                   ; preds = %_ZNSolsEPFRSoS_E.exit65.i, %._crit_edge.i
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.w

bb.w:                                             ; preds = %.loopexit153.i, %bb.e
  %i.fq = call ptr @getenv(ptr noundef nonnull @.str.103) #20
  %.not58.i = icmp eq ptr %i.fq, null
  br i1 %.not58.i, label %_ZN5IpoptL18write_iajaa_matrixEiPKiS1_PdS2_ii.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.fr = call ptr @getenv(ptr noundef nonnull @.str.100) #20 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  %spec.store.select1.i = select i1 %i.fs, ptr @.str.101, ptr %i.fr
end_hunk_0
