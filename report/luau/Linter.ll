Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Linter?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4LuauL7similarEPNS_7AstExprES1_:bb.a
bb.au:                                            ; preds = %bb.ar
  %i.fs = icmp eq i32 %i.z, %i.x
  br i1 %i.fs, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr372, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr372, i64 40
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !839 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr341373, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr341373, i64 40
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !839
  %.not282 = icmp eq i64 %i.fv, %i.fy
  br i1 %.not282, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr372, i64 48
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr372, i64 56
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !842 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr341373, i64 48
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr341373, i64 56
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !842
  %.not283 = icmp eq i64 %i.gb, %i.ge
  br i1 %.not283, label %.preheader347, label %.critedge

.preheader347:                                    ; preds = %bb.aw
  %.not286397.not = icmp eq i64 %i.fv, 0
  br i1 %.not286397.not, label %.critedge298.preheader, label %.lr.ph399

.lr.ph399:                                        ; preds = %.preheader347
  %i.gf = load ptr, ptr %i.ft, align 8, !tbaa !843
  %i.gg = load ptr, ptr %i.fw, align 8, !tbaa !843
  br label %bb.ay

bb.ax:                                            ; preds = %bb.az
  %i.gh = add nuw i64 %.0236398, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %i.fv
  br i1 %exitcond.not, label %.critedge298.preheader, label %bb.ay, !llvm.loop !844

.critedge298.preheader:                           ; preds = %bb.ax, %.preheader347
  %.not287400 = icmp eq i64 %i.gb, 0
  br i1 %.not287400, label %.critedge, label %.lr.ph402

.lr.ph402:                                        ; preds = %.critedge298.preheader
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !845
  %i.gj = load ptr, ptr %i.gc, align 8, !tbaa !845
  br label %bb.ba

bb.ay:                                            ; preds = %.lr.ph399, %bb.ax
  %.0236398 = phi i64 [ 0, %.lr.ph399 ], [ %i.gh, %bb.ax ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %.0236398 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !696 ; 2 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %.0236398 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !696
  %.not284 = icmp eq i64 %i.gm, %i.gp
  br i1 %.not284, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !695
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !695
  %bcmp = tail call i32 @bcmp(ptr %i.gq, ptr %i.gr, i64 %i.gm)
  %.not285 = icmp eq i32 %bcmp, 0
  br i1 %.not285, label %bb.ax, label %.critedge

bb.ba:                                            ; preds = %bb.ba, %.lr.ph402
  %.0401 = phi i64 [ 0, %.lr.ph402 ], [ %i.gx, %bb.ba ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.0401
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !343
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.0401
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !343
  %i.gw = tail call fastcc noundef zeroext i1 @_ZN4LuauL7similarEPNS_7AstExprES1_(ptr noundef %i.gt, ptr noundef %i.gv) ; 2 uses
  %i.gx = add nuw i64 %.0401, 1                   ; 2 uses
  %exitcond450.not = icmp ne i64 %i.gx, %i.gb
  %or.cond522.not = select i1 %i.gw, i1 %exitcond450.not, i1 false
  br i1 %or.cond522.not, label %bb.ba, label %.critedge, !llvm.loop !846

bb.bb:                                            ; preds = %bb.au
  %i.gy = icmp eq i32 %i.z, %i.y
  br i1 %i.gy, label %tailrecurse.backedge, label %.critedge

.critedge:                                        ; preds = %tailrecurse.backedge, %bb.c, %bb.s, %bb.v, %bb.aa, %bb.z, %bb.ad, %bb.bb, %bb.as, %bb.at, %bb.x, %bb.u, %bb.q, %bb.az, %bb.ay, %bb.ba, %bb.an, %bb.am, %bb.ap, %bb.al, %bb.aq, %bb.ai, %bb.a, %.critedge298.preheader, %.preheader342, %.preheader, %bb.e, %bb.i, %bb.n, %bb.ac, %bb.ag, %bb.af, %bb.ah, %bb.aw, %bb.av, %bb.ak, %bb.p, %bb.k, %bb.l, %bb.g
  %.27 = phi i1 [ false, %bb.az ], [ false, %bb.a ], [ false, %bb.ak ], [ %i.an, %bb.e ], [ %i.at, %bb.g ], [ %i.az, %bb.i ], [ %i.bk, %bb.l ], [ false, %bb.k ], [ %i.bq, %bb.n ], [ %i.bw, %bb.p ], [ false, %bb.af ], [ true, %.preheader342 ], [ %i.dh, %bb.ac ], [ false, %bb.aw ], [ false, %bb.ag ], [ false, %bb.aq ], [ false, %bb.av ], [ false, %bb.ah ], [ true, %.preheader ], [ %i.gw, %bb.ba ], [ true, %.critedge298.preheader ], [ %i.ef, %bb.ai ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.an ], [ true, %bb.al ], [ false, %bb.ay ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.bb ], [ false, %bb.ad ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.v ], [ false, %bb.as ], [ true, %bb.c ], [ true, %bb.q ], [ false, %tailrecurse.backedge ], [ false, %bb.s ], [ false, %bb.at ]
  ret i1 %.27
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau22LintDuplicateConditionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau22LintDuplicateCondition5visitEPNS_13AstExprBinaryE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.501", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !492  ; 2 uses
  %i.c = and i32 %i.b, -2
  %switch = icmp ne i32 %i.c, 14                  ; 2 uses
  br i1 %switch, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 15
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !495  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !348  ; 3 uses
  %i.i = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !9
  %i.j = icmp ne i32 %i.h, %i.i
  %.not2837 = icmp eq ptr %i.f, null
  %.not28 = or i1 %.not2837, %i.j
  br i1 %.not28, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !492
  %i.m = icmp eq i32 %i.l, 14
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !495  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !348
  %i.r = icmp ne i32 %i.q, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !496  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !348
  %.not = icmp eq i32 %i.v, %i.h
  %.not2938 = icmp eq ptr %i.o, null
  %.not29 = or i1 %.not2938, %i.r
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !492
  %i.y = icmp eq i32 %i.x, 14
  br i1 %i.y, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !492
  %i.ab = icmp eq i32 %i.aa, 14
  br i1 %i.ab, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(28) %i.o, ptr noundef nonnull %0)
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !496 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, ptr noundef nonnull %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !496 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, ptr noundef nonnull %0)
  br label %bb.s

.thread:                                          ; preds = %bb.c, %bb.d, %bb.f, %bb.h, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %.loopexit.split-lp ; 3 uses

_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %.thread
  %.pre = load i32, ptr %i.a, align 4, !tbaa !492
  store ptr %i.an, ptr %2, align 8, !tbaa !847
  store ptr %i.an, ptr %i.am, align 8, !tbaa !849
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !850
  invoke void @_ZN4Luau22LintDuplicateCondition14extractOpChainERSt6vectorIPNS_7AstExprESaIS3_EES3_NS_13AstExprBinary2OpE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1, i32 noundef %.pre)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !849 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !847   ; 3 uses
  %.not.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i, label %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.lr.ph33.i
  %i.as = phi ptr [ %i.aq, %.lr.ph33.i ], [ %.pr, %.loopexit.i ] ; 4 uses
  %i.at = phi ptr [ %i.ap, %.lr.ph33.i ], [ %i.bj, %.loopexit.i ] ; 2 uses
  %storemerge32.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.bk, %.loopexit.i ] ; 5 uses
  %3 = call i64 @llvm.usub.sat.i64(i64 %storemerge32.i, i64 5) ; 2 uses
  %4 = icmp ult i64 %3, %storemerge32.i
  br i1 %4, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %storemerge32.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !343 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.aw = add i64 %.031.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %storemerge32.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.m, !llvm.loop !851

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.031.i = phi i64 [ %3, %.lr.ph.i ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.031.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !343 ; 3 uses
  %i.az = call fastcc noundef zeroext i1 @_ZN4LuauL7similarEPNS_7AstExprES1_(ptr noundef %i.ay, ptr noundef %i.av)
  br i1 %i.az, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !305
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !305 ; 2 uses
  %i.be = icmp eq i32 %i.bb, %i.bd
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !255
  br i1 %i.be, label %bb.o, label %.loopexit.sink.split.i

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !852
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.o, %bb.n
  %.sink40.i = phi i32 [ %i.bh, %bb.o ], [ %i.bd, %bb.n ]
  %.str.207.sink.i = phi ptr [ @.str.207, %bb.o ], [ @.str.208, %bb.n ]
  %i.bi = add i32 %.sink40.i, 1
  invoke void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, ptr noundef nonnull %.str.207.sink.i, i32 noundef %i.bi)
          to label %.loopexit.sink.split.i..loopexit.i_crit_edge unwind label %.loopexit

.loopexit.sink.split.i..loopexit.i_crit_edge:     ; preds = %.loopexit.sink.split.i
  %.pre42 = load ptr, ptr %i.am, align 8, !tbaa !849
  %.pre43 = load ptr, ptr %2, align 8, !tbaa !847
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.l, %.loopexit.sink.split.i..loopexit.i_crit_edge, %bb.k
  %.pr = phi ptr [ %.pre43, %.loopexit.sink.split.i..loopexit.i_crit_edge ], [ %i.as, %bb.k ], [ %i.as, %bb.l ] ; 3 uses
  %i.bj = phi ptr [ %.pre42, %.loopexit.sink.split.i..loopexit.i_crit_edge ], [ %i.at, %bb.k ], [ %i.at, %bb.l ] ; 2 uses
  %i.bk = add nuw i64 %storemerge32.i, 1          ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %.pr to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = icmp ult i64 %i.bk, %i.bo
  br i1 %i.bp, label %bb.k, label %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, !llvm.loop !853

_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit: ; preds = %.loopexit.i, %bb.j
  %i.bq = phi ptr [ %i.aq, %bb.j ], [ %.pr, %.loopexit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit
  %i.br = load ptr, ptr %i.al, align 8, !tbaa !850
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #29
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit:   ; preds = %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

.loopexit:                                        ; preds = %.loopexit.sink.split.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit.i, %.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bv = load ptr, ptr %2, align 8, !tbaa !847   ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit35, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.al, align 8, !tbaa !850
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #29
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit35

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit35: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %lpad.phi

bb.s:                                             ; preds = %bb.i, %bb.a, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau22LintDuplicateCondition5visitEPNS_13AstExprIfElseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !854
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !348
  %i.e = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprIfElseEE5valueE, align 4, !tbaa !9
  %i.f = icmp ne i32 %i.d, %i.e                   ; 2 uses
  br i1 %i.f, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit, label %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i
  %.sroa.0.0 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.0.5, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %.sroa.13.0 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.13.3, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %.sroa.21.0 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.21.5, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %.0 = phi ptr [ %1, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %i.ah, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !836  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef nonnull %0)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !838  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.n, ptr noundef nonnull %0)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %.sroa.13.0, %.sroa.21.0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !343
  store ptr %i.q, ptr %.sroa.13.0, align 8, !tbaa !343
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = ptrtoint ptr %.sroa.13.0 to i64
  %i.s = ptrtoint ptr %.sroa.0.0 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #27
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28
          to label %.noexc17 unwind label %.loopexit ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !343
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !343
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

bb.h:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %.sroa.0.0, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %.noexc17
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.t) #29
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e
  %.sroa.0.5 = phi ptr [ %i.ab, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0.0, %bb.e ] ; 9 uses
  %.pn = phi ptr [ %i.ac, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.13.0, %bb.e ]
  %.sroa.21.5 = phi ptr [ %i.af, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.0, %bb.e ] ; 4 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !854 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !348
  %i.ak = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprIfElseEE5valueE, align 4, !tbaa !9
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.b, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(28) %i.ah, ptr noundef nonnull %0)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %.not.i18 = icmp eq ptr %.sroa.13.3, %.sroa.0.5
  br i1 %.not.i18, label %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = ptrtoint ptr %.sroa.13.3 to i64
  %i.aq = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.lr.ph33.i
  %storemerge32.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.bj, %.loopexit.i ] ; 5 uses
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %storemerge32.i, i64 5) ; 2 uses
  %3 = icmp ult i64 %2, %storemerge32.i
  br i1 %3, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.5, i64 %storemerge32.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !343 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.av = add i64 %.031.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %storemerge32.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.m, !llvm.loop !851

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.031.i = phi i64 [ %2, %.lr.ph.i ], [ %i.av, %bb.l ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.5, i64 %.031.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !343 ; 3 uses
  %i.ay = tail call fastcc noundef zeroext i1 @_ZN4LuauL7similarEPNS_7AstExprES1_(ptr noundef %i.ax, ptr noundef %i.au)
  br i1 %i.ay, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !305
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !305 ; 2 uses
  %i.bd = icmp eq i32 %i.ba, %i.bc
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !255
  br i1 %i.bd, label %bb.o, label %.loopexit.sink.split.i

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !852
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.o, %bb.n
  %.sink40.i = phi i32 [ %i.bg, %bb.o ], [ %i.bc, %bb.n ]
  %.str.207.sink.i = phi ptr [ @.str.207, %bb.o ], [ @.str.208, %bb.n ]
  %i.bh = add i32 %.sink40.i, 1
  invoke void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.be, i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull %.str.207.sink.i, i32 noundef %i.bh)
          to label %.loopexit.i unwind label %.thread43

.thread43:                                        ; preds = %.loopexit.sink.split.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit22

.loopexit.i:                                      ; preds = %bb.l, %.loopexit.sink.split.i, %bb.k
  %i.bj = add nuw i64 %storemerge32.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.as
  br i1 %exitcond.not, label %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, label %bb.k, !llvm.loop !853

_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit: ; preds = %.loopexit.i, %bb.j
  %i.bk = ptrtoint ptr %.sroa.21.5 to i64
  %i.bl = ptrtoint ptr %.sroa.0.5 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.bm) #29
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.c, %bb.b
  %.sroa.21.0.lcssa = phi ptr [ %.sroa.13.0, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.21.0, %bb.c ], [ %.sroa.21.0, %bb.b ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge

.loopexit.split-lp:                               ; preds = %bb.g, %bb.i
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0, %bb.g ], [ %.sroa.0.5, %bb.i ]
  %.sroa.21.1.ph = phi ptr [ %.sroa.13.0, %bb.g ], [ %.sroa.21.5, %bb.i ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.1.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.0.lcssa, %.loopexit ], [ %.sroa.21.1.ph, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.pre = ptrtoint ptr %.sroa.0.1 to i64
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit22

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit22: ; preds = %.thread43, %._crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.aq, %.thread43 ]
  %i.bn = phi { ptr, i32 } [ %lpad.phi, %._crit_edge ], [ %i.bi, %.thread43 ]
  %.sroa.21.148 = phi ptr [ %.sroa.21.1, %._crit_edge ], [ %.sroa.21.5, %.thread43 ]
  %.sroa.0.147 = phi ptr [ %.sroa.0.1, %._crit_edge ], [ %.sroa.0.5, %.thread43 ]
  %i.bo = ptrtoint ptr %.sroa.21.148 to i64
  %i.bp = sub i64 %i.bo, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.147, i64 noundef %i.bp) #29
  resume { ptr, i32 } %i.bn

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit:   ; preds = %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, %bb.a
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau22LintDuplicateCondition5visitEPNS_9AstStatIfE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !348
  %i.e = load i32, ptr @_ZN4Luau7AstRttiINS_9AstStatIfEE5valueE, align 4, !tbaa !9
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i
  %.sroa.0.0 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.0.5, %bb.j ] ; 6 uses
  %.sroa.13.0 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.13.3, %bb.j ] ; 6 uses
  %.sroa.21.0 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %.sroa.21.5, %bb.j ] ; 4 uses
  %.0 = phi ptr [ %1, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE11_M_allocateEm.exit.i ], [ %i.ah, %bb.j ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !320  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef nonnull %0)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !324  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(49) %i.n, ptr noundef nonnull %0)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.sroa.13.0, %.sroa.21.0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !343
  store ptr %i.q, ptr %.sroa.13.0, align 8, !tbaa !343
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %.sroa.13.0 to i64
  %i.s = ptrtoint ptr %.sroa.0.0 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.h, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #27
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !343
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !343
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.i, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

bb.i:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %.sroa.0.0, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %.noexc26
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.t) #29
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f
  %.sroa.0.5 = phi ptr [ %i.ab, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0.0, %bb.f ] ; 9 uses
  %.pn = phi ptr [ %i.ac, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.13.0, %bb.f ]
  %.sroa.21.5 = phi ptr [ %i.af, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.0, %bb.f ] ; 4 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !325 ; 5 uses
  %.not22 = icmp eq ptr %i.ah, null
  br i1 %.not22, label %.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !348
  %i.ak = load i32, ptr @_ZN4Luau7AstRttiINS_9AstStatIfEE5valueE, align 4, !tbaa !9
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(28) %i.ah, ptr noundef nonnull %0)
          to label %.thread unwind label %.loopexit.split-lp

.thread:                                          ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit, %bb.k
  %.not.i27 = icmp eq ptr %.sroa.13.3, %.sroa.0.5
  br i1 %.not.i27, label %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = ptrtoint ptr %.sroa.13.3 to i64
  %i.aq = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph33.i
  %storemerge32.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.bj, %.loopexit.i ] ; 5 uses
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %storemerge32.i, i64 5) ; 2 uses
  %3 = icmp ult i64 %2, %storemerge32.i
  br i1 %3, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.5, i64 %storemerge32.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !343 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.av = add i64 %.031.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %storemerge32.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.n, !llvm.loop !851

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.031.i = phi i64 [ %2, %.lr.ph.i ], [ %i.av, %bb.m ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.5, i64 %.031.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !343 ; 3 uses
  %i.ay = tail call fastcc noundef zeroext i1 @_ZN4LuauL7similarEPNS_7AstExprES1_(ptr noundef %i.ax, ptr noundef %i.au)
  br i1 %i.ay, label %bb.o, label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !305
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !305 ; 2 uses
  %i.bd = icmp eq i32 %i.ba, %i.bc
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !255
  br i1 %i.bd, label %bb.p, label %.loopexit.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !852
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.p, %bb.o
  %.sink40.i = phi i32 [ %i.bg, %bb.p ], [ %i.bc, %bb.o ]
  %.str.207.sink.i = phi ptr [ @.str.207, %bb.p ], [ @.str.208, %bb.o ]
  %i.bh = add i32 %.sink40.i, 1
  invoke void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.be, i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull %.str.207.sink.i, i32 noundef %i.bh)
          to label %.loopexit.i unwind label %.thread53

.thread53:                                        ; preds = %.loopexit.sink.split.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit31

.loopexit.i:                                      ; preds = %bb.m, %.loopexit.sink.split.i, %bb.l
  %i.bj = add nuw i64 %storemerge32.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.as
  br i1 %exitcond.not, label %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, label %bb.l, !llvm.loop !853

_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit: ; preds = %.loopexit.i, %.thread
  %i.bk = ptrtoint ptr %.sroa.21.5 to i64
  %i.bl = ptrtoint ptr %.sroa.0.5 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.bm) #29
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.d, %bb.c
  %.sroa.21.0.lcssa = phi ptr [ %.sroa.13.0, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.21.0, %bb.d ], [ %.sroa.21.0, %bb.c ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge

.loopexit.split-lp:                               ; preds = %bb.h, %bb.k
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0, %bb.h ], [ %.sroa.0.5, %bb.k ]
  %.sroa.21.1.ph = phi ptr [ %.sroa.13.0, %bb.h ], [ %.sroa.21.5, %bb.k ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.1.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.0.lcssa, %.loopexit ], [ %.sroa.21.1.ph, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.pre = ptrtoint ptr %.sroa.0.1 to i64
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit31

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit31: ; preds = %.thread53, %._crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.aq, %.thread53 ]
  %i.bn = phi { ptr, i32 } [ %lpad.phi, %._crit_edge ], [ %i.bi, %.thread53 ]
  %.sroa.21.158 = phi ptr [ %.sroa.21.1, %._crit_edge ], [ %.sroa.21.5, %.thread53 ]
  %.sroa.0.157 = phi ptr [ %.sroa.0.1, %._crit_edge ], [ %.sroa.0.5, %.thread53 ]
  %i.bo = ptrtoint ptr %.sroa.21.158 to i64
  %i.bp = sub i64 %i.bo, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.157, i64 noundef %i.bp) #29
  resume { ptr, i32 } %i.bn

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit:   ; preds = %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit, %bb.b, %bb.a
  %.017 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ false, %_ZN4Luau22LintDuplicateCondition16detectDuplicatesERKSt6vectorIPNS_7AstExprESaIS3_EE.exit ]
  ret i1 %.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau22LintDuplicateCondition14extractOpChainERSt6vectorIPNS_7AstExprESaIS3_EES3_NS_13AstExprBinary2OpE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.pre25 = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !9
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %i.a = phi i32 [ %.pre25, %bb.a ], [ %i.k, %tailrecurse.backedge ] ; 2 uses
  %.tr23 = phi ptr [ %2, %bb.a ], [ %.tr23.be, %tailrecurse.backedge ] ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr23, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !348  ; 2 uses
  %i.d = icmp ne i32 %i.c, %i.a
  %.not20 = icmp eq ptr %.tr23, null              ; 2 uses
  %.not = or i1 %.not20, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr23, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !492
  %i.g = icmp eq i32 %i.f, %3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.tr23, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !495
  tail call void @_ZN4Luau22LintDuplicateCondition14extractOpChainERSt6vectorIPNS_7AstExprESaIS3_EES3_NS_13AstExprBinary2OpE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.i, i32 noundef %3)
  %i.j = getelementptr inbounds nuw i8, ptr %.tr23, i64 40
  %.pre = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !9
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.c, %bb.e
  %i.k = phi i32 [ %.pre, %bb.c ], [ %i.a, %bb.e ]
  %.tr23.be.in = phi ptr [ %i.j, %bb.c ], [ %i.n, %bb.e ]
  %.tr23.be = load ptr, ptr %.tr23.be.in, align 8, !tbaa !343
  br label %tailrecurse

bb.d:                                             ; preds = %bb.b, %tailrecurse
  %i.l = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprGroupEE5valueE, align 4, !tbaa !9
  %i.m = icmp ne i32 %i.c, %i.l
  %.not16 = or i1 %.not20, %i.m
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.tr23, i64 32
  br label %tailrecurse.backedge

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !849  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !850
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.tr23, ptr %i.p, align 8, !tbaa !343
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !849
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %1, align 8, !tbaa !847    ; 4 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 5 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.i, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #27
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #28 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %.tr23, ptr %i.af, align 8, !tbaa !343
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.j, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !850
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ak) #29
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ae, ptr %1, align 8, !tbaa !847
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !849
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.al, ptr %i.q, align 8, !tbaa !850
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau18LintDuplicateLocalD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau18LintDuplicateLocalE, i64 16), ptr %0, align 8, !tbaa !42
end_hunk_0
