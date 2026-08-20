inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN6vectorIPN10polynomial7manager3imp19newton_interpolatorELb0EjE13expand_vectorEv:bb.a
  store i64 0, ptr %i.aa, align 8, !tbaa !124
  store i8 0, ptr %i.s, align 8, !tbaa !125
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !119   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !125
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @__cxa_free_exception(ptr %i.o) #29
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !386
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10polynomial9var2valueI13mpzzp_manager3mpzED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp11t_eval_coreI13mpzzp_managerEEvPNS_10polynomialERT_RKNS_9var2valueIS6_NS6_7numeralEEEjjjRS9_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class._scoped_numeral.43, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %2, ptr %8, align 8, !tbaa !167
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 13 uses
  store i32 0, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !34
  %i.f = add i32 %4, 1
  %i.g = icmp eq i32 %5, %i.f
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = zext i32 %4 to i64                       ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.k, align 8, !tbaa !43
  store i32 %i.p, ptr %7, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.f

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !145, !range !152, !noundef !51
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN13mpzzp_manager3setER3mpzS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN13mpzzp_manager3setER3mpzS1_.exit unwind label %bb.f

_ZN13mpzzp_manager3setER3mpzS1_.exit:             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.j
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %.not231 = icmp eq i32 %i.ac, 0
  br i1 %.not231, label %.critedge, label %.lr.ph229

.lr.ph229:                                        ; preds = %_ZN13mpzzp_manager3setER3mpzS1_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %wide.trip.count = zext i32 %i.ac to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.lr.ph229, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next.a, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !19 ; 2 uses
  %.not = icmp ugt i32 %i.ag, %6
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21
  %i.ak = load ptr, ptr %3, align 8, !tbaa !126
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.ag)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN13mpzzp_manager5powerERK3mpzjRS0_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc125 unwind label %bb.l

.noexc125:                                        ; preds = %bb.j
  %i.ap = load i8, ptr %i.u, align 8, !tbaa !145, !range !152, !noundef !51
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc125
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit unwind label %bb.l

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %bb.k, %.noexc125
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond265.not, label %.critedge, label %bb.g, !llvm.loop !631

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %3, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %6)
          to label %bb.n unwind label %bb.at

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN13mpzzp_manager5resetER3mpz.exit.preheader unwind label %bb.at

_ZN13mpzzp_manager5resetER3mpz.exit.preheader:    ; preds = %bb.n
  %i.ax = icmp ult i32 %4, %5
  br i1 %i.ax, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN13mpzzp_manager5resetER3mpz.exit.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit
  %.097227 = phi i32 [ %4, %.lr.ph ], [ %.096.lcssa, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit ] ; 7 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !249, !nonnull !51, !align !52
  %i.bc = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bb)
          to label %.noexc128 unwind label %.loopexit

.noexc128:                                        ; preds = %bb.o
  br i1 %i.bc, label %_ZN10polynomial7manager3imp10checkpointEv.exit, label %bb.p

bb.p:                                             ; preds = %.noexc128
  %i.bd = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN10polynomial20polynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN10polynomial20polynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %.noexc129 unwind label %.loopexit.split-lp

.noexc129:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bd) #29
  br label %.body

_ZN10polynomial7manager3imp10checkpointEv.exit:   ; preds = %.noexc128
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !131 ; 4 uses
  %i.bg = zext i32 %.097227 to i64                ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !132 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !27 ; 3 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i, label %bb.s

bb.s:                                             ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit
  %i.bm = add i32 %i.bk, -1                       ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 20 ; 8 uses
  %i.bo = zext i32 %i.bm to i64                   ; 8 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !19
  %i.br = icmp eq i32 %i.bq, %6
  br i1 %i.br, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp ult i32 %i.bk, 8
  br i1 %i.bs, label %.preheader.i.i.preheader, label %.preheader43.i.i

.preheader.i.i.preheader:                         ; preds = %bb.t
  %.not.i.i350 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i350, label %.lr.ph.i, label %.lr.ph352

.preheader.i.i:                                   ; preds = %.lr.ph352
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %.lr.ph352.1

.lr.ph352.1:                                      ; preds = %.preheader.i.i
  %indvars.iv.next.i.i.1 = add nsw i64 %i.bo, -2  ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !19
  %i.bv = icmp eq i32 %i.bu, %6
  br i1 %i.bv, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.1, !llvm.loop !137

.preheader.i.i.1:                                 ; preds = %.lr.ph352.1
  %.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.i.i.1, label %.lr.ph.i, label %.lr.ph352.2

.lr.ph352.2:                                      ; preds = %.preheader.i.i.1
  %indvars.iv.next.i.i.2 = add nsw i64 %i.bo, -3  ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19
  %i.by = icmp eq i32 %i.bx, %6
  br i1 %i.by, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.2, !llvm.loop !137

.preheader.i.i.2:                                 ; preds = %.lr.ph352.2
  %.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 0
  br i1 %.not.i.i.2, label %.lr.ph.i, label %.lr.ph352.3

.lr.ph352.3:                                      ; preds = %.preheader.i.i.2
  %indvars.iv.next.i.i.3 = add nsw i64 %i.bo, -4  ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.3
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !19
  %i.cb = icmp eq i32 %i.ca, %6
  br i1 %i.cb, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.3, !llvm.loop !137

.preheader.i.i.3:                                 ; preds = %.lr.ph352.3
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %.not.i.i.3, label %.lr.ph.i, label %.lr.ph352.4

.lr.ph352.4:                                      ; preds = %.preheader.i.i.3
  %indvars.iv.next.i.i.4 = add nsw i64 %i.bo, -5  ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !19
  %i.ce = icmp eq i32 %i.cd, %6
  br i1 %i.ce, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.4, !llvm.loop !137

.preheader.i.i.4:                                 ; preds = %.lr.ph352.4
  %.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 0
  br i1 %.not.i.i.4, label %.lr.ph.i, label %.lr.ph352.5

.lr.ph352.5:                                      ; preds = %.preheader.i.i.4
  %indvars.iv.next.i.i.5 = add nsw i64 %i.bo, -6  ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.5
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.ch = icmp eq i32 %i.cg, %6
  br i1 %i.ch, label %.thread.loopexit.split.loop.exit.i.i, label %.lr.ph.i, !llvm.loop !137

.lr.ph352:                                        ; preds = %.preheader.i.i.preheader
  %indvars.iv.next.i.i = add nsw i64 %i.bo, -1    ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %i.ck = icmp eq i32 %i.cj, %6
  br i1 %i.ck, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i, !llvm.loop !137

.preheader43.i.i:                                 ; preds = %bb.t, %bb.x
  %.026.i.i = phi i32 [ %.127.i.i, %bb.x ], [ 0, %bb.t ] ; 3 uses
  %.0.i.i = phi i32 [ %.1.i.i, %bb.x ], [ %i.bm, %bb.t ] ; 2 uses
  %i.cl = sub nsw i32 %.0.i.i, %.026.i.i
  %i.cm = sdiv i32 %i.cl, 2
  %i.cn = add nsw i32 %i.cm, %.026.i.i            ; 4 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !19 ; 2 uses
  %i.cr = icmp ugt i32 %6, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader43.i.i
  %i.cs = add nsw i32 %i.cn, 1
  br label %bb.x

bb.v:                                             ; preds = %.preheader43.i.i
  %i.ct = icmp ult i32 %6, %i.cq
  br i1 %i.ct, label %bb.w, label %_ZNK10polynomial8monomial8index_ofEj.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cu = add nsw i32 %i.cn, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.127.i.i = phi i32 [ %i.cs, %bb.u ], [ %.026.i.i, %bb.w ] ; 2 uses
  %.1.i.i = phi i32 [ %.0.i.i, %bb.u ], [ %i.cu, %bb.w ] ; 2 uses
  %.not42.i.i = icmp sgt i32 %.127.i.i, %.1.i.i
  br i1 %.not42.i.i, label %.lr.ph.i, label %.preheader43.i.i, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i:             ; preds = %.lr.ph352.5, %.lr.ph352.4, %.lr.ph352.3, %.lr.ph352.2, %.lr.ph352.1, %.lr.ph352
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i, %.lr.ph352 ], [ %indvars.iv.next.i.i.1, %.lr.ph352.1 ], [ %indvars.iv.next.i.i.2, %.lr.ph352.2 ], [ %indvars.iv.next.i.i.3, %.lr.ph352.3 ], [ %indvars.iv.next.i.i.4, %.lr.ph352.4 ], [ %indvars.iv.next.i.i.5, %.lr.ph352.5 ]
  %indvars.le.i.i = trunc nuw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i

_ZNK10polynomial8monomial8index_ofEj.exit.i:      ; preds = %bb.v, %.thread.loopexit.split.loop.exit.i.i
  %.4.i.i = phi i32 [ %indvars.le.i.i, %.thread.loopexit.split.loop.exit.i.i ], [ %i.cn, %bb.v ] ; 2 uses
  %i.cv = icmp eq i32 %.4.i.i, -1
  br i1 %i.cv, label %.lr.ph.i, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.s, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.bo, %bb.s ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.pre-phi.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21 ; 3 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  %i.da = add i32 %.097227, 1
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 %i.da) ; 3 uses
  %9 = add i32 %umax, -1                          ; 2 uses
  %exitcond.not362 = icmp eq i32 %.097227, %9
  br i1 %exitcond.not362, label %_ZNK10polynomial8monomial9degree_ofEj.exit154._crit_edge, label %.lr.ph364

.lr.ph.i:                                         ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZNK10polynomial8monomial9degree_ofEj.exit, %.preheader.i.i.preheader, %bb.x, %.lr.ph352.5, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4
  %wide.trip.count.i = zext i32 %5 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ar, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bg, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ar ] ; 2 uses
  %.01228.i = phi i32 [ -1, %.lr.ph.i ], [ %i.fl, %bb.ar ] ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !132 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !27 ; 5 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = icmp ult i32 %i.de, 8
  br i1 %i.dg, label %.preheader.i.i.i, label %bb.am

.preheader.i.i.i:                                 ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 7 uses
  %i.di = zext nneg i32 %i.de to i64              ; 7 uses
  %i.dj = add nsw i64 %i.di, -1                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !19 ; 2 uses
  %i.dm = icmp ult i32 %i.dl, %6
  br i1 %i.dm, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.aa, !llvm.loop !434

bb.aa:                                            ; preds = %.preheader.i.i.i
  %.not41.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not41.i.i.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = add nsw i64 %i.di, -2                   ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19 ; 2 uses
  %i.dq = icmp ult i32 %i.dp, %6
  br i1 %i.dq, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ac, !llvm.loop !434

bb.ac:                                            ; preds = %bb.ab
  %.not41.i.i.i.1 = icmp eq i64 %i.dn, 0
  br i1 %.not41.i.i.i.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = add nsw i64 %i.di, -3                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !19 ; 2 uses
  %i.du = icmp ult i32 %i.dt, %6
  br i1 %i.du, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ae, !llvm.loop !434

bb.ae:                                            ; preds = %bb.ad
  %.not41.i.i.i.2 = icmp eq i64 %i.dr, 0
  br i1 %.not41.i.i.i.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = add nsw i64 %i.di, -4                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !19 ; 2 uses
  %i.dy = icmp ult i32 %i.dx, %6
  br i1 %i.dy, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ag, !llvm.loop !434

bb.ag:                                            ; preds = %bb.af
  %.not41.i.i.i.3 = icmp eq i64 %i.dv, 0
  br i1 %.not41.i.i.i.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = add nsw i64 %i.di, -5                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !19 ; 2 uses
  %i.ec = icmp ult i32 %i.eb, %6
  br i1 %i.ec, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ai, !llvm.loop !434

bb.ai:                                            ; preds = %bb.ah
  %.not41.i.i.i.4 = icmp eq i64 %i.dz, 0
  br i1 %.not41.i.i.i.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = add nsw i64 %i.di, -6                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !19 ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %6
  br i1 %i.eg, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ak, !llvm.loop !434

bb.ak:                                            ; preds = %bb.aj
  %.not41.i.i.i.5 = icmp eq i64 %i.ed, 0
  br i1 %.not41.i.i.i.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = getelementptr [8 x i8], ptr %i.dh, i64 %i.di
  %i.ei = getelementptr i8, ptr %i.eh, i64 -56
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !19 ; 2 uses
  %i.ek = icmp ult i32 %i.ej, %6
  br i1 %i.ek, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, !llvm.loop !434

bb.am:                                            ; preds = %bb.z
  %i.el = add i32 %i.de, -1                       ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 4 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !19
  %.not.i.i.i = icmp ugt i32 %6, %i.en
  br i1 %.not.i.i.i, label %bb.an, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.eo = zext i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !19 ; 3 uses
  %i.er = icmp ugt i32 %6, %i.eq
  br i1 %i.er, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = icmp eq i32 %6, %i.eq
  br i1 %i.es, label %bb.ap, label %.lr.ph.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.et = add i32 %i.de, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %bb.aq
  %.048.i.i.i = phi i32 [ %..0.i.i.i, %bb.aq ], [ %i.el, %bb.ao ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029..i.i.i, %bb.aq ], [ 0, %bb.ao ] ; 3 uses
  %i.eu = sub nsw i32 %.048.i.i.i, %.02947.i.i.i
  %i.ev = sdiv i32 %i.eu, 2
  %i.ew = add nsw i32 %i.ev, %.02947.i.i.i        ; 4 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i = icmp eq i32 %i.ez, %6
  br i1 %.not40.i.i.i, label %.thread.i.i.i, label %bb.aq

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.fa = add nsw i32 %i.ew, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.fb = icmp ult i32 %6, %i.ez                  ; 2 uses
  %.029..i.i.i = select i1 %i.fb, i32 %.02947.i.i.i, i32 %i.ew ; 3 uses
  %..0.i.i.i = select i1 %i.fb, i32 %i.ew, i32 %.048.i.i.i ; 2 uses
  %i.fc = add nsw i32 %.029..i.i.i, 1
  %i.fd = icmp eq i32 %..0.i.i.i, %i.fc
  br i1 %i.fd, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, label %.lr.ph.i.i.i

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i: ; preds = %.preheader.i.i.i, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an
  %.4.i.i.ph.i = phi i32 [ %i.eq, %bb.an ], [ %i.dl, %.preheader.i.i.i ], [ %i.dp, %bb.ab ], [ %i.dt, %bb.ad ], [ %i.dx, %bb.af ], [ %i.eb, %bb.ah ], [ %i.ef, %bb.aj ], [ %i.ej, %bb.al ] ; 2 uses
  %i.fe = icmp eq i32 %.01228.i, -1
  %i.ff = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i, i32 %.01228.i)
  %spec.select24.i = select i1 %i.fe, i32 %.4.i.i.ph.i, i32 %i.ff
  br label %bb.ar

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i: ; preds = %bb.aq, %.thread.i.i.i, %bb.ap
  %.sink.i.i.i = phi i32 [ %i.fa, %.thread.i.i.i ], [ %i.et, %bb.ap ], [ %.029..i.i.i, %bb.aq ]
  %i.fg = zext i32 %.sink.i.i.i to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !19
  %.fr.i = freeze i32 %i.fi                       ; 3 uses
  %.not.i = icmp eq i32 %.fr.i, -1
  %i.fj = icmp eq i32 %.01228.i, -1
  %i.fk = call i32 @llvm.umax.i32(i32 %.fr.i, i32 %.01228.i)
  %spec.select.i = select i1 %i.fj, i32 %.fr.i, i32 %i.fk
  br i1 %.not.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ar

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i: ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.al, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %bb.am, %bb.y
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i
  %i.fl = phi i32 [ %.01228.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i ], [ %spec.select.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i ], [ %spec.select24.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit, label %bb.y, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit: ; preds = %bb.ar
  %i.fm = icmp eq i32 %i.fl, -1
  br i1 %i.fm, label %bb.as, label %bb.av

bb.as:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  %i.fn = load ptr, ptr %i.az, align 8, !tbaa !134
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.bg
  %i.fp = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc130 unwind label %bb.au

.noexc130:                                        ; preds = %bb.as
  %i.fq = load i8, ptr %i.ba, align 8, !tbaa !145, !range !152, !noundef !51
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %.critedge, label %.invoke

bb.at:                                            ; preds = %bb.n, %bb.m
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %.invoke, %bb.aw, %bb.as, %bb.av
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  invoke void @_ZN10polynomial7manager3imp11t_eval_coreI13mpzzp_managerEEvPNS_10polynomialERT_RKNS_9var2valueIS6_NS6_7numeralEEEjjjRS9_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.097227, i32 noundef %5, i32 noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.fu = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc132 unwind label %bb.au

.noexc132:                                        ; preds = %bb.aw
  %i.fv = load i8, ptr %i.ba, align 8, !tbaa !145, !range !152, !noundef !51
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.critedge, label %.invoke

.invoke:                                          ; preds = %.noexc130, %.noexc132
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.critedge unwind label %bb.au

.preheader:                                       ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit154
  %exitcond.not = icmp eq i32 %.096363, %9
  br i1 %exitcond.not, label %_ZNK10polynomial8monomial9degree_ofEj.exit154._crit_edge, label %.lr.ph364

.lr.ph364:                                        ; preds = %.preheader.preheader, %.preheader
  %.096363.in = phi i32 [ %.096363, %.preheader ], [ %.097227, %.preheader.preheader ]
  %.096363 = add i32 %.096363.in, 1               ; 4 uses
  %10 = zext i32 %.096363 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %10
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !132 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !27 ; 3 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph364
  %i.gc = add i32 %i.ga, -1                       ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 20 ; 8 uses
  %i.ge = zext i32 %i.gc to i64                   ; 8 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !19
  %i.gh = icmp eq i32 %i.gg, %6
  br i1 %i.gh, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i142, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = icmp ult i32 %i.ga, 8
  br i1 %i.gi, label %.preheader.i.i148.preheader, label %.preheader43.i.i135

.preheader.i.i148.preheader:                      ; preds = %bb.ay
  %.not.i.i150358 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i150358, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %.lr.ph360

.preheader.i.i148:                                ; preds = %.lr.ph360
  %.not.i.i150 = icmp eq i64 %indvars.iv.next.i.i151, 0
  br i1 %.not.i.i150, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %.lr.ph360.1

.lr.ph360.1:                                      ; preds = %.preheader.i.i148
  %indvars.iv.next.i.i151.1 = add nsw i64 %i.ge, -2 ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next.i.i151.1
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !19
  %i.gl = icmp eq i32 %i.gk, %6
  br i1 %i.gl, label %.thread.loopexit.split.loop.exit.i.i152, label %.preheader.i.i148.1, !llvm.loop !137

.preheader.i.i148.1:                              ; preds = %.lr.ph360.1
  %.not.i.i150.1 = icmp eq i64 %indvars.iv.next.i.i151.1, 0
  br i1 %.not.i.i150.1, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %.lr.ph360.2

.lr.ph360.2:                                      ; preds = %.preheader.i.i148.1
  %indvars.iv.next.i.i151.2 = add nsw i64 %i.ge, -3 ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next.i.i151.2
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !19
  %i.go = icmp eq i32 %i.gn, %6
  br i1 %i.go, label %.thread.loopexit.split.loop.exit.i.i152, label %.preheader.i.i148.2, !llvm.loop !137

.preheader.i.i148.2:                              ; preds = %.lr.ph360.2
  %.not.i.i150.2 = icmp eq i64 %indvars.iv.next.i.i151.2, 0
  br i1 %.not.i.i150.2, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %.lr.ph360.3

.lr.ph360.3:                                      ; preds = %.preheader.i.i148.2
  %indvars.iv.next.i.i151.3 = add nsw i64 %i.ge, -4 ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next.i.i151.3
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !19
  %i.gr = icmp eq i32 %i.gq, %6
  br i1 %i.gr, label %.thread.loopexit.split.loop.exit.i.i152, label %.preheader.i.i148.3, !llvm.loop !137

.preheader.i.i148.3:                              ; preds = %.lr.ph360.3
  %.not.i.i150.3 = icmp eq i64 %indvars.iv.next.i.i151.3, 0
  br i1 %.not.i.i150.3, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %.lr.ph360.4

.lr.ph360.4:                                      ; preds = %.preheader.i.i148.3
  %indvars.iv.next.i.i151.4 = add nsw i64 %i.ge, -5 ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next.i.i151.4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !19
  %i.gu = icmp eq i32 %i.gt, %6
  br i1 %i.gu, label %.thread.loopexit.split.loop.exit.i.i152, label %.preheader.i.i148.4, !llvm.loop !137

.preheader.i.i148.4:                              ; preds = %.lr.ph360.4
  %.not.i.i150.4 = icmp eq i64 %indvars.iv.next.i.i151.4, 0
  br i1 %.not.i.i150.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %.lr.ph360.5

.lr.ph360.5:                                      ; preds = %.preheader.i.i148.4
  %indvars.iv.next.i.i151.5 = add nsw i64 %i.ge, -6 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next.i.i151.5
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !19
  %i.gx = icmp eq i32 %i.gw, %6
  br i1 %i.gx, label %.thread.loopexit.split.loop.exit.i.i152, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, !llvm.loop !137

.lr.ph360:                                        ; preds = %.preheader.i.i148.preheader
  %indvars.iv.next.i.i151 = add nsw i64 %i.ge, -1 ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next.i.i151
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !19
  %i.ha = icmp eq i32 %i.gz, %6
  br i1 %i.ha, label %.thread.loopexit.split.loop.exit.i.i152, label %.preheader.i.i148, !llvm.loop !137

.preheader43.i.i135:                              ; preds = %bb.ay, %bb.bc
  %.026.i.i136 = phi i32 [ %.127.i.i145, %bb.bc ], [ 0, %bb.ay ] ; 3 uses
  %.0.i.i137 = phi i32 [ %.1.i.i146, %bb.bc ], [ %i.gc, %bb.ay ] ; 2 uses
  %i.hb = sub nsw i32 %.0.i.i137, %.026.i.i136
  %i.hc = sdiv i32 %i.hb, 2
  %i.hd = add nsw i32 %i.hc, %.026.i.i136         ; 4 uses
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19 ; 2 uses
  %i.hh = icmp ugt i32 %6, %i.hg
  br i1 %i.hh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.preheader43.i.i135
  %i.hi = add nsw i32 %i.hd, 1
  br label %bb.bc

bb.ba:                                            ; preds = %.preheader43.i.i135
  %i.hj = icmp ult i32 %6, %i.hg
  br i1 %i.hj, label %bb.bb, label %_ZNK10polynomial8monomial8index_ofEj.exit.i138

bb.bb:                                            ; preds = %bb.ba
  %i.hk = add nsw i32 %i.hd, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.127.i.i145 = phi i32 [ %i.hi, %bb.az ], [ %.026.i.i136, %bb.bb ] ; 2 uses
  %.1.i.i146 = phi i32 [ %.0.i.i137, %bb.az ], [ %i.hk, %bb.bb ] ; 2 uses
  %.not42.i.i147 = icmp sgt i32 %.127.i.i145, %.1.i.i146
  br i1 %.not42.i.i147, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %.preheader43.i.i135, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i152:          ; preds = %.lr.ph360.5, %.lr.ph360.4, %.lr.ph360.3, %.lr.ph360.2, %.lr.ph360.1, %.lr.ph360
  %indvars.iv.next.i.i151.lcssa = phi i64 [ %indvars.iv.next.i.i151, %.lr.ph360 ], [ %indvars.iv.next.i.i151.1, %.lr.ph360.1 ], [ %indvars.iv.next.i.i151.2, %.lr.ph360.2 ], [ %indvars.iv.next.i.i151.3, %.lr.ph360.3 ], [ %indvars.iv.next.i.i151.4, %.lr.ph360.4 ], [ %indvars.iv.next.i.i151.5, %.lr.ph360.5 ]
  %indvars.le.i.i153 = trunc nuw i64 %indvars.iv.next.i.i151.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i138

_ZNK10polynomial8monomial8index_ofEj.exit.i138:   ; preds = %bb.ba, %.thread.loopexit.split.loop.exit.i.i152
  %.4.i.i139 = phi i32 [ %indvars.le.i.i153, %.thread.loopexit.split.loop.exit.i.i152 ], [ %i.hd, %bb.ba ] ; 2 uses
  %i.hl = icmp eq i32 %.4.i.i139, -1
  br i1 %i.hl, label %_ZNK10polynomial8monomial9degree_ofEj.exit154, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i140

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i140: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i138
  %.pre.i141 = zext i32 %.4.i.i139 to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i142

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i142: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i140, %bb.ax
  %.pre-phi.i143 = phi i64 [ %.pre.i141, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i140 ], [ %i.ge, %bb.ax ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.pre-phi.i143
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !21
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit154

_ZNK10polynomial8monomial9degree_ofEj.exit154:    ; preds = %bb.bc, %.preheader.i.i148, %.preheader.i.i148.1, %.preheader.i.i148.2, %.preheader.i.i148.3, %.preheader.i.i148.4, %.lr.ph360.5, %.preheader.i.i148.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i142, %_ZNK10polynomial8monomial8index_ofEj.exit.i138, %.lr.ph364
  %.0.i144 = phi i32 [ %i.ho, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i142 ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i138 ], [ 0, %.lr.ph364 ], [ 0, %.preheader.i.i148.preheader ], [ 0, %.preheader.i.i148 ], [ 0, %.lr.ph360.5 ], [ 0, %.preheader.i.i148.4 ], [ 0, %.preheader.i.i148.3 ], [ 0, %.preheader.i.i148.2 ], [ 0, %.preheader.i.i148.1 ], [ 0, %bb.bc ] ; 2 uses
  %i.hp = icmp ult i32 %.0.i144, %i.cy
  br i1 %i.hp, label %_ZNK10polynomial8monomial9degree_ofEj.exit154._crit_edge, label %.preheader

_ZNK10polynomial8monomial9degree_ofEj.exit154._crit_edge: ; preds = %.preheader, %_ZNK10polynomial8monomial9degree_ofEj.exit154, %.preheader.preheader
  %.096.lcssa = phi i32 [ %umax, %.preheader.preheader ], [ %umax, %.preheader ], [ %.096363, %_ZNK10polynomial8monomial9degree_ofEj.exit154 ] ; 5 uses
  %.2 = phi i32 [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ %.0.i144, %_ZNK10polynomial8monomial9degree_ofEj.exit154 ]
  %i.hq = icmp ult i32 %.097227, %.096.lcssa
  br i1 %i.hq, label %.lr.ph.i156, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182.thread

.lr.ph.i156:                                      ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit154._crit_edge
  %wide.trip.count.i157 = zext i32 %.096.lcssa to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bw, %.lr.ph.i156
  %indvars.iv.i158 = phi i64 [ %i.bg, %.lr.ph.i156 ], [ %indvars.iv.next.i162, %bb.bw ] ; 2 uses
  %.01228.i159 = phi i32 [ -1, %.lr.ph.i156 ], [ %i.kb, %bb.bw ] ; 5 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i158
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !132 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !27 ; 5 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hw = icmp ult i32 %i.hu, 8
  br i1 %i.hw, label %.preheader.i.i.i179, label %bb.br

.preheader.i.i.i179:                              ; preds = %bb.be
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 20 ; 7 uses
  %i.hy = zext nneg i32 %i.hu to i64              ; 7 uses
  %i.hz = add nsw i64 %i.hy, -1                   ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !19 ; 2 uses
  %i.ic = icmp ult i32 %i.ib, %6
  br i1 %i.ic, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %bb.bf, !llvm.loop !434

bb.bf:                                            ; preds = %.preheader.i.i.i179
  %.not41.i.i.i181 = icmp eq i64 %i.hz, 0
  br i1 %.not41.i.i.i181, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.id = add nsw i64 %i.hy, -2                   ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !19 ; 2 uses
  %i.ig = icmp ult i32 %i.if, %6
  br i1 %i.ig, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %bb.bh, !llvm.loop !434

bb.bh:                                            ; preds = %bb.bg
  %.not41.i.i.i181.1 = icmp eq i64 %i.id, 0
  br i1 %.not41.i.i.i181.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ih = add nsw i64 %i.hy, -3                   ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !19 ; 2 uses
  %i.ik = icmp ult i32 %i.ij, %6
  br i1 %i.ik, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %bb.bj, !llvm.loop !434

bb.bj:                                            ; preds = %bb.bi
  %.not41.i.i.i181.2 = icmp eq i64 %i.ih, 0
  br i1 %.not41.i.i.i181.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.il = add nsw i64 %i.hy, -4                   ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !19 ; 2 uses
  %i.io = icmp ult i32 %i.in, %6
  br i1 %i.io, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %bb.bl, !llvm.loop !434

bb.bl:                                            ; preds = %bb.bk
  %.not41.i.i.i181.3 = icmp eq i64 %i.il, 0
  br i1 %.not41.i.i.i181.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ip = add nsw i64 %i.hy, -5                   ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !19 ; 2 uses
  %i.is = icmp ult i32 %i.ir, %6
  br i1 %i.is, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %bb.bn, !llvm.loop !434

bb.bn:                                            ; preds = %bb.bm
  %.not41.i.i.i181.4 = icmp eq i64 %i.ip, 0
  br i1 %.not41.i.i.i181.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.it = add nsw i64 %i.hy, -6                   ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !19 ; 2 uses
  %i.iw = icmp ult i32 %i.iv, %6
  br i1 %i.iw, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %bb.bp, !llvm.loop !434

bb.bp:                                            ; preds = %bb.bo
  %.not41.i.i.i181.5 = icmp eq i64 %i.it, 0
  br i1 %.not41.i.i.i181.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ix = getelementptr [8 x i8], ptr %i.hx, i64 %i.hy
  %i.iy = getelementptr i8, ptr %i.ix, i64 -56
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !19 ; 2 uses
  %i.ja = icmp ult i32 %i.iz, %6
  br i1 %i.ja, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, !llvm.loop !434

bb.br:                                            ; preds = %bb.be
  %i.jb = add i32 %i.hu, -1                       ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hs, i64 20 ; 4 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !19
  %.not.i.i.i160 = icmp ugt i32 %6, %i.jd
  br i1 %.not.i.i.i160, label %bb.bs, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161

bb.bs:                                            ; preds = %bb.br
  %i.je = zext i32 %i.jb to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !19 ; 3 uses
  %i.jh = icmp ugt i32 %6, %i.jg
  br i1 %i.jh, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ji = icmp eq i32 %6, %i.jg
  br i1 %i.ji, label %bb.bu, label %.lr.ph.i.i.i164

bb.bu:                                            ; preds = %bb.bt
  %i.jj = add i32 %i.hu, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i170

.lr.ph.i.i.i164:                                  ; preds = %bb.bt, %bb.bv
  %.048.i.i.i165 = phi i32 [ %..0.i.i.i169, %bb.bv ], [ %i.jb, %bb.bt ] ; 2 uses
  %.02947.i.i.i166 = phi i32 [ %.029..i.i.i168, %bb.bv ], [ 0, %bb.bt ] ; 3 uses
  %i.jk = sub nsw i32 %.048.i.i.i165, %.02947.i.i.i166
  %i.jl = sdiv i32 %i.jk, 2
  %i.jm = add nsw i32 %i.jl, %.02947.i.i.i166     ; 4 uses
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i167 = icmp eq i32 %i.jp, %6
  br i1 %.not40.i.i.i167, label %.thread.i.i.i175, label %bb.bv

.thread.i.i.i175:                                 ; preds = %.lr.ph.i.i.i164
  %i.jq = add nsw i32 %i.jm, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i170

bb.bv:                                            ; preds = %.lr.ph.i.i.i164
  %i.jr = icmp ult i32 %6, %i.jp                  ; 2 uses
  %.029..i.i.i168 = select i1 %i.jr, i32 %.02947.i.i.i166, i32 %i.jm ; 3 uses
  %..0.i.i.i169 = select i1 %i.jr, i32 %i.jm, i32 %.048.i.i.i165 ; 2 uses
  %i.js = add nsw i32 %.029..i.i.i168, 1
  %i.jt = icmp eq i32 %..0.i.i.i169, %i.js
  br i1 %i.jt, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i170, label %.lr.ph.i.i.i164

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176: ; preds = %.preheader.i.i.i179, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs
  %.4.i.i.ph.i177 = phi i32 [ %i.jg, %bb.bs ], [ %i.ib, %.preheader.i.i.i179 ], [ %i.if, %bb.bg ], [ %i.ij, %bb.bi ], [ %i.in, %bb.bk ], [ %i.ir, %bb.bm ], [ %i.iv, %bb.bo ], [ %i.iz, %bb.bq ] ; 2 uses
  %i.ju = icmp eq i32 %.01228.i159, -1
  %i.jv = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i177, i32 %.01228.i159)
  %spec.select24.i178 = select i1 %i.ju, i32 %.4.i.i.ph.i177, i32 %i.jv
  br label %bb.bw

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i170: ; preds = %bb.bv, %.thread.i.i.i175, %bb.bu
  %.sink.i.i.i171 = phi i32 [ %i.jq, %.thread.i.i.i175 ], [ %i.jj, %bb.bu ], [ %.029..i.i.i168, %bb.bv ]
  %i.jw = zext i32 %.sink.i.i.i171 to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !19
  %.fr.i172 = freeze i32 %i.jy                    ; 3 uses
  %.not.i173 = icmp eq i32 %.fr.i172, -1
  %i.jz = icmp eq i32 %.01228.i159, -1
  %i.ka = call i32 @llvm.umax.i32(i32 %.fr.i172, i32 %.01228.i159)
  %spec.select.i174 = select i1 %i.jz, i32 %.fr.i172, i32 %i.ka
  br i1 %.not.i173, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, label %bb.bw

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161: ; preds = %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.bq, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i170, %bb.br, %bb.bd
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i170, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176
  %i.kb = phi i32 [ %.01228.i159, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i161 ], [ %spec.select.i174, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i170 ], [ %spec.select24.i178, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i176 ] ; 3 uses
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i157
  br i1 %exitcond.not.i163, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182, label %bb.bd, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182: ; preds = %bb.bw
  %i.kc = icmp eq i32 %i.kb, -1
  br i1 %i.kc, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182.thread, label %bb.cb

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182.thread: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit154._crit_edge, %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182
  %i.kd = load ptr, ptr %i.az, align 8, !tbaa !134
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.bg ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i8, ptr %i.kf, align 4
  %i.kh = and i8 %i.kg, 1
  %i.ki = icmp eq i8 %i.kh, 0
  br i1 %i.ki, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182.thread
  %i.kj = load i32, ptr %i.ke, align 8, !tbaa !43
  store i32 %i.kj, ptr %i.a, align 8, !tbaa !43
  %i.kk = load i8, ptr %i.b, align 4
  %i.kl = and i8 %i.kk, -2
  store i8 %i.kl, ptr %i.b, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i183

bb.by:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit182.thread
  %i.km = load ptr, ptr %2, align 8, !tbaa !47, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.km, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ke)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i183 unwind label %bb.ca

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i183:  ; preds = %bb.by, %bb.bx
  %i.kn = load i8, ptr %i.ba, align 8, !tbaa !145, !range !152, !noundef !51
  %i.ko = trunc nuw i8 %i.kn to i1
end_hunk_0
begin_hunk_1_@_ZN10polynomial7manager3imp6t_evalI13mpbqi_managerEEvPNS_10polynomialERKNS_9var2valueIT_NS7_7numeralEEERS8_:bb.a
  %i.bk = or i32 %i.bj, -2147483648
  store i32 %i.bk, ptr %i.at, align 4
  %i.bl = icmp eq i32 %.pre.pre, 0
  br i1 %i.bl, label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread

_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread16, %.thread, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread24, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit
  %i.bm = phi i32 [ 1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread24 ], [ %.pre.pre, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.f, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread16 ], [ 1, %.thread ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !131
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !132 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !27 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread
  %i.bt = add i32 %i.br, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19
  br label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit

_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit: ; preds = %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread, %bb.i
  %i.by = phi i32 [ 0, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.bm, %bb.i ], [ %i.bm, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread ]
  %.0.i = phi i32 [ -1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.bx, %bb.i ], [ -1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread ]
  tail call void @_ZN10polynomial7manager3imp11t_eval_coreI13mpbqi_managerEEvPNS_10polynomialERT_RKNS_9var2valueIS6_NS6_7numeralEEEjjjRS9_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef %i.by, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, %_ZN13mpbqi_manager3setERN22basic_interval_managerI12mpbq_managerLb0EE8intervalERK3mpz.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp11t_eval_coreI13mpbqi_managerEEvPNS_10polynomialERT_RKNS_9var2valueIS6_NS6_7numeralEEEjjjRS9_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(48) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class._scoped_numeral.93, align 8  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %2, ptr %8, align 8, !tbaa !796
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 12 uses
  store i32 0, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  store i32 0, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -4
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !795
  %i.m = add i32 %4, 1
  %i.n = icmp eq i32 %5, %i.m
  br i1 %i.n, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.q = zext i32 %4 to i64                       ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.r, align 8, !tbaa !43
  store i32 %i.w, ptr %7, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, -2
  store i8 %i.z, ptr %i.x, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i

bb.d:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !793, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i unwind label %bb.h

_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i:        ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !795
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ae = load i8, ptr %i.s, align 4
  %i.af = and i8 %i.ae, 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !43
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, -2
  store i8 %i.ak, ptr %i.ai, align 4
  br label %bb.g

bb.f:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !793, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %i.an, align 8, !tbaa !795
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !131
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.q
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !132 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27 ; 2 uses
  %.not224 = icmp eq i32 %i.at, 0
  br i1 %.not224, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %wide.trip.count = zext i32 %i.at to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.a, %bb.m ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19 ; 2 uses
  %.not = icmp ugt i32 %i.ax, %6
  br i1 %.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21
  %i.bb = load ptr, ptr %3, align 8, !tbaa !126
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef nonnull align 8 dereferenceable(48) ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.ax)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN22basic_interval_managerI12mpbq_managerLb0EE5powerERKNS1_8intervalEjRS2_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i32 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN22basic_interval_managerI12mpbq_managerLb0EE3mulERKNS1_8intervalES4_RS2_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond256.not, label %.critedge, label %bb.i, !llvm.loop !798

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.a
  %i.bg = load ptr, ptr %3, align 8, !tbaa !126
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef nonnull align 8 dereferenceable(48) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %6)
          to label %bb.p unwind label %bb.av

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !793, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bl, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc125 unwind label %bb.av

.noexc125:                                        ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.bm, align 8, !tbaa !795
  %i.bn = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !793, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bp, ptr noundef nonnull align 8 dereferenceable(20) %i.bo)
          to label %_ZN22basic_interval_managerI12mpbq_managerLb0EE5resetERNS1_8intervalE.exit unwind label %bb.av

_ZN22basic_interval_managerI12mpbq_managerLb0EE5resetERNS1_8intervalE.exit: ; preds = %.noexc125
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %i.bq, align 8, !tbaa !795
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %_ZN13mpbqi_manager3addERKN22basic_interval_managerI12mpbq_managerLb0EE8intervalERK3mpzRS3_.exit

_ZN13mpbqi_manager3addERKN22basic_interval_managerI12mpbq_managerLb0EE8intervalERK3mpzRS3_.exit: ; preds = %bb.cg, %_ZN22basic_interval_managerI12mpbq_managerLb0EE5resetERNS1_8intervalE.exit
  %.097 = phi i32 [ %4, %_ZN22basic_interval_managerI12mpbq_managerLb0EE5resetERNS1_8intervalE.exit ], [ %.096.lcssa, %bb.cg ] ; 8 uses
  %i.bt = icmp ult i32 %.097, %5
  br i1 %i.bt, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZN13mpbqi_manager3addERKN22basic_interval_managerI12mpbq_managerLb0EE8intervalERK3mpzRS3_.exit
  %i.bu = load ptr, ptr %0, align 8, !tbaa !249, !nonnull !51, !align !52
  %i.bv = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bu)
          to label %.noexc127 unwind label %.loopexit

.noexc127:                                        ; preds = %bb.q
  br i1 %i.bv, label %_ZN10polynomial7manager3imp10checkpointEv.exit, label %bb.r

bb.r:                                             ; preds = %.noexc127
  %i.bw = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN10polynomial20polynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTIN10polynomial20polynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %.noexc128 unwind label %.loopexit.split-lp

.noexc128:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bw) #29
  br label %.body

_ZN10polynomial7manager3imp10checkpointEv.exit:   ; preds = %.noexc127
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !131 ; 4 uses
  %i.bz = zext i32 %.097 to i64                   ; 5 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !132 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !27 ; 3 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit
  %i.cf = add i32 %i.cd, -1                       ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 20 ; 8 uses
  %i.ch = zext i32 %i.cf to i64                   ; 8 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %i.ck = icmp eq i32 %i.cj, %6
  br i1 %i.ck, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = icmp ult i32 %i.cd, 8
  br i1 %i.cl, label %.preheader.i.i.preheader, label %.preheader43.i.i

.preheader.i.i.preheader:                         ; preds = %bb.v
  %.not.i.i336 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i336, label %.lr.ph.i, label %.lr.ph338

.preheader.i.i:                                   ; preds = %.lr.ph338
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %.lr.ph338.1

.lr.ph338.1:                                      ; preds = %.preheader.i.i
  %indvars.iv.next.i.i.1 = add nsw i64 %i.ch, -2  ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.1
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !19
  %i.co = icmp eq i32 %i.cn, %6
  br i1 %i.co, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.1, !llvm.loop !137

.preheader.i.i.1:                                 ; preds = %.lr.ph338.1
  %.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.i.i.1, label %.lr.ph.i, label %.lr.ph338.2

.lr.ph338.2:                                      ; preds = %.preheader.i.i.1
  %indvars.iv.next.i.i.2 = add nsw i64 %i.ch, -3  ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.2
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !19
  %i.cr = icmp eq i32 %i.cq, %6
  br i1 %i.cr, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.2, !llvm.loop !137

.preheader.i.i.2:                                 ; preds = %.lr.ph338.2
  %.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 0
  br i1 %.not.i.i.2, label %.lr.ph.i, label %.lr.ph338.3

.lr.ph338.3:                                      ; preds = %.preheader.i.i.2
  %indvars.iv.next.i.i.3 = add nsw i64 %i.ch, -4  ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.3
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.cu = icmp eq i32 %i.ct, %6
  br i1 %i.cu, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.3, !llvm.loop !137

.preheader.i.i.3:                                 ; preds = %.lr.ph338.3
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %.not.i.i.3, label %.lr.ph.i, label %.lr.ph338.4

.lr.ph338.4:                                      ; preds = %.preheader.i.i.3
  %indvars.iv.next.i.i.4 = add nsw i64 %i.ch, -5  ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !19
  %i.cx = icmp eq i32 %i.cw, %6
  br i1 %i.cx, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.4, !llvm.loop !137

.preheader.i.i.4:                                 ; preds = %.lr.ph338.4
  %.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 0
  br i1 %.not.i.i.4, label %.lr.ph.i, label %.lr.ph338.5

.lr.ph338.5:                                      ; preds = %.preheader.i.i.4
  %indvars.iv.next.i.i.5 = add nsw i64 %i.ch, -6  ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.5
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !19
  %i.da = icmp eq i32 %i.cz, %6
  br i1 %i.da, label %.thread.loopexit.split.loop.exit.i.i, label %.lr.ph.i, !llvm.loop !137

.lr.ph338:                                        ; preds = %.preheader.i.i.preheader
  %indvars.iv.next.i.i = add nsw i64 %i.ch, -1    ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !19
  %i.dd = icmp eq i32 %i.dc, %6
  br i1 %i.dd, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i, !llvm.loop !137

.preheader43.i.i:                                 ; preds = %bb.v, %bb.z
  %.026.i.i = phi i32 [ %.127.i.i, %bb.z ], [ 0, %bb.v ] ; 3 uses
  %.0.i.i = phi i32 [ %.1.i.i, %bb.z ], [ %i.cf, %bb.v ] ; 2 uses
  %i.de = sub nsw i32 %.0.i.i, %.026.i.i
  %i.df = sdiv i32 %i.de, 2
  %i.dg = add nsw i32 %i.df, %.026.i.i            ; 4 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !19 ; 2 uses
  %i.dk = icmp ugt i32 %6, %i.dj
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader43.i.i
  %i.dl = add nsw i32 %i.dg, 1
  br label %bb.z

bb.x:                                             ; preds = %.preheader43.i.i
  %i.dm = icmp ult i32 %6, %i.dj
  br i1 %i.dm, label %bb.y, label %_ZNK10polynomial8monomial8index_ofEj.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.dg, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.127.i.i = phi i32 [ %i.dl, %bb.w ], [ %.026.i.i, %bb.y ] ; 2 uses
  %.1.i.i = phi i32 [ %.0.i.i, %bb.w ], [ %i.dn, %bb.y ] ; 2 uses
  %.not42.i.i = icmp sgt i32 %.127.i.i, %.1.i.i
  br i1 %.not42.i.i, label %.lr.ph.i, label %.preheader43.i.i, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i:             ; preds = %.lr.ph338.5, %.lr.ph338.4, %.lr.ph338.3, %.lr.ph338.2, %.lr.ph338.1, %.lr.ph338
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i, %.lr.ph338 ], [ %indvars.iv.next.i.i.1, %.lr.ph338.1 ], [ %indvars.iv.next.i.i.2, %.lr.ph338.2 ], [ %indvars.iv.next.i.i.3, %.lr.ph338.3 ], [ %indvars.iv.next.i.i.4, %.lr.ph338.4 ], [ %indvars.iv.next.i.i.5, %.lr.ph338.5 ]
  %indvars.le.i.i = trunc nuw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i

_ZNK10polynomial8monomial8index_ofEj.exit.i:      ; preds = %bb.x, %.thread.loopexit.split.loop.exit.i.i
  %.4.i.i = phi i32 [ %indvars.le.i.i, %.thread.loopexit.split.loop.exit.i.i ], [ %i.dg, %bb.x ] ; 2 uses
  %i.do = icmp eq i32 %.4.i.i, -1
  br i1 %i.do, label %.lr.ph.i, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.u, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.ch, %bb.u ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.pre-phi.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21 ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  %i.dt = add i32 %.097, 1
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 %i.dt) ; 3 uses
  %9 = add i32 %umax, -1                          ; 2 uses
  %exitcond.not348 = icmp eq i32 %.097, %9
  br i1 %exitcond.not348, label %_ZNK10polynomial8monomial9degree_ofEj.exit152._crit_edge, label %.lr.ph350

.lr.ph.i:                                         ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZNK10polynomial8monomial9degree_ofEj.exit, %.preheader.i.i.preheader, %bb.z, %.lr.ph338.5, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4
  %wide.trip.count.i = zext i32 %5 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.at, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.at ] ; 2 uses
  %.01228.i = phi i32 [ -1, %.lr.ph.i ], [ %i.ge, %bb.at ] ; 5 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !132 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !27 ; 5 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = icmp ult i32 %i.dx, 8
  br i1 %i.dz, label %.preheader.i.i.i, label %bb.ao

.preheader.i.i.i:                                 ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 20 ; 7 uses
  %i.eb = zext nneg i32 %i.dx to i64              ; 7 uses
  %i.ec = add nsw i64 %i.eb, -1                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !19 ; 2 uses
  %i.ef = icmp ult i32 %i.ee, %6
  br i1 %i.ef, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ac, !llvm.loop !434

bb.ac:                                            ; preds = %.preheader.i.i.i
  %.not41.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not41.i.i.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = add nsw i64 %i.eb, -2                   ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !19 ; 2 uses
  %i.ej = icmp ult i32 %i.ei, %6
  br i1 %i.ej, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ae, !llvm.loop !434

bb.ae:                                            ; preds = %bb.ad
  %.not41.i.i.i.1 = icmp eq i64 %i.eg, 0
  br i1 %.not41.i.i.i.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = add nsw i64 %i.eb, -3                   ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !19 ; 2 uses
  %i.en = icmp ult i32 %i.em, %6
  br i1 %i.en, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ag, !llvm.loop !434

bb.ag:                                            ; preds = %bb.af
  %.not41.i.i.i.2 = icmp eq i64 %i.ek, 0
  br i1 %.not41.i.i.i.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = add nsw i64 %i.eb, -4                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !19 ; 2 uses
  %i.er = icmp ult i32 %i.eq, %6
  br i1 %i.er, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ai, !llvm.loop !434

bb.ai:                                            ; preds = %bb.ah
  %.not41.i.i.i.3 = icmp eq i64 %i.eo, 0
  br i1 %.not41.i.i.i.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = add nsw i64 %i.eb, -5                   ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !19 ; 2 uses
  %i.ev = icmp ult i32 %i.eu, %6
  br i1 %i.ev, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ak, !llvm.loop !434

bb.ak:                                            ; preds = %bb.aj
  %.not41.i.i.i.4 = icmp eq i64 %i.es, 0
  br i1 %.not41.i.i.i.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = add nsw i64 %i.eb, -6                   ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !19 ; 2 uses
  %i.ez = icmp ult i32 %i.ey, %6
  br i1 %i.ez, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.am, !llvm.loop !434

bb.am:                                            ; preds = %bb.al
  %.not41.i.i.i.5 = icmp eq i64 %i.ew, 0
  br i1 %.not41.i.i.i.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr [8 x i8], ptr %i.ea, i64 %i.eb
  %i.fb = getelementptr i8, ptr %i.fa, i64 -56
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !19 ; 2 uses
  %i.fd = icmp ult i32 %i.fc, %6
  br i1 %i.fd, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, !llvm.loop !434

bb.ao:                                            ; preds = %bb.ab
  %i.fe = add i32 %i.dx, -1                       ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dv, i64 20 ; 4 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !19
  %.not.i.i.i = icmp ugt i32 %6, %i.fg
  br i1 %.not.i.i.i, label %bb.ap, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.fh = zext i32 %i.fe to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !19 ; 3 uses
  %i.fk = icmp ugt i32 %6, %i.fj
  br i1 %i.fk, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = icmp eq i32 %6, %i.fj
  br i1 %i.fl, label %bb.ar, label %.lr.ph.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.fm = add i32 %i.dx, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %bb.as
  %.048.i.i.i = phi i32 [ %..0.i.i.i, %bb.as ], [ %i.fe, %bb.aq ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029..i.i.i, %bb.as ], [ 0, %bb.aq ] ; 3 uses
  %i.fn = sub nsw i32 %.048.i.i.i, %.02947.i.i.i
  %i.fo = sdiv i32 %i.fn, 2
  %i.fp = add nsw i32 %i.fo, %.02947.i.i.i        ; 4 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i = icmp eq i32 %i.fs, %6
  br i1 %.not40.i.i.i, label %.thread.i.i.i, label %bb.as

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.ft = add nsw i32 %i.fp, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.fu = icmp ult i32 %6, %i.fs                  ; 2 uses
  %.029..i.i.i = select i1 %i.fu, i32 %.02947.i.i.i, i32 %i.fp ; 3 uses
  %..0.i.i.i = select i1 %i.fu, i32 %i.fp, i32 %.048.i.i.i ; 2 uses
  %i.fv = add nsw i32 %.029..i.i.i, 1
  %i.fw = icmp eq i32 %..0.i.i.i, %i.fv
  br i1 %i.fw, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, label %.lr.ph.i.i.i

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i: ; preds = %.preheader.i.i.i, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ap
  %.4.i.i.ph.i = phi i32 [ %i.fj, %bb.ap ], [ %i.ee, %.preheader.i.i.i ], [ %i.ei, %bb.ad ], [ %i.em, %bb.af ], [ %i.eq, %bb.ah ], [ %i.eu, %bb.aj ], [ %i.ey, %bb.al ], [ %i.fc, %bb.an ] ; 2 uses
  %i.fx = icmp eq i32 %.01228.i, -1
  %i.fy = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i, i32 %.01228.i)
  %spec.select24.i = select i1 %i.fx, i32 %.4.i.i.ph.i, i32 %i.fy
  br label %bb.at

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i: ; preds = %bb.as, %.thread.i.i.i, %bb.ar
  %.sink.i.i.i = phi i32 [ %i.ft, %.thread.i.i.i ], [ %i.fm, %bb.ar ], [ %.029..i.i.i, %bb.as ]
  %i.fz = zext i32 %.sink.i.i.i to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !19
  %.fr.i = freeze i32 %i.gb                       ; 3 uses
  %.not.i = icmp eq i32 %.fr.i, -1
  %i.gc = icmp eq i32 %.01228.i, -1
  %i.gd = call i32 @llvm.umax.i32(i32 %.fr.i, i32 %.01228.i)
  %spec.select.i = select i1 %i.gc, i32 %.fr.i, i32 %i.gd
  br i1 %.not.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.at

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i: ; preds = %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.an, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %bb.ao, %bb.aa
  br label %bb.at

bb.at:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i
  %i.ge = phi i32 [ %.01228.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i ], [ %spec.select.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i ], [ %spec.select24.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit, label %bb.aa, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit: ; preds = %bb.at
  %i.gf = icmp eq i32 %i.ge, -1
  br i1 %i.gf, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  %i.gg = load ptr, ptr %i.bs, align 8, !tbaa !134
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.bz ; 2 uses
  %i.gi = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  invoke void @_ZN12mpbq_manager3addERK4mpbqRK3mpzRS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc129 unwind label %bb.aw

.noexc129:                                        ; preds = %bb.au
  %i.gj = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  invoke void @_ZN12mpbq_manager3addERK4mpbqRK3mpzRS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.gj, ptr noundef nonnull align 8 dereferenceable(20) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(20) %i.bo)
          to label %.critedge unwind label %bb.aw

bb.av:                                            ; preds = %.noexc125, %bb.p, %bb.o
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %.noexc131, %bb.ay, %.noexc129, %bb.au, %bb.ax
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  invoke void @_ZN10polynomial7manager3imp11t_eval_coreI13mpbqi_managerEEvPNS_10polynomialERT_RKNS_9var2valueIS6_NS6_7numeralEEEjjjRS9_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.097, i32 noundef %5, i32 noundef %i.ge, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  %i.gm = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  invoke void @_ZN12mpbq_manager3addERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.gm, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc131 unwind label %bb.aw

.noexc131:                                        ; preds = %bb.ay
  %i.gn = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  invoke void @_ZN12mpbq_manager3addERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.gn, ptr noundef nonnull align 8 dereferenceable(20) %i.bo, ptr noundef nonnull align 8 dereferenceable(20) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %i.bo)
          to label %.critedge unwind label %bb.aw

.preheader:                                       ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit152
  %exitcond.not = icmp eq i32 %.096349, %9
  br i1 %exitcond.not, label %_ZNK10polynomial8monomial9degree_ofEj.exit152._crit_edge, label %.lr.ph350

.lr.ph350:                                        ; preds = %.preheader.preheader, %.preheader
  %.096349.in = phi i32 [ %.096349, %.preheader ], [ %.097, %.preheader.preheader ]
  %.096349 = add i32 %.096349.in, 1               ; 4 uses
  %10 = zext i32 %.096349 to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %10
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !132 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !27 ; 3 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %bb.az

bb.az:                                            ; preds = %.lr.ph350
  %i.gt = add i32 %i.gr, -1                       ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 20 ; 8 uses
  %i.gv = zext i32 %i.gt to i64                   ; 8 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !19
  %i.gy = icmp eq i32 %i.gx, %6
  br i1 %i.gy, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i140, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gz = icmp ult i32 %i.gr, 8
  br i1 %i.gz, label %.preheader.i.i146.preheader, label %.preheader43.i.i133

.preheader.i.i146.preheader:                      ; preds = %bb.ba
  %.not.i.i148344 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i148344, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %.lr.ph346

.preheader.i.i146:                                ; preds = %.lr.ph346
  %.not.i.i148 = icmp eq i64 %indvars.iv.next.i.i149, 0
  br i1 %.not.i.i148, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %.lr.ph346.1

.lr.ph346.1:                                      ; preds = %.preheader.i.i146
  %indvars.iv.next.i.i149.1 = add nsw i64 %i.gv, -2 ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i149.1
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !19
  %i.hc = icmp eq i32 %i.hb, %6
  br i1 %i.hc, label %.thread.loopexit.split.loop.exit.i.i150, label %.preheader.i.i146.1, !llvm.loop !137

.preheader.i.i146.1:                              ; preds = %.lr.ph346.1
  %.not.i.i148.1 = icmp eq i64 %indvars.iv.next.i.i149.1, 0
  br i1 %.not.i.i148.1, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %.lr.ph346.2

.lr.ph346.2:                                      ; preds = %.preheader.i.i146.1
  %indvars.iv.next.i.i149.2 = add nsw i64 %i.gv, -3 ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i149.2
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !19
  %i.hf = icmp eq i32 %i.he, %6
  br i1 %i.hf, label %.thread.loopexit.split.loop.exit.i.i150, label %.preheader.i.i146.2, !llvm.loop !137

.preheader.i.i146.2:                              ; preds = %.lr.ph346.2
  %.not.i.i148.2 = icmp eq i64 %indvars.iv.next.i.i149.2, 0
  br i1 %.not.i.i148.2, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %.lr.ph346.3

.lr.ph346.3:                                      ; preds = %.preheader.i.i146.2
  %indvars.iv.next.i.i149.3 = add nsw i64 %i.gv, -4 ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i149.3
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !19
  %i.hi = icmp eq i32 %i.hh, %6
  br i1 %i.hi, label %.thread.loopexit.split.loop.exit.i.i150, label %.preheader.i.i146.3, !llvm.loop !137

.preheader.i.i146.3:                              ; preds = %.lr.ph346.3
  %.not.i.i148.3 = icmp eq i64 %indvars.iv.next.i.i149.3, 0
  br i1 %.not.i.i148.3, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %.lr.ph346.4

.lr.ph346.4:                                      ; preds = %.preheader.i.i146.3
  %indvars.iv.next.i.i149.4 = add nsw i64 %i.gv, -5 ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i149.4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !19
  %i.hl = icmp eq i32 %i.hk, %6
  br i1 %i.hl, label %.thread.loopexit.split.loop.exit.i.i150, label %.preheader.i.i146.4, !llvm.loop !137

.preheader.i.i146.4:                              ; preds = %.lr.ph346.4
  %.not.i.i148.4 = icmp eq i64 %indvars.iv.next.i.i149.4, 0
  br i1 %.not.i.i148.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %.lr.ph346.5

.lr.ph346.5:                                      ; preds = %.preheader.i.i146.4
  %indvars.iv.next.i.i149.5 = add nsw i64 %i.gv, -6 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i149.5
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !19
  %i.ho = icmp eq i32 %i.hn, %6
  br i1 %i.ho, label %.thread.loopexit.split.loop.exit.i.i150, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, !llvm.loop !137

.lr.ph346:                                        ; preds = %.preheader.i.i146.preheader
  %indvars.iv.next.i.i149 = add nsw i64 %i.gv, -1 ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i149
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !19
  %i.hr = icmp eq i32 %i.hq, %6
  br i1 %i.hr, label %.thread.loopexit.split.loop.exit.i.i150, label %.preheader.i.i146, !llvm.loop !137

.preheader43.i.i133:                              ; preds = %bb.ba, %bb.be
  %.026.i.i134 = phi i32 [ %.127.i.i143, %bb.be ], [ 0, %bb.ba ] ; 3 uses
  %.0.i.i135 = phi i32 [ %.1.i.i144, %bb.be ], [ %i.gt, %bb.ba ] ; 2 uses
  %i.hs = sub nsw i32 %.0.i.i135, %.026.i.i134
  %i.ht = sdiv i32 %i.hs, 2
  %i.hu = add nsw i32 %i.ht, %.026.i.i134         ; 4 uses
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !19 ; 2 uses
  %i.hy = icmp ugt i32 %6, %i.hx
  br i1 %i.hy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.preheader43.i.i133
  %i.hz = add nsw i32 %i.hu, 1
  br label %bb.be

bb.bc:                                            ; preds = %.preheader43.i.i133
  %i.ia = icmp ult i32 %6, %i.hx
  br i1 %i.ia, label %bb.bd, label %_ZNK10polynomial8monomial8index_ofEj.exit.i136

bb.bd:                                            ; preds = %bb.bc
  %i.ib = add nsw i32 %i.hu, -1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.127.i.i143 = phi i32 [ %i.hz, %bb.bb ], [ %.026.i.i134, %bb.bd ] ; 2 uses
  %.1.i.i144 = phi i32 [ %.0.i.i135, %bb.bb ], [ %i.ib, %bb.bd ] ; 2 uses
  %.not42.i.i145 = icmp sgt i32 %.127.i.i143, %.1.i.i144
  br i1 %.not42.i.i145, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %.preheader43.i.i133, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i150:          ; preds = %.lr.ph346.5, %.lr.ph346.4, %.lr.ph346.3, %.lr.ph346.2, %.lr.ph346.1, %.lr.ph346
  %indvars.iv.next.i.i149.lcssa = phi i64 [ %indvars.iv.next.i.i149, %.lr.ph346 ], [ %indvars.iv.next.i.i149.1, %.lr.ph346.1 ], [ %indvars.iv.next.i.i149.2, %.lr.ph346.2 ], [ %indvars.iv.next.i.i149.3, %.lr.ph346.3 ], [ %indvars.iv.next.i.i149.4, %.lr.ph346.4 ], [ %indvars.iv.next.i.i149.5, %.lr.ph346.5 ]
  %indvars.le.i.i151 = trunc nuw i64 %indvars.iv.next.i.i149.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i136

_ZNK10polynomial8monomial8index_ofEj.exit.i136:   ; preds = %bb.bc, %.thread.loopexit.split.loop.exit.i.i150
  %.4.i.i137 = phi i32 [ %indvars.le.i.i151, %.thread.loopexit.split.loop.exit.i.i150 ], [ %i.hu, %bb.bc ] ; 2 uses
  %i.ic = icmp eq i32 %.4.i.i137, -1
  br i1 %i.ic, label %_ZNK10polynomial8monomial9degree_ofEj.exit152, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i138

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i138: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i136
  %.pre.i139 = zext i32 %.4.i.i137 to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i140

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i140: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i138, %bb.az
  %.pre-phi.i141 = phi i64 [ %.pre.i139, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i138 ], [ %i.gv, %bb.az ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.pre-phi.i141
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !21
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit152

_ZNK10polynomial8monomial9degree_ofEj.exit152:    ; preds = %bb.be, %.preheader.i.i146, %.preheader.i.i146.1, %.preheader.i.i146.2, %.preheader.i.i146.3, %.preheader.i.i146.4, %.lr.ph346.5, %.preheader.i.i146.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i140, %_ZNK10polynomial8monomial8index_ofEj.exit.i136, %.lr.ph350
  %.0.i142 = phi i32 [ %i.if, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i140 ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i136 ], [ 0, %.lr.ph350 ], [ 0, %.preheader.i.i146.preheader ], [ 0, %.preheader.i.i146 ], [ 0, %.lr.ph346.5 ], [ 0, %.preheader.i.i146.4 ], [ 0, %.preheader.i.i146.3 ], [ 0, %.preheader.i.i146.2 ], [ 0, %.preheader.i.i146.1 ], [ 0, %bb.be ] ; 2 uses
  %i.ig = icmp ult i32 %.0.i142, %i.dr
  br i1 %i.ig, label %_ZNK10polynomial8monomial9degree_ofEj.exit152._crit_edge, label %.preheader

_ZNK10polynomial8monomial9degree_ofEj.exit152._crit_edge: ; preds = %.preheader, %_ZNK10polynomial8monomial9degree_ofEj.exit152, %.preheader.preheader
  %.096.lcssa = phi i32 [ %umax, %.preheader.preheader ], [ %umax, %.preheader ], [ %.096349, %_ZNK10polynomial8monomial9degree_ofEj.exit152 ] ; 4 uses
  %.2 = phi i32 [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ %.0.i142, %_ZNK10polynomial8monomial9degree_ofEj.exit152 ]
  %i.ih = icmp ult i32 %.097, %.096.lcssa
  br i1 %i.ih, label %.lr.ph.i154, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180.thread

.lr.ph.i154:                                      ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit152._crit_edge
  %wide.trip.count.i155 = zext i32 %.096.lcssa to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.by, %.lr.ph.i154
  %indvars.iv.i156 = phi i64 [ %i.bz, %.lr.ph.i154 ], [ %indvars.iv.next.i160, %bb.by ] ; 2 uses
  %.01228.i157 = phi i32 [ -1, %.lr.ph.i154 ], [ %i.ks, %bb.by ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i156
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !132 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !27 ; 5 uses
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.in = icmp ult i32 %i.il, 8
  br i1 %i.in, label %.preheader.i.i.i177, label %bb.bt

.preheader.i.i.i177:                              ; preds = %bb.bg
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 20 ; 7 uses
  %i.ip = zext nneg i32 %i.il to i64              ; 7 uses
  %i.iq = add nsw i64 %i.ip, -1                   ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !19 ; 2 uses
  %i.it = icmp ult i32 %i.is, %6
  br i1 %i.it, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %bb.bh, !llvm.loop !434

bb.bh:                                            ; preds = %.preheader.i.i.i177
  %.not41.i.i.i179 = icmp eq i64 %i.iq, 0
  br i1 %.not41.i.i.i179, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iu = add nsw i64 %i.ip, -2                   ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !19 ; 2 uses
  %i.ix = icmp ult i32 %i.iw, %6
  br i1 %i.ix, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %bb.bj, !llvm.loop !434

bb.bj:                                            ; preds = %bb.bi
  %.not41.i.i.i179.1 = icmp eq i64 %i.iu, 0
  br i1 %.not41.i.i.i179.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iy = add nsw i64 %i.ip, -3                   ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !19 ; 2 uses
  %i.jb = icmp ult i32 %i.ja, %6
  br i1 %i.jb, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %bb.bl, !llvm.loop !434

bb.bl:                                            ; preds = %bb.bk
  %.not41.i.i.i179.2 = icmp eq i64 %i.iy, 0
  br i1 %.not41.i.i.i179.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jc = add nsw i64 %i.ip, -4                   ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !19 ; 2 uses
  %i.jf = icmp ult i32 %i.je, %6
  br i1 %i.jf, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %bb.bn, !llvm.loop !434

bb.bn:                                            ; preds = %bb.bm
  %.not41.i.i.i179.3 = icmp eq i64 %i.jc, 0
  br i1 %.not41.i.i.i179.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jg = add nsw i64 %i.ip, -5                   ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !19 ; 2 uses
  %i.jj = icmp ult i32 %i.ji, %6
  br i1 %i.jj, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %bb.bp, !llvm.loop !434

bb.bp:                                            ; preds = %bb.bo
  %.not41.i.i.i179.4 = icmp eq i64 %i.jg, 0
  br i1 %.not41.i.i.i179.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jk = add nsw i64 %i.ip, -6                   ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !19 ; 2 uses
  %i.jn = icmp ult i32 %i.jm, %6
  br i1 %i.jn, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %bb.br, !llvm.loop !434

bb.br:                                            ; preds = %bb.bq
  %.not41.i.i.i179.5 = icmp eq i64 %i.jk, 0
  br i1 %.not41.i.i.i179.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jo = getelementptr [8 x i8], ptr %i.io, i64 %i.ip
  %i.jp = getelementptr i8, ptr %i.jo, i64 -56
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !19 ; 2 uses
  %i.jr = icmp ult i32 %i.jq, %6
  br i1 %i.jr, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, !llvm.loop !434

bb.bt:                                            ; preds = %bb.bg
  %i.js = add i32 %i.il, -1                       ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ij, i64 20 ; 4 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !19
  %.not.i.i.i158 = icmp ugt i32 %6, %i.ju
  br i1 %.not.i.i.i158, label %bb.bu, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159

bb.bu:                                            ; preds = %bb.bt
  %i.jv = zext i32 %i.js to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !19 ; 3 uses
  %i.jy = icmp ugt i32 %6, %i.jx
  br i1 %i.jy, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jz = icmp eq i32 %6, %i.jx
  br i1 %i.jz, label %bb.bw, label %.lr.ph.i.i.i162

bb.bw:                                            ; preds = %bb.bv
  %i.ka = add i32 %i.il, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i168

.lr.ph.i.i.i162:                                  ; preds = %bb.bv, %bb.bx
  %.048.i.i.i163 = phi i32 [ %..0.i.i.i167, %bb.bx ], [ %i.js, %bb.bv ] ; 2 uses
  %.02947.i.i.i164 = phi i32 [ %.029..i.i.i166, %bb.bx ], [ 0, %bb.bv ] ; 3 uses
  %i.kb = sub nsw i32 %.048.i.i.i163, %.02947.i.i.i164
  %i.kc = sdiv i32 %i.kb, 2
  %i.kd = add nsw i32 %i.kc, %.02947.i.i.i164     ; 4 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i165 = icmp eq i32 %i.kg, %6
  br i1 %.not40.i.i.i165, label %.thread.i.i.i173, label %bb.bx

.thread.i.i.i173:                                 ; preds = %.lr.ph.i.i.i162
  %i.kh = add nsw i32 %i.kd, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i168

bb.bx:                                            ; preds = %.lr.ph.i.i.i162
  %i.ki = icmp ult i32 %6, %i.kg                  ; 2 uses
  %.029..i.i.i166 = select i1 %i.ki, i32 %.02947.i.i.i164, i32 %i.kd ; 3 uses
  %..0.i.i.i167 = select i1 %i.ki, i32 %i.kd, i32 %.048.i.i.i163 ; 2 uses
  %i.kj = add nsw i32 %.029..i.i.i166, 1
  %i.kk = icmp eq i32 %..0.i.i.i167, %i.kj
  br i1 %i.kk, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i168, label %.lr.ph.i.i.i162

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174: ; preds = %.preheader.i.i.i177, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu
  %.4.i.i.ph.i175 = phi i32 [ %i.jx, %bb.bu ], [ %i.is, %.preheader.i.i.i177 ], [ %i.iw, %bb.bi ], [ %i.ja, %bb.bk ], [ %i.je, %bb.bm ], [ %i.ji, %bb.bo ], [ %i.jm, %bb.bq ], [ %i.jq, %bb.bs ] ; 2 uses
  %i.kl = icmp eq i32 %.01228.i157, -1
  %i.km = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i175, i32 %.01228.i157)
  %spec.select24.i176 = select i1 %i.kl, i32 %.4.i.i.ph.i175, i32 %i.km
  br label %bb.by

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i168: ; preds = %bb.bx, %.thread.i.i.i173, %bb.bw
  %.sink.i.i.i169 = phi i32 [ %i.kh, %.thread.i.i.i173 ], [ %i.ka, %bb.bw ], [ %.029..i.i.i166, %bb.bx ]
  %i.kn = zext i32 %.sink.i.i.i169 to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !19
  %.fr.i170 = freeze i32 %i.kp                    ; 3 uses
  %.not.i171 = icmp eq i32 %.fr.i170, -1
  %i.kq = icmp eq i32 %.01228.i157, -1
  %i.kr = call i32 @llvm.umax.i32(i32 %.fr.i170, i32 %.01228.i157)
  %spec.select.i172 = select i1 %i.kq, i32 %.fr.i170, i32 %i.kr
  br i1 %.not.i171, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, label %bb.by

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159: ; preds = %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bs, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i168, %bb.bt, %bb.bf
  br label %bb.by

bb.by:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i168, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174
  %i.ks = phi i32 [ %.01228.i157, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i159 ], [ %spec.select.i172, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i168 ], [ %spec.select24.i176, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i174 ] ; 3 uses
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i156, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i155
  br i1 %exitcond.not.i161, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180, label %bb.bf, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180: ; preds = %bb.by
  %i.kt = icmp eq i32 %i.ks, -1
  br i1 %i.kt, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180.thread, label %bb.ce

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180.thread: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit152._crit_edge, %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180
  %i.ku = load ptr, ptr %i.bs, align 8, !tbaa !134
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.bz ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 4
  %i.ky = and i8 %i.kx, 1
  %i.kz = icmp eq i8 %i.ky, 0
  br i1 %i.kz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180.thread
  %i.la = load i32, ptr %i.kv, align 8, !tbaa !43
  store i32 %i.la, ptr %i.a, align 8, !tbaa !43
  %i.lb = load i8, ptr %i.b, align 4
  %i.lc = and i8 %i.lb, -2
  store i8 %i.lc, ptr %i.b, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i181

bb.ca:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit180.thread
  %i.ld = load ptr, ptr %2, align 8, !tbaa !789, !nonnull !51, !align !52
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !793, !nonnull !51, !align !52
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.le, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.kv)
          to label %_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i181 unwind label %bb.cd

_ZN12mpbq_manager3setER4mpbqRK3mpz.exit.i181:     ; preds = %bb.ca, %bb.bz
  store i32 0, ptr %i.f, align 8, !tbaa !795
end_hunk_1
begin_hunk_2_@_ZN10polynomial7manager3imp6t_evalI11mpq_managerILb0EEEEvPNS_10polynomialERKNS_9var2valueIT_NS8_7numeralEEERS9_:bb.a
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread
  %i.bg = add i32 %i.be, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !19
  br label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit

_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit: ; preds = %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread, %bb.g
  %i.bl = phi i32 [ 0, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.az, %bb.g ], [ %i.az, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread ]
  %.0.i = phi i32 [ -1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.bk, %bb.g ], [ -1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread ]
  tail call void @_ZN10polynomial7manager3imp11t_eval_coreI11mpq_managerILb0EEEEvPNS_10polynomialERT_RKNS_9var2valueIS7_NS7_7numeralEEEjjjRSA_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(728) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef %i.bl, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.h

bb.h:                                             ; preds = %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, %_ZN11mpq_managerILb0EE3setER3mpqRK3mpz.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp11t_eval_coreI11mpq_managerILb0EEEEvPNS_10polynomialERT_RKNS_9var2valueIS7_NS7_7numeralEEEjjjRSA_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class._scoped_numeral.94, align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %2, ptr %8, align 8, !tbaa !802
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 14 uses
  store i32 0, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  store i32 1, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 6 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !34
  %i.k = add i32 %4, 1
  %i.l = icmp eq i32 %5, %i.k
  br i1 %i.l, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.o = zext i32 %4 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.p, align 8, !tbaa !43
  store i32 %i.u, ptr %7, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.f

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  store i32 1, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 5 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !131
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.o
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !132 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !27 ; 2 uses
  %.not226 = icmp eq i32 %i.ah, 0
  br i1 %.not226, label %.critedge, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %wide.trip.count = zext i32 %i.ah to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.lr.ph224, %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next.a, %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19 ; 2 uses
  %.not = icmp ugt i32 %i.al, %6
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %i.ap = load ptr, ptr %3, align 8, !tbaa !126
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.al)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11mpq_managerILb0EE5powerERK3mpqjRS1_(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.z, align 4
  %i.au = and i8 %i.at, 1
  %i.av = icmp eq i8 %i.au, 0
  %i.aw = load i32, ptr %i.y, align 8
  %i.ax = icmp eq i32 %i.aw, 1
  %i.ay = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.az = load i8, ptr %i.g, align 4
  %i.ba = and i8 %i.az, 1
  %i.bb = icmp eq i8 %i.ba, 0
  %i.bc = load i32, ptr %i.f, align 8
  %i.bd = icmp eq i32 %i.bc, 1
  %i.be = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc125 unwind label %bb.n

.noexc125:                                        ; preds = %bb.l
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %.noexc126 unwind label %bb.n

.noexc126:                                        ; preds = %.noexc125
  store i32 1, ptr %i.y, align 8, !tbaa !43
  %i.bf = load i8, ptr %i.z, align 4
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.z, align 4
  br label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  invoke void @_ZN11mpq_managerILb0EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit unwind label %bb.n

_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit:    ; preds = %bb.m, %.noexc126
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond260.not, label %.critedge, label %bb.g, !llvm.loop !804

bb.n:                                             ; preds = %bb.m, %.noexc125, %bb.l, %bb.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr %3, align 8, !tbaa !126
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %6)
          to label %bb.p unwind label %bb.av

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_ZN11mpq_managerILb0EE5resetER3mpq.exit unwind label %bb.av

_ZN11mpq_managerILb0EE5resetER3mpq.exit:          ; preds = %.noexc128
  store i32 1, ptr %i.bm, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 5 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -2
  store i8 %i.bp, ptr %i.bn, align 4
  %i.bq = icmp ult i32 %4, %5
  br i1 %i.bq, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN11mpq_managerILb0EE5resetER3mpq.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit187
  %.097222 = phi i32 [ %4, %.lr.ph ], [ %.096.lcssa, %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit187 ] ; 7 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !249, !nonnull !51, !align !52
  %i.bu = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bt)
          to label %.noexc130 unwind label %.loopexit

.noexc130:                                        ; preds = %bb.q
  br i1 %i.bu, label %_ZN10polynomial7manager3imp10checkpointEv.exit, label %bb.r

bb.r:                                             ; preds = %.noexc130
  %i.bv = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN10polynomial20polynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN10polynomial20polynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %.noexc131 unwind label %.loopexit.split-lp

.noexc131:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bv) #29
  br label %.body

_ZN10polynomial7manager3imp10checkpointEv.exit:   ; preds = %.noexc130
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !131 ; 4 uses
  %i.by = zext i32 %.097222 to i64                ; 5 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !132 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !27 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit
  %i.ce = add i32 %i.cc, -1                       ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 8 uses
  %i.cg = zext i32 %i.ce to i64                   ; 8 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !19
  %i.cj = icmp eq i32 %i.ci, %6
  br i1 %i.cj, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp ult i32 %i.cc, 8
  br i1 %i.ck, label %.preheader.i.i.preheader, label %.preheader43.i.i

.preheader.i.i.preheader:                         ; preds = %bb.v
  %.not.i.i345 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i345, label %.lr.ph.i, label %.lr.ph347

.preheader.i.i:                                   ; preds = %.lr.ph347
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %.lr.ph347.1

.lr.ph347.1:                                      ; preds = %.preheader.i.i
  %indvars.iv.next.i.i.1 = add nsw i64 %i.cg, -2  ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.1
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.cn = icmp eq i32 %i.cm, %6
  br i1 %i.cn, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.1, !llvm.loop !137

.preheader.i.i.1:                                 ; preds = %.lr.ph347.1
  %.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.i.i.1, label %.lr.ph.i, label %.lr.ph347.2

.lr.ph347.2:                                      ; preds = %.preheader.i.i.1
  %indvars.iv.next.i.i.2 = add nsw i64 %i.cg, -3  ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.2
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !19
  %i.cq = icmp eq i32 %i.cp, %6
  br i1 %i.cq, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.2, !llvm.loop !137

.preheader.i.i.2:                                 ; preds = %.lr.ph347.2
  %.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 0
  br i1 %.not.i.i.2, label %.lr.ph.i, label %.lr.ph347.3

.lr.ph347.3:                                      ; preds = %.preheader.i.i.2
  %indvars.iv.next.i.i.3 = add nsw i64 %i.cg, -4  ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.3
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !19
  %i.ct = icmp eq i32 %i.cs, %6
  br i1 %i.ct, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.3, !llvm.loop !137

.preheader.i.i.3:                                 ; preds = %.lr.ph347.3
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %.not.i.i.3, label %.lr.ph.i, label %.lr.ph347.4

.lr.ph347.4:                                      ; preds = %.preheader.i.i.3
  %indvars.iv.next.i.i.4 = add nsw i64 %i.cg, -5  ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !19
  %i.cw = icmp eq i32 %i.cv, %6
  br i1 %i.cw, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.4, !llvm.loop !137

.preheader.i.i.4:                                 ; preds = %.lr.ph347.4
  %.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 0
  br i1 %.not.i.i.4, label %.lr.ph.i, label %.lr.ph347.5

.lr.ph347.5:                                      ; preds = %.preheader.i.i.4
  %indvars.iv.next.i.i.5 = add nsw i64 %i.cg, -6  ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.5
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !19
  %i.cz = icmp eq i32 %i.cy, %6
  br i1 %i.cz, label %.thread.loopexit.split.loop.exit.i.i, label %.lr.ph.i, !llvm.loop !137

.lr.ph347:                                        ; preds = %.preheader.i.i.preheader
  %indvars.iv.next.i.i = add nsw i64 %i.cg, -1    ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i
  %i.db = load i32, ptr %i.da, align 4, !tbaa !19
  %i.dc = icmp eq i32 %i.db, %6
  br i1 %i.dc, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i, !llvm.loop !137

.preheader43.i.i:                                 ; preds = %bb.v, %bb.z
  %.026.i.i = phi i32 [ %.127.i.i, %bb.z ], [ 0, %bb.v ] ; 3 uses
  %.0.i.i = phi i32 [ %.1.i.i, %bb.z ], [ %i.ce, %bb.v ] ; 2 uses
  %i.dd = sub nsw i32 %.0.i.i, %.026.i.i
  %i.de = sdiv i32 %i.dd, 2
  %i.df = add nsw i32 %i.de, %.026.i.i            ; 4 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !19 ; 2 uses
  %i.dj = icmp ugt i32 %6, %i.di
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader43.i.i
  %i.dk = add nsw i32 %i.df, 1
  br label %bb.z

bb.x:                                             ; preds = %.preheader43.i.i
  %i.dl = icmp ult i32 %6, %i.di
  br i1 %i.dl, label %bb.y, label %_ZNK10polynomial8monomial8index_ofEj.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dm = add nsw i32 %i.df, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.127.i.i = phi i32 [ %i.dk, %bb.w ], [ %.026.i.i, %bb.y ] ; 2 uses
  %.1.i.i = phi i32 [ %.0.i.i, %bb.w ], [ %i.dm, %bb.y ] ; 2 uses
  %.not42.i.i = icmp sgt i32 %.127.i.i, %.1.i.i
  br i1 %.not42.i.i, label %.lr.ph.i, label %.preheader43.i.i, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i:             ; preds = %.lr.ph347.5, %.lr.ph347.4, %.lr.ph347.3, %.lr.ph347.2, %.lr.ph347.1, %.lr.ph347
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i, %.lr.ph347 ], [ %indvars.iv.next.i.i.1, %.lr.ph347.1 ], [ %indvars.iv.next.i.i.2, %.lr.ph347.2 ], [ %indvars.iv.next.i.i.3, %.lr.ph347.3 ], [ %indvars.iv.next.i.i.4, %.lr.ph347.4 ], [ %indvars.iv.next.i.i.5, %.lr.ph347.5 ]
  %indvars.le.i.i = trunc nuw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i

_ZNK10polynomial8monomial8index_ofEj.exit.i:      ; preds = %bb.x, %.thread.loopexit.split.loop.exit.i.i
  %.4.i.i = phi i32 [ %indvars.le.i.i, %.thread.loopexit.split.loop.exit.i.i ], [ %i.df, %bb.x ] ; 2 uses
  %i.dn = icmp eq i32 %.4.i.i, -1
  br i1 %i.dn, label %.lr.ph.i, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.u, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.cg, %bb.u ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.pre-phi.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !21 ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  %i.ds = add i32 %.097222, 1
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 %i.ds) ; 3 uses
  %9 = add i32 %umax, -1                          ; 2 uses
  %exitcond.not357 = icmp eq i32 %.097222, %9
  br i1 %exitcond.not357, label %_ZNK10polynomial8monomial9degree_ofEj.exit151._crit_edge, label %.lr.ph359

.lr.ph.i:                                         ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZNK10polynomial8monomial9degree_ofEj.exit, %.preheader.i.i.preheader, %bb.z, %.lr.ph347.5, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4
  %wide.trip.count.i = zext i32 %5 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.at, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.by, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.at ] ; 2 uses
  %.01228.i = phi i32 [ -1, %.lr.ph.i ], [ %i.gd, %bb.at ] ; 5 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !132 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !27 ; 5 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = icmp ult i32 %i.dw, 8
  br i1 %i.dy, label %.preheader.i.i.i, label %bb.ao

.preheader.i.i.i:                                 ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 20 ; 7 uses
  %i.ea = zext nneg i32 %i.dw to i64              ; 7 uses
  %i.eb = add nsw i64 %i.ea, -1                   ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !19 ; 2 uses
  %i.ee = icmp ult i32 %i.ed, %6
  br i1 %i.ee, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ac, !llvm.loop !434

bb.ac:                                            ; preds = %.preheader.i.i.i
  %.not41.i.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not41.i.i.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = add nsw i64 %i.ea, -2                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !19 ; 2 uses
  %i.ei = icmp ult i32 %i.eh, %6
  br i1 %i.ei, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ae, !llvm.loop !434

bb.ae:                                            ; preds = %bb.ad
  %.not41.i.i.i.1 = icmp eq i64 %i.ef, 0
  br i1 %.not41.i.i.i.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = add nsw i64 %i.ea, -3                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !19 ; 2 uses
  %i.em = icmp ult i32 %i.el, %6
  br i1 %i.em, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ag, !llvm.loop !434

bb.ag:                                            ; preds = %bb.af
  %.not41.i.i.i.2 = icmp eq i64 %i.ej, 0
  br i1 %.not41.i.i.i.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = add nsw i64 %i.ea, -4                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !19 ; 2 uses
  %i.eq = icmp ult i32 %i.ep, %6
  br i1 %i.eq, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ai, !llvm.loop !434

bb.ai:                                            ; preds = %bb.ah
  %.not41.i.i.i.3 = icmp eq i64 %i.en, 0
  br i1 %.not41.i.i.i.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = add nsw i64 %i.ea, -5                   ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !19 ; 2 uses
  %i.eu = icmp ult i32 %i.et, %6
  br i1 %i.eu, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ak, !llvm.loop !434

bb.ak:                                            ; preds = %bb.aj
  %.not41.i.i.i.4 = icmp eq i64 %i.er, 0
  br i1 %.not41.i.i.i.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = add nsw i64 %i.ea, -6                   ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !19 ; 2 uses
  %i.ey = icmp ult i32 %i.ex, %6
  br i1 %i.ey, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.am, !llvm.loop !434

bb.am:                                            ; preds = %bb.al
  %.not41.i.i.i.5 = icmp eq i64 %i.ev, 0
  br i1 %.not41.i.i.i.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr [8 x i8], ptr %i.dz, i64 %i.ea
  %i.fa = getelementptr i8, ptr %i.ez, i64 -56
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !19 ; 2 uses
  %i.fc = icmp ult i32 %i.fb, %6
  br i1 %i.fc, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, !llvm.loop !434

bb.ao:                                            ; preds = %bb.ab
  %i.fd = add i32 %i.dw, -1                       ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 20 ; 4 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !19
  %.not.i.i.i = icmp ugt i32 %6, %i.ff
  br i1 %.not.i.i.i, label %bb.ap, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.fg = zext i32 %i.fd to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !19 ; 3 uses
  %i.fj = icmp ugt i32 %6, %i.fi
  br i1 %i.fj, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = icmp eq i32 %6, %i.fi
  br i1 %i.fk, label %bb.ar, label %.lr.ph.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.fl = add i32 %i.dw, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %bb.as
  %.048.i.i.i = phi i32 [ %..0.i.i.i, %bb.as ], [ %i.fd, %bb.aq ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029..i.i.i, %bb.as ], [ 0, %bb.aq ] ; 3 uses
  %i.fm = sub nsw i32 %.048.i.i.i, %.02947.i.i.i
  %i.fn = sdiv i32 %i.fm, 2
  %i.fo = add nsw i32 %i.fn, %.02947.i.i.i        ; 4 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i = icmp eq i32 %i.fr, %6
  br i1 %.not40.i.i.i, label %.thread.i.i.i, label %bb.as

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.fs = add nsw i32 %i.fo, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.ft = icmp ult i32 %6, %i.fr                  ; 2 uses
  %.029..i.i.i = select i1 %i.ft, i32 %.02947.i.i.i, i32 %i.fo ; 3 uses
  %..0.i.i.i = select i1 %i.ft, i32 %i.fo, i32 %.048.i.i.i ; 2 uses
  %i.fu = add nsw i32 %.029..i.i.i, 1
  %i.fv = icmp eq i32 %..0.i.i.i, %i.fu
  br i1 %i.fv, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, label %.lr.ph.i.i.i

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i: ; preds = %.preheader.i.i.i, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ap
  %.4.i.i.ph.i = phi i32 [ %i.fi, %bb.ap ], [ %i.ed, %.preheader.i.i.i ], [ %i.eh, %bb.ad ], [ %i.el, %bb.af ], [ %i.ep, %bb.ah ], [ %i.et, %bb.aj ], [ %i.ex, %bb.al ], [ %i.fb, %bb.an ] ; 2 uses
  %i.fw = icmp eq i32 %.01228.i, -1
  %i.fx = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i, i32 %.01228.i)
  %spec.select24.i = select i1 %i.fw, i32 %.4.i.i.ph.i, i32 %i.fx
  br label %bb.at

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i: ; preds = %bb.as, %.thread.i.i.i, %bb.ar
  %.sink.i.i.i = phi i32 [ %i.fs, %.thread.i.i.i ], [ %i.fl, %bb.ar ], [ %.029..i.i.i, %bb.as ]
  %i.fy = zext i32 %.sink.i.i.i to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !19
  %.fr.i = freeze i32 %i.ga                       ; 3 uses
  %.not.i = icmp eq i32 %.fr.i, -1
  %i.gb = icmp eq i32 %.01228.i, -1
  %i.gc = call i32 @llvm.umax.i32(i32 %.fr.i, i32 %.01228.i)
  %spec.select.i = select i1 %i.gb, i32 %.fr.i, i32 %i.gc
  br i1 %.not.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.at

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i: ; preds = %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.an, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %bb.ao, %bb.aa
  br label %bb.at

bb.at:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i
  %i.gd = phi i32 [ %.01228.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i ], [ %spec.select.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i ], [ %spec.select24.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit, label %bb.aa, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit: ; preds = %bb.at
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  %i.gf = load ptr, ptr %i.bs, align 8, !tbaa !134
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.by
  invoke void @_ZN11mpq_managerILb0EE3addERK3mpqRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.critedge unwind label %bb.aw

bb.av:                                            ; preds = %.noexc128, %bb.p, %bb.o
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.ay, %bb.ax, %bb.au
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  invoke void @_ZN10polynomial7manager3imp11t_eval_coreI11mpq_managerILb0EEEEvPNS_10polynomialERT_RKNS_9var2valueIS7_NS7_7numeralEEEjjjRSA_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.097222, i32 noundef %5, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN11mpq_managerILb0EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.critedge unwind label %bb.aw

.preheader:                                       ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit151
  %exitcond.not = icmp eq i32 %.096358, %9
  br i1 %exitcond.not, label %_ZNK10polynomial8monomial9degree_ofEj.exit151._crit_edge, label %.lr.ph359

.lr.ph359:                                        ; preds = %.preheader.preheader, %.preheader
  %.096358.in = phi i32 [ %.096358, %.preheader ], [ %.097222, %.preheader.preheader ]
  %.096358 = add i32 %.096358.in, 1               ; 4 uses
  %10 = zext i32 %.096358 to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %10
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !132 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !27 ; 3 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %bb.az

bb.az:                                            ; preds = %.lr.ph359
  %i.go = add i32 %i.gm, -1                       ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 20 ; 8 uses
  %i.gq = zext i32 %i.go to i64                   ; 8 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !19
  %i.gt = icmp eq i32 %i.gs, %6
  br i1 %i.gt, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i139, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gu = icmp ult i32 %i.gm, 8
  br i1 %i.gu, label %.preheader.i.i145.preheader, label %.preheader43.i.i132

.preheader.i.i145.preheader:                      ; preds = %bb.ba
  %.not.i.i147353 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i147353, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %.lr.ph355

.preheader.i.i145:                                ; preds = %.lr.ph355
  %.not.i.i147 = icmp eq i64 %indvars.iv.next.i.i148, 0
  br i1 %.not.i.i147, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %.lr.ph355.1

.lr.ph355.1:                                      ; preds = %.preheader.i.i145
  %indvars.iv.next.i.i148.1 = add nsw i64 %i.gq, -2 ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i148.1
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !19
  %i.gx = icmp eq i32 %i.gw, %6
  br i1 %i.gx, label %.thread.loopexit.split.loop.exit.i.i149, label %.preheader.i.i145.1, !llvm.loop !137

.preheader.i.i145.1:                              ; preds = %.lr.ph355.1
  %.not.i.i147.1 = icmp eq i64 %indvars.iv.next.i.i148.1, 0
  br i1 %.not.i.i147.1, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %.lr.ph355.2

.lr.ph355.2:                                      ; preds = %.preheader.i.i145.1
  %indvars.iv.next.i.i148.2 = add nsw i64 %i.gq, -3 ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i148.2
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !19
  %i.ha = icmp eq i32 %i.gz, %6
  br i1 %i.ha, label %.thread.loopexit.split.loop.exit.i.i149, label %.preheader.i.i145.2, !llvm.loop !137

.preheader.i.i145.2:                              ; preds = %.lr.ph355.2
  %.not.i.i147.2 = icmp eq i64 %indvars.iv.next.i.i148.2, 0
  br i1 %.not.i.i147.2, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %.lr.ph355.3

.lr.ph355.3:                                      ; preds = %.preheader.i.i145.2
  %indvars.iv.next.i.i148.3 = add nsw i64 %i.gq, -4 ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i148.3
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !19
  %i.hd = icmp eq i32 %i.hc, %6
  br i1 %i.hd, label %.thread.loopexit.split.loop.exit.i.i149, label %.preheader.i.i145.3, !llvm.loop !137

.preheader.i.i145.3:                              ; preds = %.lr.ph355.3
  %.not.i.i147.3 = icmp eq i64 %indvars.iv.next.i.i148.3, 0
  br i1 %.not.i.i147.3, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %.lr.ph355.4

.lr.ph355.4:                                      ; preds = %.preheader.i.i145.3
  %indvars.iv.next.i.i148.4 = add nsw i64 %i.gq, -5 ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i148.4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !19
  %i.hg = icmp eq i32 %i.hf, %6
  br i1 %i.hg, label %.thread.loopexit.split.loop.exit.i.i149, label %.preheader.i.i145.4, !llvm.loop !137

.preheader.i.i145.4:                              ; preds = %.lr.ph355.4
  %.not.i.i147.4 = icmp eq i64 %indvars.iv.next.i.i148.4, 0
  br i1 %.not.i.i147.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %.lr.ph355.5

.lr.ph355.5:                                      ; preds = %.preheader.i.i145.4
  %indvars.iv.next.i.i148.5 = add nsw i64 %i.gq, -6 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i148.5
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !19
  %i.hj = icmp eq i32 %i.hi, %6
  br i1 %i.hj, label %.thread.loopexit.split.loop.exit.i.i149, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, !llvm.loop !137

.lr.ph355:                                        ; preds = %.preheader.i.i145.preheader
  %indvars.iv.next.i.i148 = add nsw i64 %i.gq, -1 ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i148
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !19
  %i.hm = icmp eq i32 %i.hl, %6
  br i1 %i.hm, label %.thread.loopexit.split.loop.exit.i.i149, label %.preheader.i.i145, !llvm.loop !137

.preheader43.i.i132:                              ; preds = %bb.ba, %bb.be
  %.026.i.i133 = phi i32 [ %.127.i.i142, %bb.be ], [ 0, %bb.ba ] ; 3 uses
  %.0.i.i134 = phi i32 [ %.1.i.i143, %bb.be ], [ %i.go, %bb.ba ] ; 2 uses
  %i.hn = sub nsw i32 %.0.i.i134, %.026.i.i133
  %i.ho = sdiv i32 %i.hn, 2
  %i.hp = add nsw i32 %i.ho, %.026.i.i133         ; 4 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !19 ; 2 uses
  %i.ht = icmp ugt i32 %6, %i.hs
  br i1 %i.ht, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.preheader43.i.i132
  %i.hu = add nsw i32 %i.hp, 1
  br label %bb.be

bb.bc:                                            ; preds = %.preheader43.i.i132
  %i.hv = icmp ult i32 %6, %i.hs
  br i1 %i.hv, label %bb.bd, label %_ZNK10polynomial8monomial8index_ofEj.exit.i135

bb.bd:                                            ; preds = %bb.bc
  %i.hw = add nsw i32 %i.hp, -1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.127.i.i142 = phi i32 [ %i.hu, %bb.bb ], [ %.026.i.i133, %bb.bd ] ; 2 uses
  %.1.i.i143 = phi i32 [ %.0.i.i134, %bb.bb ], [ %i.hw, %bb.bd ] ; 2 uses
  %.not42.i.i144 = icmp sgt i32 %.127.i.i142, %.1.i.i143
  br i1 %.not42.i.i144, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %.preheader43.i.i132, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i149:          ; preds = %.lr.ph355.5, %.lr.ph355.4, %.lr.ph355.3, %.lr.ph355.2, %.lr.ph355.1, %.lr.ph355
  %indvars.iv.next.i.i148.lcssa = phi i64 [ %indvars.iv.next.i.i148, %.lr.ph355 ], [ %indvars.iv.next.i.i148.1, %.lr.ph355.1 ], [ %indvars.iv.next.i.i148.2, %.lr.ph355.2 ], [ %indvars.iv.next.i.i148.3, %.lr.ph355.3 ], [ %indvars.iv.next.i.i148.4, %.lr.ph355.4 ], [ %indvars.iv.next.i.i148.5, %.lr.ph355.5 ]
  %indvars.le.i.i150 = trunc nuw i64 %indvars.iv.next.i.i148.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i135

_ZNK10polynomial8monomial8index_ofEj.exit.i135:   ; preds = %bb.bc, %.thread.loopexit.split.loop.exit.i.i149
  %.4.i.i136 = phi i32 [ %indvars.le.i.i150, %.thread.loopexit.split.loop.exit.i.i149 ], [ %i.hp, %bb.bc ] ; 2 uses
  %i.hx = icmp eq i32 %.4.i.i136, -1
  br i1 %i.hx, label %_ZNK10polynomial8monomial9degree_ofEj.exit151, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i137

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i137: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i135
  %.pre.i138 = zext i32 %.4.i.i136 to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i139

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i139: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i137, %bb.az
  %.pre-phi.i140 = phi i64 [ %.pre.i138, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i137 ], [ %i.gq, %bb.az ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.pre-phi.i140
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !21
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit151

_ZNK10polynomial8monomial9degree_ofEj.exit151:    ; preds = %bb.be, %.preheader.i.i145, %.preheader.i.i145.1, %.preheader.i.i145.2, %.preheader.i.i145.3, %.preheader.i.i145.4, %.lr.ph355.5, %.preheader.i.i145.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i139, %_ZNK10polynomial8monomial8index_ofEj.exit.i135, %.lr.ph359
  %.0.i141 = phi i32 [ %i.ia, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i139 ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i135 ], [ 0, %.lr.ph359 ], [ 0, %.preheader.i.i145.preheader ], [ 0, %.preheader.i.i145 ], [ 0, %.lr.ph355.5 ], [ 0, %.preheader.i.i145.4 ], [ 0, %.preheader.i.i145.3 ], [ 0, %.preheader.i.i145.2 ], [ 0, %.preheader.i.i145.1 ], [ 0, %bb.be ] ; 2 uses
  %i.ib = icmp ult i32 %.0.i141, %i.dq
  br i1 %i.ib, label %_ZNK10polynomial8monomial9degree_ofEj.exit151._crit_edge, label %.preheader

_ZNK10polynomial8monomial9degree_ofEj.exit151._crit_edge: ; preds = %.preheader, %_ZNK10polynomial8monomial9degree_ofEj.exit151, %.preheader.preheader
  %.096.lcssa = phi i32 [ %umax, %.preheader.preheader ], [ %umax, %.preheader ], [ %.096358, %_ZNK10polynomial8monomial9degree_ofEj.exit151 ] ; 5 uses
  %.2 = phi i32 [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ %.0.i141, %_ZNK10polynomial8monomial9degree_ofEj.exit151 ]
  %i.ic = icmp ult i32 %.097222, %.096.lcssa
  br i1 %i.ic, label %.lr.ph.i153, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179.thread

.lr.ph.i153:                                      ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit151._crit_edge
  %wide.trip.count.i154 = zext i32 %.096.lcssa to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.by, %.lr.ph.i153
  %indvars.iv.i155 = phi i64 [ %i.by, %.lr.ph.i153 ], [ %indvars.iv.next.i159, %bb.by ] ; 2 uses
  %.01228.i156 = phi i32 [ -1, %.lr.ph.i153 ], [ %i.kn, %bb.by ] ; 5 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i155
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !132 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !27 ; 5 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ii = icmp ult i32 %i.ig, 8
  br i1 %i.ii, label %.preheader.i.i.i176, label %bb.bt

.preheader.i.i.i176:                              ; preds = %bb.bg
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 20 ; 7 uses
  %i.ik = zext nneg i32 %i.ig to i64              ; 7 uses
  %i.il = add nsw i64 %i.ik, -1                   ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !19 ; 2 uses
  %i.io = icmp ult i32 %i.in, %6
  br i1 %i.io, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %bb.bh, !llvm.loop !434

bb.bh:                                            ; preds = %.preheader.i.i.i176
  %.not41.i.i.i178 = icmp eq i64 %i.il, 0
  br i1 %.not41.i.i.i178, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ip = add nsw i64 %i.ik, -2                   ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !19 ; 2 uses
  %i.is = icmp ult i32 %i.ir, %6
  br i1 %i.is, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %bb.bj, !llvm.loop !434

bb.bj:                                            ; preds = %bb.bi
  %.not41.i.i.i178.1 = icmp eq i64 %i.ip, 0
  br i1 %.not41.i.i.i178.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.it = add nsw i64 %i.ik, -3                   ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !19 ; 2 uses
  %i.iw = icmp ult i32 %i.iv, %6
  br i1 %i.iw, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %bb.bl, !llvm.loop !434

bb.bl:                                            ; preds = %bb.bk
  %.not41.i.i.i178.2 = icmp eq i64 %i.it, 0
  br i1 %.not41.i.i.i178.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ix = add nsw i64 %i.ik, -4                   ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !19 ; 2 uses
  %i.ja = icmp ult i32 %i.iz, %6
  br i1 %i.ja, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %bb.bn, !llvm.loop !434

bb.bn:                                            ; preds = %bb.bm
  %.not41.i.i.i178.3 = icmp eq i64 %i.ix, 0
  br i1 %.not41.i.i.i178.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jb = add nsw i64 %i.ik, -5                   ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !19 ; 2 uses
  %i.je = icmp ult i32 %i.jd, %6
  br i1 %i.je, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %bb.bp, !llvm.loop !434

bb.bp:                                            ; preds = %bb.bo
  %.not41.i.i.i178.4 = icmp eq i64 %i.jb, 0
  br i1 %.not41.i.i.i178.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jf = add nsw i64 %i.ik, -6                   ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !19 ; 2 uses
  %i.ji = icmp ult i32 %i.jh, %6
  br i1 %i.ji, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %bb.br, !llvm.loop !434

bb.br:                                            ; preds = %bb.bq
  %.not41.i.i.i178.5 = icmp eq i64 %i.jf, 0
  br i1 %.not41.i.i.i178.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jj = getelementptr [8 x i8], ptr %i.ij, i64 %i.ik
  %i.jk = getelementptr i8, ptr %i.jj, i64 -56
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !19 ; 2 uses
  %i.jm = icmp ult i32 %i.jl, %6
  br i1 %i.jm, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, !llvm.loop !434

bb.bt:                                            ; preds = %bb.bg
  %i.jn = add i32 %i.ig, -1                       ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ie, i64 20 ; 4 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !19
  %.not.i.i.i157 = icmp ugt i32 %6, %i.jp
  br i1 %.not.i.i.i157, label %bb.bu, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158

bb.bu:                                            ; preds = %bb.bt
  %i.jq = zext i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !19 ; 3 uses
  %i.jt = icmp ugt i32 %6, %i.js
  br i1 %i.jt, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ju = icmp eq i32 %6, %i.js
  br i1 %i.ju, label %bb.bw, label %.lr.ph.i.i.i161

bb.bw:                                            ; preds = %bb.bv
  %i.jv = add i32 %i.ig, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i167

.lr.ph.i.i.i161:                                  ; preds = %bb.bv, %bb.bx
  %.048.i.i.i162 = phi i32 [ %..0.i.i.i166, %bb.bx ], [ %i.jn, %bb.bv ] ; 2 uses
  %.02947.i.i.i163 = phi i32 [ %.029..i.i.i165, %bb.bx ], [ 0, %bb.bv ] ; 3 uses
  %i.jw = sub nsw i32 %.048.i.i.i162, %.02947.i.i.i163
  %i.jx = sdiv i32 %i.jw, 2
  %i.jy = add nsw i32 %i.jx, %.02947.i.i.i163     ; 4 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i164 = icmp eq i32 %i.kb, %6
  br i1 %.not40.i.i.i164, label %.thread.i.i.i172, label %bb.bx

.thread.i.i.i172:                                 ; preds = %.lr.ph.i.i.i161
  %i.kc = add nsw i32 %i.jy, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i167

bb.bx:                                            ; preds = %.lr.ph.i.i.i161
  %i.kd = icmp ult i32 %6, %i.kb                  ; 2 uses
  %.029..i.i.i165 = select i1 %i.kd, i32 %.02947.i.i.i163, i32 %i.jy ; 3 uses
  %..0.i.i.i166 = select i1 %i.kd, i32 %i.jy, i32 %.048.i.i.i162 ; 2 uses
  %i.ke = add nsw i32 %.029..i.i.i165, 1
  %i.kf = icmp eq i32 %..0.i.i.i166, %i.ke
  br i1 %i.kf, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i167, label %.lr.ph.i.i.i161

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173: ; preds = %.preheader.i.i.i176, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu
  %.4.i.i.ph.i174 = phi i32 [ %i.js, %bb.bu ], [ %i.in, %.preheader.i.i.i176 ], [ %i.ir, %bb.bi ], [ %i.iv, %bb.bk ], [ %i.iz, %bb.bm ], [ %i.jd, %bb.bo ], [ %i.jh, %bb.bq ], [ %i.jl, %bb.bs ] ; 2 uses
  %i.kg = icmp eq i32 %.01228.i156, -1
  %i.kh = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i174, i32 %.01228.i156)
  %spec.select24.i175 = select i1 %i.kg, i32 %.4.i.i.ph.i174, i32 %i.kh
  br label %bb.by

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i167: ; preds = %bb.bx, %.thread.i.i.i172, %bb.bw
  %.sink.i.i.i168 = phi i32 [ %i.kc, %.thread.i.i.i172 ], [ %i.jv, %bb.bw ], [ %.029..i.i.i165, %bb.bx ]
  %i.ki = zext i32 %.sink.i.i.i168 to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !19
  %.fr.i169 = freeze i32 %i.kk                    ; 3 uses
  %.not.i170 = icmp eq i32 %.fr.i169, -1
  %i.kl = icmp eq i32 %.01228.i156, -1
  %i.km = call i32 @llvm.umax.i32(i32 %.fr.i169, i32 %.01228.i156)
  %spec.select.i171 = select i1 %i.kl, i32 %.fr.i169, i32 %i.km
  br i1 %.not.i170, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, label %bb.by

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158: ; preds = %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bs, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i167, %bb.bt, %bb.bf
  br label %bb.by

bb.by:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i167, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173
  %i.kn = phi i32 [ %.01228.i156, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i158 ], [ %spec.select.i171, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i167 ], [ %spec.select24.i175, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i173 ] ; 3 uses
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i155, 1 ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i159, %wide.trip.count.i154
  br i1 %exitcond.not.i160, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179, label %bb.bf, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179: ; preds = %bb.by
  %i.ko = icmp eq i32 %i.kn, -1
  br i1 %i.ko, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179.thread, label %bb.cc

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179.thread: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit151._crit_edge, %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179
  %i.kp = load ptr, ptr %i.bs, align 8, !tbaa !134
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %i.by ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ks = load i8, ptr %i.kr, align 4
  %i.kt = and i8 %i.ks, 1
  %i.ku = icmp eq i8 %i.kt, 0
  br i1 %i.ku, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179.thread
  %i.kv = load i32, ptr %i.kq, align 8, !tbaa !43
  store i32 %i.kv, ptr %i.a, align 8, !tbaa !43
  %i.kw = load i8, ptr %i.b, align 4
  %i.kx = and i8 %i.kw, -2
  store i8 %i.kx, ptr %i.b, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i180

bb.ca:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit179.thread
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.kq)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i180 unwind label %bb.cb

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i180:  ; preds = %bb.ca, %bb.bz
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN11mpq_managerILb0EE3setER3mpqRK3mpz.exit183 unwind label %bb.cb

end_hunk_2
begin_hunk_3_@_ZN10polynomial7manager3imp6t_evalIN17algebraic_numbers7managerEEEvPNS_10polynomialERKNS_9var2valueIT_NS8_7numeralEEERS9_:bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(17) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !130  ; 3 uses
  switch i32 %i.f, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread16 [
    i32 0, label %bb.b
    i32 1, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17algebraic_numbers7manager5resetERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.f

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread, label %.thread

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  tail call void @_ZN17algebraic_numbers7manager3setERNS_4anumERK3mpz(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %bb.f

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread16: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.c, label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread

.thread:                                          ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i17 = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i17, label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread24, label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread

_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread24: ; preds = %.thread
  %i.u = or disjoint i32 %i.t, -2147483648
  store i32 %i.u, ptr %i.s, align 4
  br label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread

bb.c:                                             ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !132  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = add i32 %i.z, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  br label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit

_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i32 [ %i.af, %bb.d ], [ -1, %bb.c ]
  tail call void @_ZN10polynomial10polynomial8lex_sortEjjjR6vectorI7svectorIjjELb1EjERS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, i32 noundef %i.f, i32 noundef %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.ag = load i32, ptr %i.q, align 4
  %.pre.pre = load i32, ptr %i.e, align 8, !tbaa !130 ; 2 uses
  %i.ah = or i32 %i.ag, -2147483648
  store i32 %i.ah, ptr %i.q, align 4
  %i.ai = icmp eq i32 %.pre.pre, 0
  br i1 %i.ai, label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, label %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread

_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread16, %.thread, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread24, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit
  %i.aj = phi i32 [ 1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread24 ], [ %.pre.pre, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.f, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread16 ], [ 1, %.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !131
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !132 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread
  %i.aq = add i32 %i.ao, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  br label %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit

_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit: ; preds = %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread, %bb.e
  %i.av = phi i32 [ 0, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.aj, %bb.e ], [ %i.aj, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread ]
  %.0.i = phi i32 [ -1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit ], [ %i.au, %bb.e ], [ -1, %_ZN10polynomial7manager3imp8lex_sortEPKNS_10polynomialE.exit.thread ]
  tail call void @_ZN10polynomial7manager3imp11t_eval_coreIN17algebraic_numbers7managerEEEvPNS_10polynomialERT_RKNS_9var2valueIS7_NS7_7numeralEEEjjjRSA_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef %i.av, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.f

bb.f:                                             ; preds = %_ZN10polynomial7manager7max_varEPKNS_10polynomialE.exit, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread, %bb.b
  ret void
}

declare void @_ZN17algebraic_numbers7manager5resetERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN17algebraic_numbers7manager3setERNS_4anumERK3mpz(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp11t_eval_coreIN17algebraic_numbers7managerEEEvPNS_10polynomialERT_RKNS_9var2valueIS7_NS7_7numeralEEEjjjRSA_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class._scoped_numeral.95, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %2, ptr %8, align 8, !tbaa !808
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 11 uses
  store ptr null, ptr %i.a, align 8, !tbaa !810
  %i.b = add i32 %4, 1
  %i.c = icmp eq i32 %5, %i.b
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = zext i32 %4 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  invoke void @_ZN17algebraic_numbers7manager3setERNS_4anumERK3mpz(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 2 uses
  %.not210 = icmp eq i32 %i.m, 0
  br i1 %.not210, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.a, %bb.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 2 uses
  %.not = icmp ugt i32 %i.q, %6
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = load ptr, ptr %3, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.q)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN17algebraic_numbers7manager5powerERKNS_4anumEjRS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN17algebraic_numbers7manager3mulERKNS_4anumES3_RS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond242.not, label %.critedge, label %bb.e, !llvm.loop !812

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %3, align 8, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %6)
          to label %bb.l unwind label %bb.as

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN17algebraic_numbers7manager5resetERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.preheader179 unwind label %bb.as

.preheader179:                                    ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader179, %bb.ca
  %.097 = phi i32 [ %.096.lcssa, %bb.ca ], [ %4, %.preheader179 ] ; 8 uses
  %i.af = icmp ult i32 %.097, %5
  br i1 %i.af, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %0, align 8, !tbaa !249, !nonnull !51, !align !52
  %i.ah = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.n
  br i1 %i.ah, label %_ZN10polynomial7manager3imp10checkpointEv.exit, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN10polynomial20polynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN10polynomial20polynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #29
  br label %.body

_ZN10polynomial7manager3imp10checkpointEv.exit:   ; preds = %.noexc
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !131 ; 4 uses
  %i.al = zext i32 %.097 to i64                   ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !132 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i, label %bb.r

bb.r:                                             ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit
  %i.ar = add i32 %i.ap, -1                       ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 8 uses
  %i.at = zext i32 %i.ar to i64                   ; 8 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = icmp eq i32 %i.av, %6
  br i1 %i.aw, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = icmp ult i32 %i.ap, 8
  br i1 %i.ax, label %.preheader.i.i.preheader, label %.preheader43.i.i

.preheader.i.i.preheader:                         ; preds = %bb.s
  %.not.i.i322 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i322, label %.lr.ph.i, label %.lr.ph324

.preheader.i.i:                                   ; preds = %.lr.ph324
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %.lr.ph324.1

.lr.ph324.1:                                      ; preds = %.preheader.i.i
  %indvars.iv.next.i.i.1 = add nsw i64 %i.at, -2  ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.1
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !19
  %i.ba = icmp eq i32 %i.az, %6
  br i1 %i.ba, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.1, !llvm.loop !137

.preheader.i.i.1:                                 ; preds = %.lr.ph324.1
  %.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.i.i.1, label %.lr.ph.i, label %.lr.ph324.2

.lr.ph324.2:                                      ; preds = %.preheader.i.i.1
  %indvars.iv.next.i.i.2 = add nsw i64 %i.at, -3  ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.2
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19
  %i.bd = icmp eq i32 %i.bc, %6
  br i1 %i.bd, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.2, !llvm.loop !137

.preheader.i.i.2:                                 ; preds = %.lr.ph324.2
  %.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 0
  br i1 %.not.i.i.2, label %.lr.ph.i, label %.lr.ph324.3

.lr.ph324.3:                                      ; preds = %.preheader.i.i.2
  %indvars.iv.next.i.i.3 = add nsw i64 %i.at, -4  ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.3
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !19
  %i.bg = icmp eq i32 %i.bf, %6
  br i1 %i.bg, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.3, !llvm.loop !137

.preheader.i.i.3:                                 ; preds = %.lr.ph324.3
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %.not.i.i.3, label %.lr.ph.i, label %.lr.ph324.4

.lr.ph324.4:                                      ; preds = %.preheader.i.i.3
  %indvars.iv.next.i.i.4 = add nsw i64 %i.at, -5  ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19
  %i.bj = icmp eq i32 %i.bi, %6
  br i1 %i.bj, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i.4, !llvm.loop !137

.preheader.i.i.4:                                 ; preds = %.lr.ph324.4
  %.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 0
  br i1 %.not.i.i.4, label %.lr.ph.i, label %.lr.ph324.5

.lr.ph324.5:                                      ; preds = %.preheader.i.i.4
  %indvars.iv.next.i.i.5 = add nsw i64 %i.at, -6  ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.5
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !19
  %i.bm = icmp eq i32 %i.bl, %6
  br i1 %i.bm, label %.thread.loopexit.split.loop.exit.i.i, label %.lr.ph.i, !llvm.loop !137

.lr.ph324:                                        ; preds = %.preheader.i.i.preheader
  %indvars.iv.next.i.i = add nsw i64 %i.at, -1    ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !19
  %i.bp = icmp eq i32 %i.bo, %6
  br i1 %i.bp, label %.thread.loopexit.split.loop.exit.i.i, label %.preheader.i.i, !llvm.loop !137

.preheader43.i.i:                                 ; preds = %bb.s, %bb.w
  %.026.i.i = phi i32 [ %.127.i.i, %bb.w ], [ 0, %bb.s ] ; 3 uses
  %.0.i.i = phi i32 [ %.1.i.i, %bb.w ], [ %i.ar, %bb.s ] ; 2 uses
  %i.bq = sub nsw i32 %.0.i.i, %.026.i.i
  %i.br = sdiv i32 %i.bq, 2
  %i.bs = add nsw i32 %i.br, %.026.i.i            ; 4 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !19 ; 2 uses
  %i.bw = icmp ugt i32 %6, %i.bv
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader43.i.i
  %i.bx = add nsw i32 %i.bs, 1
  br label %bb.w

bb.u:                                             ; preds = %.preheader43.i.i
  %i.by = icmp ult i32 %6, %i.bv
  br i1 %i.by, label %bb.v, label %_ZNK10polynomial8monomial8index_ofEj.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bz = add nsw i32 %i.bs, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.127.i.i = phi i32 [ %i.bx, %bb.t ], [ %.026.i.i, %bb.v ] ; 2 uses
  %.1.i.i = phi i32 [ %.0.i.i, %bb.t ], [ %i.bz, %bb.v ] ; 2 uses
  %.not42.i.i = icmp sgt i32 %.127.i.i, %.1.i.i
  br i1 %.not42.i.i, label %.lr.ph.i, label %.preheader43.i.i, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i:             ; preds = %.lr.ph324.5, %.lr.ph324.4, %.lr.ph324.3, %.lr.ph324.2, %.lr.ph324.1, %.lr.ph324
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i, %.lr.ph324 ], [ %indvars.iv.next.i.i.1, %.lr.ph324.1 ], [ %indvars.iv.next.i.i.2, %.lr.ph324.2 ], [ %indvars.iv.next.i.i.3, %.lr.ph324.3 ], [ %indvars.iv.next.i.i.4, %.lr.ph324.4 ], [ %indvars.iv.next.i.i.5, %.lr.ph324.5 ]
  %indvars.le.i.i = trunc nuw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i

_ZNK10polynomial8monomial8index_ofEj.exit.i:      ; preds = %bb.u, %.thread.loopexit.split.loop.exit.i.i
  %.4.i.i = phi i32 [ %indvars.le.i.i, %.thread.loopexit.split.loop.exit.i.i ], [ %i.bs, %bb.u ] ; 2 uses
  %i.ca = icmp eq i32 %.4.i.i, -1
  br i1 %i.ca, label %.lr.ph.i, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.r, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.at, %bb.r ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.pre-phi.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !21 ; 3 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  %i.cf = add i32 %.097, 1
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 %i.cf) ; 3 uses
  %9 = add i32 %umax, -1                          ; 2 uses
  %exitcond.not334 = icmp eq i32 %.097, %9
  br i1 %exitcond.not334, label %_ZNK10polynomial8monomial9degree_ofEj.exit144._crit_edge, label %.lr.ph336

.lr.ph.i:                                         ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZNK10polynomial8monomial9degree_ofEj.exit, %.preheader.i.i.preheader, %bb.w, %.lr.ph324.5, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4
  %wide.trip.count.i = zext i32 %5 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.aq, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.al, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.01228.i = phi i32 [ -1, %.lr.ph.i ], [ %i.eq, %bb.aq ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !132 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27 ; 5 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = icmp ult i32 %i.cj, 8
  br i1 %i.cl, label %.preheader.i.i.i, label %bb.al

.preheader.i.i.i:                                 ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 7 uses
  %i.cn = zext nneg i32 %i.cj to i64              ; 7 uses
  %i.co = add nsw i64 %i.cn, -1                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !19 ; 2 uses
  %i.cr = icmp ult i32 %i.cq, %6
  br i1 %i.cr, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.z, !llvm.loop !434

bb.z:                                             ; preds = %.preheader.i.i.i
  %.not41.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not41.i.i.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = add nsw i64 %i.cn, -2                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !19 ; 2 uses
  %i.cv = icmp ult i32 %i.cu, %6
  br i1 %i.cv, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ab, !llvm.loop !434

bb.ab:                                            ; preds = %bb.aa
  %.not41.i.i.i.1 = icmp eq i64 %i.cs, 0
  br i1 %.not41.i.i.i.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nsw i64 %i.cn, -3                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !19 ; 2 uses
  %i.cz = icmp ult i32 %i.cy, %6
  br i1 %i.cz, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ad, !llvm.loop !434

bb.ad:                                            ; preds = %bb.ac
  %.not41.i.i.i.2 = icmp eq i64 %i.cw, 0
  br i1 %.not41.i.i.i.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = add nsw i64 %i.cn, -4                   ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !19 ; 2 uses
  %i.dd = icmp ult i32 %i.dc, %6
  br i1 %i.dd, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.af, !llvm.loop !434

bb.af:                                            ; preds = %bb.ae
  %.not41.i.i.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not41.i.i.i.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i64 %i.cn, -5                   ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !19 ; 2 uses
  %i.dh = icmp ult i32 %i.dg, %6
  br i1 %i.dh, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.ah, !llvm.loop !434

bb.ah:                                            ; preds = %bb.ag
  %.not41.i.i.i.4 = icmp eq i64 %i.de, 0
  br i1 %.not41.i.i.i.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = add nsw i64 %i.cn, -6                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !19 ; 2 uses
  %i.dl = icmp ult i32 %i.dk, %6
  br i1 %i.dl, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.aj, !llvm.loop !434

bb.aj:                                            ; preds = %bb.ai
  %.not41.i.i.i.5 = icmp eq i64 %i.di, 0
  br i1 %.not41.i.i.i.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = getelementptr [8 x i8], ptr %i.cm, i64 %i.cn
  %i.dn = getelementptr i8, ptr %i.dm, i64 -56
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !19 ; 2 uses
  %i.dp = icmp ult i32 %i.do, %6
  br i1 %i.dp, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, !llvm.loop !434

bb.al:                                            ; preds = %bb.y
  %i.dq = add i32 %i.cj, -1                       ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 4 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !19
  %.not.i.i.i = icmp ugt i32 %6, %i.ds
  br i1 %.not.i.i.i, label %bb.am, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.dt = zext i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !19 ; 3 uses
  %i.dw = icmp ugt i32 %6, %i.dv
  br i1 %i.dw, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = icmp eq i32 %6, %i.dv
  br i1 %i.dx, label %bb.ao, label %.lr.ph.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dy = add i32 %i.cj, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.an, %bb.ap
  %.048.i.i.i = phi i32 [ %..0.i.i.i, %bb.ap ], [ %i.dq, %bb.an ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029..i.i.i, %bb.ap ], [ 0, %bb.an ] ; 3 uses
  %i.dz = sub nsw i32 %.048.i.i.i, %.02947.i.i.i
  %i.ea = sdiv i32 %i.dz, 2
  %i.eb = add nsw i32 %i.ea, %.02947.i.i.i        ; 4 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i = icmp eq i32 %i.ee, %6
  br i1 %.not40.i.i.i, label %.thread.i.i.i, label %bb.ap

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.ef = add nsw i32 %i.eb, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.eg = icmp ult i32 %6, %i.ee                  ; 2 uses
  %.029..i.i.i = select i1 %i.eg, i32 %.02947.i.i.i, i32 %i.eb ; 3 uses
  %..0.i.i.i = select i1 %i.eg, i32 %i.eb, i32 %.048.i.i.i ; 2 uses
  %i.eh = add nsw i32 %.029..i.i.i, 1
  %i.ei = icmp eq i32 %..0.i.i.i, %i.eh
  br i1 %i.ei, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, label %.lr.ph.i.i.i

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i: ; preds = %.preheader.i.i.i, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am
  %.4.i.i.ph.i = phi i32 [ %i.dv, %bb.am ], [ %i.cq, %.preheader.i.i.i ], [ %i.cu, %bb.aa ], [ %i.cy, %bb.ac ], [ %i.dc, %bb.ae ], [ %i.dg, %bb.ag ], [ %i.dk, %bb.ai ], [ %i.do, %bb.ak ] ; 2 uses
  %i.ej = icmp eq i32 %.01228.i, -1
  %i.ek = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i, i32 %.01228.i)
  %spec.select24.i = select i1 %i.ej, i32 %.4.i.i.ph.i, i32 %i.ek
  br label %bb.aq

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i: ; preds = %bb.ap, %.thread.i.i.i, %bb.ao
  %.sink.i.i.i = phi i32 [ %i.ef, %.thread.i.i.i ], [ %i.dy, %bb.ao ], [ %.029..i.i.i, %bb.ap ]
  %i.el = zext i32 %.sink.i.i.i to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !19
  %.fr.i = freeze i32 %i.en                       ; 3 uses
  %.not.i = icmp eq i32 %.fr.i, -1
  %i.eo = icmp eq i32 %.01228.i, -1
  %i.ep = call i32 @llvm.umax.i32(i32 %.fr.i, i32 %.01228.i)
  %spec.select.i = select i1 %i.eo, i32 %.fr.i, i32 %i.ep
  br i1 %.not.i, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, label %bb.aq

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i: ; preds = %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.ak, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %bb.al, %bb.x
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i
  %i.eq = phi i32 [ %.01228.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i ], [ %spec.select.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i ], [ %spec.select24.i, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit, label %bb.x, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit: ; preds = %bb.aq
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  %i.es = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.al
  invoke void @_ZN17algebraic_numbers7manager3addERKNS_4anumERK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge unwind label %bb.at

bb.as:                                            ; preds = %bb.l, %bb.k
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.av, %bb.au, %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit
  invoke void @_ZN10polynomial7manager3imp11t_eval_coreIN17algebraic_numbers7managerEEEvPNS_10polynomialERT_RKNS_9var2valueIS7_NS7_7numeralEEEjjjRSA_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.097, i32 noundef %5, i32 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN17algebraic_numbers7manager3addERKNS_4anumES3_RS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge unwind label %bb.at

.preheader:                                       ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit144
  %exitcond.not = icmp eq i32 %.096335, %9
  br i1 %exitcond.not, label %_ZNK10polynomial8monomial9degree_ofEj.exit144._crit_edge, label %.lr.ph336

.lr.ph336:                                        ; preds = %.preheader.preheader, %.preheader
  %.096335.in = phi i32 [ %.096335, %.preheader ], [ %.097, %.preheader.preheader ]
  %.096335 = add i32 %.096335.in, 1               ; 4 uses
  %10 = zext i32 %.096335 to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %10
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !132 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !27 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph336
  %i.fb = add i32 %i.ez, -1                       ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 20 ; 8 uses
  %i.fd = zext i32 %i.fb to i64                   ; 8 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !19
  %i.fg = icmp eq i32 %i.ff, %6
  br i1 %i.fg, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i132, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fh = icmp ult i32 %i.ez, 8
  br i1 %i.fh, label %.preheader.i.i138.preheader, label %.preheader43.i.i125

.preheader.i.i138.preheader:                      ; preds = %bb.ax
  %.not.i.i140330 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i140330, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %.lr.ph332

.preheader.i.i138:                                ; preds = %.lr.ph332
  %.not.i.i140 = icmp eq i64 %indvars.iv.next.i.i141, 0
  br i1 %.not.i.i140, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %.lr.ph332.1

.lr.ph332.1:                                      ; preds = %.preheader.i.i138
  %indvars.iv.next.i.i141.1 = add nsw i64 %i.fd, -2 ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next.i.i141.1
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.fk = icmp eq i32 %i.fj, %6
  br i1 %i.fk, label %.thread.loopexit.split.loop.exit.i.i142, label %.preheader.i.i138.1, !llvm.loop !137

.preheader.i.i138.1:                              ; preds = %.lr.ph332.1
  %.not.i.i140.1 = icmp eq i64 %indvars.iv.next.i.i141.1, 0
  br i1 %.not.i.i140.1, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %.lr.ph332.2

.lr.ph332.2:                                      ; preds = %.preheader.i.i138.1
  %indvars.iv.next.i.i141.2 = add nsw i64 %i.fd, -3 ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next.i.i141.2
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !19
  %i.fn = icmp eq i32 %i.fm, %6
  br i1 %i.fn, label %.thread.loopexit.split.loop.exit.i.i142, label %.preheader.i.i138.2, !llvm.loop !137

.preheader.i.i138.2:                              ; preds = %.lr.ph332.2
  %.not.i.i140.2 = icmp eq i64 %indvars.iv.next.i.i141.2, 0
  br i1 %.not.i.i140.2, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %.lr.ph332.3

.lr.ph332.3:                                      ; preds = %.preheader.i.i138.2
  %indvars.iv.next.i.i141.3 = add nsw i64 %i.fd, -4 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next.i.i141.3
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !19
  %i.fq = icmp eq i32 %i.fp, %6
  br i1 %i.fq, label %.thread.loopexit.split.loop.exit.i.i142, label %.preheader.i.i138.3, !llvm.loop !137

.preheader.i.i138.3:                              ; preds = %.lr.ph332.3
  %.not.i.i140.3 = icmp eq i64 %indvars.iv.next.i.i141.3, 0
  br i1 %.not.i.i140.3, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %.lr.ph332.4

.lr.ph332.4:                                      ; preds = %.preheader.i.i138.3
  %indvars.iv.next.i.i141.4 = add nsw i64 %i.fd, -5 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next.i.i141.4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !19
  %i.ft = icmp eq i32 %i.fs, %6
  br i1 %i.ft, label %.thread.loopexit.split.loop.exit.i.i142, label %.preheader.i.i138.4, !llvm.loop !137

.preheader.i.i138.4:                              ; preds = %.lr.ph332.4
  %.not.i.i140.4 = icmp eq i64 %indvars.iv.next.i.i141.4, 0
  br i1 %.not.i.i140.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %.lr.ph332.5

.lr.ph332.5:                                      ; preds = %.preheader.i.i138.4
  %indvars.iv.next.i.i141.5 = add nsw i64 %i.fd, -6 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next.i.i141.5
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !19
  %i.fw = icmp eq i32 %i.fv, %6
  br i1 %i.fw, label %.thread.loopexit.split.loop.exit.i.i142, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, !llvm.loop !137

.lr.ph332:                                        ; preds = %.preheader.i.i138.preheader
  %indvars.iv.next.i.i141 = add nsw i64 %i.fd, -1 ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next.i.i141
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !19
  %i.fz = icmp eq i32 %i.fy, %6
  br i1 %i.fz, label %.thread.loopexit.split.loop.exit.i.i142, label %.preheader.i.i138, !llvm.loop !137

.preheader43.i.i125:                              ; preds = %bb.ax, %bb.bb
  %.026.i.i126 = phi i32 [ %.127.i.i135, %bb.bb ], [ 0, %bb.ax ] ; 3 uses
  %.0.i.i127 = phi i32 [ %.1.i.i136, %bb.bb ], [ %i.fb, %bb.ax ] ; 2 uses
  %i.ga = sub nsw i32 %.0.i.i127, %.026.i.i126
  %i.gb = sdiv i32 %i.ga, 2
  %i.gc = add nsw i32 %i.gb, %.026.i.i126         ; 4 uses
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !19 ; 2 uses
  %i.gg = icmp ugt i32 %6, %i.gf
  br i1 %i.gg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.preheader43.i.i125
  %i.gh = add nsw i32 %i.gc, 1
  br label %bb.bb

bb.az:                                            ; preds = %.preheader43.i.i125
  %i.gi = icmp ult i32 %6, %i.gf
  br i1 %i.gi, label %bb.ba, label %_ZNK10polynomial8monomial8index_ofEj.exit.i128

bb.ba:                                            ; preds = %bb.az
  %i.gj = add nsw i32 %i.gc, -1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %.127.i.i135 = phi i32 [ %i.gh, %bb.ay ], [ %.026.i.i126, %bb.ba ] ; 2 uses
  %.1.i.i136 = phi i32 [ %.0.i.i127, %bb.ay ], [ %i.gj, %bb.ba ] ; 2 uses
  %.not42.i.i137 = icmp sgt i32 %.127.i.i135, %.1.i.i136
  br i1 %.not42.i.i137, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %.preheader43.i.i125, !llvm.loop !138

.thread.loopexit.split.loop.exit.i.i142:          ; preds = %.lr.ph332.5, %.lr.ph332.4, %.lr.ph332.3, %.lr.ph332.2, %.lr.ph332.1, %.lr.ph332
  %indvars.iv.next.i.i141.lcssa = phi i64 [ %indvars.iv.next.i.i141, %.lr.ph332 ], [ %indvars.iv.next.i.i141.1, %.lr.ph332.1 ], [ %indvars.iv.next.i.i141.2, %.lr.ph332.2 ], [ %indvars.iv.next.i.i141.3, %.lr.ph332.3 ], [ %indvars.iv.next.i.i141.4, %.lr.ph332.4 ], [ %indvars.iv.next.i.i141.5, %.lr.ph332.5 ]
  %indvars.le.i.i143 = trunc nuw i64 %indvars.iv.next.i.i141.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i128

_ZNK10polynomial8monomial8index_ofEj.exit.i128:   ; preds = %bb.az, %.thread.loopexit.split.loop.exit.i.i142
  %.4.i.i129 = phi i32 [ %indvars.le.i.i143, %.thread.loopexit.split.loop.exit.i.i142 ], [ %i.gc, %bb.az ] ; 2 uses
  %i.gk = icmp eq i32 %.4.i.i129, -1
  br i1 %i.gk, label %_ZNK10polynomial8monomial9degree_ofEj.exit144, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i130

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i130: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i128
  %.pre.i131 = zext i32 %.4.i.i129 to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i132

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i132: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i130, %bb.aw
  %.pre-phi.i133 = phi i64 [ %.pre.i131, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i130 ], [ %i.fd, %bb.aw ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.pre-phi.i133
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !21
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit144

_ZNK10polynomial8monomial9degree_ofEj.exit144:    ; preds = %bb.bb, %.preheader.i.i138, %.preheader.i.i138.1, %.preheader.i.i138.2, %.preheader.i.i138.3, %.preheader.i.i138.4, %.lr.ph332.5, %.preheader.i.i138.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i132, %_ZNK10polynomial8monomial8index_ofEj.exit.i128, %.lr.ph336
  %.0.i134 = phi i32 [ %i.gn, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i132 ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i128 ], [ 0, %.lr.ph336 ], [ 0, %.preheader.i.i138.preheader ], [ 0, %.preheader.i.i138 ], [ 0, %.lr.ph332.5 ], [ 0, %.preheader.i.i138.4 ], [ 0, %.preheader.i.i138.3 ], [ 0, %.preheader.i.i138.2 ], [ 0, %.preheader.i.i138.1 ], [ 0, %bb.bb ] ; 2 uses
  %i.go = icmp ult i32 %.0.i134, %i.cd
  br i1 %i.go, label %_ZNK10polynomial8monomial9degree_ofEj.exit144._crit_edge, label %.preheader

_ZNK10polynomial8monomial9degree_ofEj.exit144._crit_edge: ; preds = %.preheader, %_ZNK10polynomial8monomial9degree_ofEj.exit144, %.preheader.preheader
  %.096.lcssa = phi i32 [ %umax, %.preheader.preheader ], [ %umax, %.preheader ], [ %.096335, %_ZNK10polynomial8monomial9degree_ofEj.exit144 ] ; 4 uses
  %.2 = phi i32 [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ %.0.i134, %_ZNK10polynomial8monomial9degree_ofEj.exit144 ]
  %i.gp = icmp ult i32 %.097, %.096.lcssa
  br i1 %i.gp, label %.lr.ph.i146, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172.thread

.lr.ph.i146:                                      ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit144._crit_edge
  %wide.trip.count.i147 = zext i32 %.096.lcssa to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bv, %.lr.ph.i146
  %indvars.iv.i148 = phi i64 [ %i.al, %.lr.ph.i146 ], [ %indvars.iv.next.i152, %bb.bv ] ; 2 uses
  %.01228.i149 = phi i32 [ -1, %.lr.ph.i146 ], [ %i.ja, %bb.bv ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i148
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !132 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !27 ; 5 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gv = icmp ult i32 %i.gt, 8
  br i1 %i.gv, label %.preheader.i.i.i169, label %bb.bq

.preheader.i.i.i169:                              ; preds = %bb.bd
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 20 ; 7 uses
  %i.gx = zext nneg i32 %i.gt to i64              ; 7 uses
  %i.gy = add nsw i64 %i.gx, -1                   ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !19 ; 2 uses
  %i.hb = icmp ult i32 %i.ha, %6
  br i1 %i.hb, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %bb.be, !llvm.loop !434

bb.be:                                            ; preds = %.preheader.i.i.i169
  %.not41.i.i.i171 = icmp eq i64 %i.gy, 0
  br i1 %.not41.i.i.i171, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hc = add nsw i64 %i.gx, -2                   ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !19 ; 2 uses
  %i.hf = icmp ult i32 %i.he, %6
  br i1 %i.hf, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %bb.bg, !llvm.loop !434

bb.bg:                                            ; preds = %bb.bf
  %.not41.i.i.i171.1 = icmp eq i64 %i.hc, 0
  br i1 %.not41.i.i.i171.1, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hg = add nsw i64 %i.gx, -3                   ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !19 ; 2 uses
  %i.hj = icmp ult i32 %i.hi, %6
  br i1 %i.hj, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %bb.bi, !llvm.loop !434

bb.bi:                                            ; preds = %bb.bh
  %.not41.i.i.i171.2 = icmp eq i64 %i.hg, 0
  br i1 %.not41.i.i.i171.2, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hk = add nsw i64 %i.gx, -4                   ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !19 ; 2 uses
  %i.hn = icmp ult i32 %i.hm, %6
  br i1 %i.hn, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %bb.bk, !llvm.loop !434

bb.bk:                                            ; preds = %bb.bj
  %.not41.i.i.i171.3 = icmp eq i64 %i.hk, 0
  br i1 %.not41.i.i.i171.3, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ho = add nsw i64 %i.gx, -5                   ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !19 ; 2 uses
  %i.hr = icmp ult i32 %i.hq, %6
  br i1 %i.hr, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %bb.bm, !llvm.loop !434

bb.bm:                                            ; preds = %bb.bl
  %.not41.i.i.i171.4 = icmp eq i64 %i.ho, 0
  br i1 %.not41.i.i.i171.4, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hs = add nsw i64 %i.gx, -6                   ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !19 ; 2 uses
  %i.hv = icmp ult i32 %i.hu, %6
  br i1 %i.hv, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %bb.bo, !llvm.loop !434

bb.bo:                                            ; preds = %bb.bn
  %.not41.i.i.i171.5 = icmp eq i64 %i.hs, 0
  br i1 %.not41.i.i.i171.5, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hw = getelementptr [8 x i8], ptr %i.gw, i64 %i.gx
  %i.hx = getelementptr i8, ptr %i.hw, i64 -56
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !19 ; 2 uses
  %i.hz = icmp ult i32 %i.hy, %6
  br i1 %i.hz, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, !llvm.loop !434

bb.bq:                                            ; preds = %bb.bd
  %i.ia = add i32 %i.gt, -1                       ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gr, i64 20 ; 4 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !19
  %.not.i.i.i150 = icmp ugt i32 %6, %i.ic
  br i1 %.not.i.i.i150, label %bb.br, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151

bb.br:                                            ; preds = %bb.bq
  %i.id = zext i32 %i.ia to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !19 ; 3 uses
  %i.ig = icmp ugt i32 %6, %i.if
  br i1 %i.ig, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ih = icmp eq i32 %6, %i.if
  br i1 %i.ih, label %bb.bt, label %.lr.ph.i.i.i154

bb.bt:                                            ; preds = %bb.bs
  %i.ii = add i32 %i.gt, -2
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i160

.lr.ph.i.i.i154:                                  ; preds = %bb.bs, %bb.bu
  %.048.i.i.i155 = phi i32 [ %..0.i.i.i159, %bb.bu ], [ %i.ia, %bb.bs ] ; 2 uses
  %.02947.i.i.i156 = phi i32 [ %.029..i.i.i158, %bb.bu ], [ 0, %bb.bs ] ; 3 uses
  %i.ij = sub nsw i32 %.048.i.i.i155, %.02947.i.i.i156
  %i.ik = sdiv i32 %i.ij, 2
  %i.il = add nsw i32 %i.ik, %.02947.i.i.i156     ; 4 uses
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !19 ; 2 uses
  %.not40.i.i.i157 = icmp eq i32 %i.io, %6
  br i1 %.not40.i.i.i157, label %.thread.i.i.i165, label %bb.bu

.thread.i.i.i165:                                 ; preds = %.lr.ph.i.i.i154
  %i.ip = add nsw i32 %i.il, -1
  br label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i160

bb.bu:                                            ; preds = %.lr.ph.i.i.i154
  %i.iq = icmp ult i32 %6, %i.io                  ; 2 uses
  %.029..i.i.i158 = select i1 %i.iq, i32 %.02947.i.i.i156, i32 %i.il ; 3 uses
  %..0.i.i.i159 = select i1 %i.iq, i32 %i.il, i32 %.048.i.i.i155 ; 2 uses
  %i.ir = add nsw i32 %.029..i.i.i158, 1
  %i.is = icmp eq i32 %..0.i.i.i159, %i.ir
  br i1 %i.is, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i160, label %.lr.ph.i.i.i154

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166: ; preds = %.preheader.i.i.i169, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br
  %.4.i.i.ph.i167 = phi i32 [ %i.if, %bb.br ], [ %i.ha, %.preheader.i.i.i169 ], [ %i.he, %bb.bf ], [ %i.hi, %bb.bh ], [ %i.hm, %bb.bj ], [ %i.hq, %bb.bl ], [ %i.hu, %bb.bn ], [ %i.hy, %bb.bp ] ; 2 uses
  %i.it = icmp eq i32 %.01228.i149, -1
  %i.iu = call i32 @llvm.umax.i32(i32 %.4.i.i.ph.i167, i32 %.01228.i149)
  %spec.select24.i168 = select i1 %i.it, i32 %.4.i.i.ph.i167, i32 %i.iu
  br label %bb.bv

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i160: ; preds = %bb.bu, %.thread.i.i.i165, %bb.bt
  %.sink.i.i.i161 = phi i32 [ %i.ip, %.thread.i.i.i165 ], [ %i.ii, %bb.bt ], [ %.029..i.i.i158, %bb.bu ]
  %i.iv = zext i32 %.sink.i.i.i161 to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !19
  %.fr.i162 = freeze i32 %i.ix                    ; 3 uses
  %.not.i163 = icmp eq i32 %.fr.i162, -1
  %i.iy = icmp eq i32 %.01228.i149, -1
  %i.iz = call i32 @llvm.umax.i32(i32 %.fr.i162, i32 %.01228.i149)
  %spec.select.i164 = select i1 %i.iy, i32 %.fr.i162, i32 %i.iz
  br i1 %.not.i163, label %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, label %bb.bv

_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151: ; preds = %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bp, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i160, %bb.bq, %bb.bc
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i160, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166
  %i.ja = phi i32 [ %.01228.i149, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread.i151 ], [ %spec.select.i164, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.i160 ], [ %spec.select24.i168, %_ZNK10polynomial8monomial16max_smaller_thanEj.exit.thread20.i166 ] ; 3 uses
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i148, 1 ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %indvars.iv.next.i152, %wide.trip.count.i147
  br i1 %exitcond.not.i153, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172, label %bb.bc, !llvm.loop !435

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172: ; preds = %bb.bv
  %i.jb = icmp eq i32 %i.ja, -1
  br i1 %i.jb, label %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172.thread, label %bb.bx

_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172.thread: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit144._crit_edge, %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172
  %i.jc = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.al
  invoke void @_ZN17algebraic_numbers7manager3setERNS_4anumERK3mpz(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.jd)
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172.thread
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172
  invoke void @_ZN10polynomial7manager3imp11t_eval_coreIN17algebraic_numbers7managerEEEvPNS_10polynomialERT_RKNS_9var2valueIS7_NS7_7numeralEEEjjjRSA_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.097, i32 noundef %.096.lcssa, i32 noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.by unwind label %bb.bw

bb.by:                                            ; preds = %bb.bx, %_ZN10polynomial10polynomial16max_smaller_thanEjjj.exit172.thread
  invoke void @_ZN17algebraic_numbers7manager3addERKNS_4anumES3_RS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bz unwind label %bb.bw

bb.bz:                                            ; preds = %bb.by
  %i.jf = sub i32 %i.cd, %.2
  invoke void @_ZN17algebraic_numbers7manager5powerERKNS_4anumEjRS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.jf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ca unwind label %bb.bw

bb.ca:                                            ; preds = %bb.bz
end_hunk_3
