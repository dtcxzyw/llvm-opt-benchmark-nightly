Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a
  %wide.trip.count677 = zext nneg i32 %i.zl to i64
  br label %.preheader520

.preheader520:                                    ; preds = %.preheader520.lr.ph, %.preheader520
  %indvars.iv674 = phi i64 [ 0, %.preheader520.lr.ph ], [ %indvars.iv.next675, %.preheader520 ] ; 2 uses
  %i.zq = getelementptr inbounds nuw [72 x i8], ptr %i.zo, i64 %indvars.iv674 ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !279
  %i.zt = ptrtoint ptr %i.zs to i64
  %i.zu = sub i64 %i.zt, %i.zp
  %i.zv = sdiv exact i64 %i.zu, 120
  %i.zw = shl i64 %i.zv, 32
  %i.zx = ashr exact i64 %i.zw, 30
  %i.zy = getelementptr inbounds i8, ptr %.sroa.10443.2, i64 %i.zx ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !7
  %i.aaa = add nsw i32 %i.zz, 1
  store i32 %i.aaa, ptr %i.zy, align 4, !tbaa !7
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !279
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = sub i64 %i.aad, %i.zp
  %i.aaf = sdiv exact i64 %i.aae, 120
  %i.aag = shl i64 %i.aaf, 32
  %i.aah = ashr exact i64 %i.aag, 30
  %i.aai = getelementptr inbounds i8, ptr %.sroa.10443.2, i64 %i.aah ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !7
  %i.aak = add nsw i32 %i.aaj, 1
  store i32 %i.aak, ptr %i.aai, align 4, !tbaa !7
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !279
  %i.aan = ptrtoint ptr %i.aam to i64
  %i.aao = sub i64 %i.aan, %i.zp
  %i.aap = sdiv exact i64 %i.aao, 120
  %i.aaq = shl i64 %i.aap, 32
  %i.aar = ashr exact i64 %i.aaq, 30
  %i.aas = getelementptr inbounds i8, ptr %.sroa.10443.2, i64 %i.aar ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !7
  %i.aau = add nsw i32 %i.aat, 1
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !7
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %.preheader, label %.preheader520

.preheader:                                       ; preds = %.preheader520, %._crit_edge592
  %i.aav = load i32, ptr %i.p, align 4, !tbaa !184 ; 2 uses
  %i.aaw = icmp sgt i32 %i.aav, 0
  br i1 %i.aaw, label %.lr.ph596, label %_ZN20btAlignedObjectArrayIiED2Ev.exit393

.lr.ph596:                                        ; preds = %.preheader
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.aay = ptrtoint ptr %i.td to i64              ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph596, %bb.ct
  %i.aaz = phi i32 [ %i.aav, %.lr.ph596 ], [ %i.ach, %bb.ct ]
  %.5595 = phi i32 [ 0, %.lr.ph596 ], [ %i.aci, %bb.ct ] ; 3 uses
  %i.aba = load ptr, ptr %i.aax, align 8, !tbaa !183 ; 2 uses
  %i.abb = sext i32 %.5595 to i64
  %i.abc = getelementptr inbounds [72 x i8], ptr %i.aba, i64 %i.abb ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !279
  %i.abf = ptrtoint ptr %i.abe to i64
  %i.abg = sub i64 %i.abf, %i.aay
  %i.abh = sdiv exact i64 %i.abg, 120
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abc, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !279
  %i.abk = ptrtoint ptr %i.abj to i64
  %i.abl = sub i64 %i.abk, %i.aay
  %i.abm = sdiv exact i64 %i.abl, 120
  %i.abn = shl i64 %i.abh, 32
  %i.abo = ashr exact i64 %i.abn, 30
  %i.abp = getelementptr inbounds i8, ptr %.sroa.10443.2, i64 %i.abo ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !7 ; 2 uses
  %i.abr = icmp eq i32 %i.abq, 1
  %i.abs = shl i64 %i.abm, 32
  %i.abt = ashr exact i64 %i.abs, 30
  %i.abu = getelementptr inbounds i8, ptr %.sroa.10443.2, i64 %i.abt ; 3 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !7
  %i.abw = icmp eq i32 %i.abv, 1
  %or.cond = select i1 %i.abr, i1 true, i1 %i.abw
  br i1 %or.cond, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.abx = add nsw i32 %i.abq, -1
  store i32 %i.abx, ptr %i.abp, align 4, !tbaa !7
  %i.aby = load i32, ptr %i.abu, align 4, !tbaa !7
  %i.abz = add nsw i32 %i.aby, -1
  store i32 %i.abz, ptr %i.abu, align 4, !tbaa !7
  %i.aca = load i32, ptr %i.p, align 4, !tbaa !184
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr [72 x i8], ptr %i.aba, i64 %i.acb
  %i.acd = getelementptr i8, ptr %i.acc, i64 -72  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.abc, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.abc, ptr noundef nonnull align 8 dereferenceable(68) %i.acd, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.acd, ptr noundef nonnull align 8 dereferenceable(68) %4, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ace = load i32, ptr %i.p, align 4, !tbaa !184
  %i.acf = add nsw i32 %i.ace, -1                 ; 2 uses
  store i32 %i.acf, ptr %i.p, align 4, !tbaa !184
  %i.acg = add nsw i32 %.5595, -1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.ach = phi i32 [ %i.acf, %bb.cs ], [ %i.aaz, %bb.cr ] ; 2 uses
  %.6 = phi i32 [ %i.acg, %bb.cs ], [ %.5595, %bb.cr ]
  %i.aci = add nsw i32 %.6, 1                     ; 2 uses
  %i.acj = icmp slt i32 %i.aci, %i.ach
  br i1 %i.acj, label %bb.cr, label %_ZN20btAlignedObjectArrayIiED2Ev.exit393.thread

_ZN20btAlignedObjectArrayIiED2Ev.exit393:         ; preds = %.preheader
  %.not.i.i.i394.not = icmp eq ptr %.sroa.10443.2, null
  br i1 %.not.i.i.i394.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit397, label %_ZN20btAlignedObjectArrayIiED2Ev.exit393.thread

_ZN20btAlignedObjectArrayIiED2Ev.exit393.thread:  ; preds = %bb.ct, %_ZN20btAlignedObjectArrayIiED2Ev.exit393
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10443.2)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit397 unwind label %_ZN20btAlignedObjectArrayIiED2Ev.exit405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN20btAlignedObjectArrayIiED2Ev.exit397:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit393, %_ZN20btAlignedObjectArrayIiED2Ev.exit393.thread
  %.not.i.i.i398.not = icmp eq ptr %.sroa.10461.2754, null
  br i1 %.not.i.i.i398.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit401, label %bb.cu

bb.cu:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit397
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10461.2754)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit401 unwind label %.thread509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN20btAlignedObjectArrayIiED2Ev.exit405.thread:  ; preds = %bb.bx, %bb.bz, %bb.cb
  %lpad.loopexit597 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZN20btAlignedObjectArrayIiED2Ev.exit405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cl, %bb.cj, %bb.ch, %_ZN20btAlignedObjectArrayIiED2Ev.exit393.thread, %bb.cq
  %lpad.loopexit.split-lp785 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit405

_ZN20btAlignedObjectArrayIiED2Ev.exit405:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bu
  %.sroa.10461.2755 = phi ptr [ %i.rz, %bb.bu ], [ %.sroa.10461.2754, %_ZN20btAlignedObjectArrayIiED2Ev.exit405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn311.pn = phi { ptr, i32 } [ %.pn311, %bb.bu ], [ %lpad.loopexit.split-lp785, %_ZN20btAlignedObjectArrayIiED2Ev.exit405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i406.not = icmp eq ptr %.sroa.10461.2755, null
  br i1 %.not.i.i.i406.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit409, label %bb.cv

bb.cv:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit405.thread, %_ZN20btAlignedObjectArrayIiED2Ev.exit405
  %.pn311.pn763 = phi { ptr, i32 } [ %lpad.loopexit597, %_ZN20btAlignedObjectArrayIiED2Ev.exit405.thread ], [ %.pn311.pn, %_ZN20btAlignedObjectArrayIiED2Ev.exit405 ]
  %.sroa.10461.2755762 = phi ptr [ %.sroa.10461.2754, %_ZN20btAlignedObjectArrayIiED2Ev.exit405.thread ], [ %.sroa.10461.2755, %_ZN20btAlignedObjectArrayIiED2Ev.exit405 ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10461.2755762)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit409 unwind label %bb.cx

_ZN20btAlignedObjectArrayIiED2Ev.exit401:         ; preds = %bb.cu, %_ZN20btAlignedObjectArrayIiED2Ev.exit397, %._crit_edge575
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 1, ptr %i.ack, align 4, !tbaa !234
  %.not.i.i.i.i410.not = icmp eq ptr %.sroa.8481.0, null
  br i1 %.not.i.i.i.i410.not, label %_ZN11btSymMatrixIiED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit401
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.8481.0)
  br label %_ZN11btSymMatrixIiED2Ev.exit

_ZN11btSymMatrixIiED2Ev.exit:                     ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit401, %bb.cw
  ret void

_ZN20btAlignedObjectArrayIiED2Ev.exit409:         ; preds = %.thread509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cv, %_ZN20btAlignedObjectArrayIiED2Ev.exit405, %bb.ab
  %.pn322.pn = phi { ptr, i32 } [ %i.ia, %bb.ab ], [ %.pn311.pn763, %bb.cv ], [ %.pn311.pn, %_ZN20btAlignedObjectArrayIiED2Ev.exit405 ], [ %lpad.loopexit.split-lp797, %.thread509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i.i413.not = icmp eq ptr %.sroa.8481.0, null
  br i1 %.not.i.i.i.i413.not, label %common.resume, label %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread764

_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread764: ; preds = %.thread509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread, %_ZN20btAlignedObjectArrayIiED2Ev.exit409
  %.pn322.pn517 = phi { ptr, i32 } [ %i.pu, %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread ], [ %.pn322.pn, %_ZN20btAlignedObjectArrayIiED2Ev.exit409 ], [ %lpad.loopexit.split-lp, %.thread509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.8481.0)
          to label %common.resume unwind label %bb.cx

bb.cx:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread764, %bb.cv
  %i.acl = landingpad { ptr, i32 }
          catch ptr null
  %i.acm = extractvalue { ptr, i32 } %i.acl, 0
  call void @__clang_call_terminate(ptr %i.acm) #35
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7cutLinkEPKNS_4NodeES2_f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #3 align 2 !guid !670 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 120
  %i.g = trunc i64 %i.f to i32
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.d
  %i.j = sdiv exact i64 %i.i, 120
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call noundef zeroext i1 @_ZN10btSoftBody7cutLinkEiif(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %i.g, i32 noundef %i.k, float noundef %3)
  ret i1 %i.l
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7cutLinkEiif(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !671 {
bb.a:
  %.sroa.7.i96 = alloca <{ [2 x ptr], float, i8, [3 x i8], float, float, float, %class.btVector3, [4 x i8] }>, align 8 ; 4 uses
  %.sroa.7.i82 = alloca <{ [2 x ptr], float, i8, [3 x i8], float, float, float, %class.btVector3, [4 x i8] }>, align 8 ; 4 uses
  %.sroa.7.i = alloca { [3 x ptr], %class.btVector3, float, ptr }, align 8 ; 4 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %5 = alloca [2 x ptr], align 16                 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load float, ptr %i.i, align 4, !tbaa !229 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.m = fsub float %i.l, %i.j
  %i.n = fmul float %3, %i.m
  %i.o = load <2 x float>, ptr %i.e, align 4, !tbaa !229 ; 2 uses
  %i.p = load <2 x float>, ptr %i.h, align 4, !tbaa !229
  %i.q = fsub <2 x float> %i.p, %i.o
  %i.r = insertelement <2 x float> poison, float %3, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fadd <2 x float> %i.o, %i.t
  %i.v = fadd float %i.j, %i.n
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  store <2 x float> %i.u, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.aa = load float, ptr %i.z, align 4, !tbaa !229
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !229 ; 2 uses
  %i.ad = fsub float %i.aa, %i.ac
  %i.ae = fmul float %3, %i.ad
  %i.af = load <2 x float>, ptr %i.y, align 4, !tbaa !229
  %i.ag = load <2 x float>, ptr %i.x, align 4, !tbaa !229 ; 2 uses
  %i.ah = fsub <2 x float> %i.af, %i.ag
  %i.ai = fmul <2 x float> %i.s, %i.ah
  %i.aj = fadd <2 x float> %i.ag, %i.ai           ; 2 uses
  %i.ak = fadd float %i.ac, %i.ae
  %.sroa.3.12.vec.insert.i10.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0 ; 2 uses
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !179 ; 3 uses
  %i.am = getelementptr inbounds [120 x i8], ptr %i.al, i64 %i.c ; 4 uses
  %i.an = getelementptr inbounds [120 x i8], ptr %i.al, i64 %i.f ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [120 x i8], ptr %i.al, i64 %i.aq ; 14 uses
  %6 = getelementptr i8, ptr %i.ar, i64 -240      ; 4 uses
  store ptr %6, ptr %5, align 16, !tbaa !279
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -120   ; 4 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !279
  %i.au = getelementptr i8, ptr %i.ar, i64 -192
  store <2 x float> %i.aj, ptr %i.au, align 8, !tbaa !250
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.ar, i64 -184
  store <2 x float> %.sroa.3.12.vec.insert.i10.i63, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !250
  %i.av = getelementptr i8, ptr %i.ar, i64 -72
  store <2 x float> %i.aj, ptr %i.av, align 8, !tbaa !250
  %.sroa.5.0..sroa_idx24 = getelementptr i8, ptr %i.ar, i64 -64
  store <2 x float> %.sroa.3.12.vec.insert.i10.i63, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !250
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 852 ; 13 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !184 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !183
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.ba = phi ptr [ %.pre, %.lr.ph ], [ %i.bq, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.0120 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ]
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !279 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !279 ; 2 uses
  %7 = icmp eq ptr %i.bd, %i.am
  %8 = icmp eq ptr %i.bf, %i.an
  %or.cond.i = and i1 %7, %8
  %i.bg = icmp eq ptr %i.bd, %i.an
  %i.bh = icmp eq ptr %i.bf, %i.am
  %or.cond8.i = and i1 %i.bg, %i.bh
  %spec.select.i = select i1 %or.cond8.i, i32 1, i32 -1
  %.0.i = select i1 %or.cond.i, i32 0, i32 %spec.select.i ; 3 uses
  %.not60 = icmp eq i32 %.0.i, -1
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %i.bi, ptr noundef null)
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !183 ; 3 uses
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i32, ptr %i.aw, align 4, !tbaa !184
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [72 x i8], ptr %i.bj, i64 %i.bm
  %9 = zext nneg i32 %.0.i to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !279
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %11, ptr %i.bo, align 8, !tbaa !279
  %12 = sub nuw nsw i32 1, %.0.i
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !279
  %i.bp = getelementptr i8, ptr %i.bn, i64 -56
  store ptr %15, ptr %i.bp, align 8, !tbaa !279
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = phi ptr [ %i.bj, %bb.c ], [ %i.ba, %bb.b ]
  %.1 = phi i1 [ true, %bb.c ], [ %.0120, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 6 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !188 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader.lr.ph, label %._crit_edge124

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 15 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ar, i64 -224
  %i.cc = getelementptr i8, ptr %i.ar, i64 -220
  %i.cd = getelementptr i8, ptr %i.ar, i64 -216
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ar, i64 -104
  %i.cg = getelementptr i8, ptr %i.ar, i64 -100
  %i.ch = getelementptr i8, ptr %i.ar, i64 -96
  %wide.trip.count132 = zext nneg i32 %i.bs to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %indvars.iv129 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next130, %bb.e ] ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge124, label %.preheader

bb.f:                                             ; preds = %.preheader, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81
  %indvars.iv125 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next126.pre-phi, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81 ] ; 6 uses
  %.057121 = phi i64 [ 2, %.preheader ], [ %indvars.iv125, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81 ] ; 2 uses
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !187 ; 3 uses
  %i.cj = getelementptr inbounds nuw [72 x i8], ptr %i.ci, i64 %indvars.iv129 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.057121
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !279 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv125
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !279 ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.am
  %i.cq = icmp eq ptr %i.co, %i.an
  %or.cond.i66 = and i1 %i.cp, %i.cq
  %i.cr = icmp eq ptr %i.cm, %i.an
  %i.cs = icmp eq ptr %i.co, %i.am
  %or.cond8.i67 = and i1 %i.cr, %i.cs
  %spec.select.i68 = select i1 %or.cond8.i67, i32 1, i32 -1
  %.0.i69 = select i1 %or.cond.i66, i32 0, i32 %spec.select.i68 ; 3 uses
  %.not = icmp eq i32 %.0.i69, -1
  br i1 %.not, label %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81_crit_edge, label %bb.g

._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81_crit_edge: ; preds = %bb.f
  %.pre136 = add nuw nsw i64 %indvars.iv125, 1
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ct = load <2 x ptr>, ptr %i.cj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ck, i64 56, i1 false)
  %i.cu = load i32, ptr %i.br, align 4, !tbaa !188 ; 7 uses
  %i.cv = load i32, ptr %i.bv, align 8, !tbaa !189
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.h, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.cu, 0
  %i.cx = shl nsw i32 %i.cu, 1
  %i.cy = select i1 %.not.i.i.i, i32 1, i32 %i.cx ; 4 uses
  %i.cz = icmp slt i32 %i.cu, %i.cy
  br i1 %i.cz, label %bb.i, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = sext i32 %i.cy to i64
  %i.db = mul nsw i64 %i.da, 72
  %i.dc = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.db, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.br, align 4, !tbaa !188
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.dd = phi i32 [ %.pre.i.i, %bb.j ], [ %i.cu, %bb.i ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.dc, %bb.j ], [ null, %bb.i ] ; 5 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.dd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.df = icmp eq i32 %i.dd, 1
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.dg = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !187
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dg, ptr noundef nonnull align 8 dereferenceable(72) %i.di, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.dk = load ptr, ptr %i.bu, align 8, !tbaa !187
  %i.dl = getelementptr inbounds nuw [72 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dj, ptr noundef nonnull align 8 dereferenceable(72) %i.dl, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.k

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i32 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.dn = load ptr, ptr %i.bu, align 8, !tbaa !187
  %i.do = getelementptr inbounds nuw [72 x i8], ptr %i.dn, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dm, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !187 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  %i.dq = load i8, ptr %i.bw, align 8, !tbaa !186, !range !245, !noundef !246
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.m, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dp)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i: ; preds = %bb.m, %bb.l, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.bw, align 8, !tbaa !186
  store ptr %.0.i.i.i.i, ptr %i.bu, align 8, !tbaa !187
  store i32 %i.cy, ptr %i.bv, align 8, !tbaa !189
  %.pre2.i.i = load i32, ptr %i.br, align 4, !tbaa !188
  br label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit: ; preds = %bb.g, %bb.h, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i
  %i.ds = phi ptr [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.ci, %bb.h ], [ %i.ci, %bb.g ]
  %i.dt = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.cu, %bb.h ], [ %i.cu, %bb.g ]
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [72 x i8], ptr %i.ds, i64 %i.du ; 2 uses
  store <2 x ptr> %i.ct, ptr %i.dv, align 8
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, i64 56, i1 false)
  %i.dw = load i32, ptr %i.br, align 4, !tbaa !188 ; 2 uses
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.br, align 4, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.dy = load ptr, ptr %i.bu, align 8, !tbaa !187 ; 2 uses
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %i.dy, i64 %indvars.iv129 ; 2 uses
  %i.ea = sext i32 %i.dw to i64
  %i.eb = getelementptr inbounds [72 x i8], ptr %i.dy, i64 %i.ea
  %16 = zext nneg i32 %.0.i69 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !279
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv125
  store ptr %18, ptr %i.ed, align 8, !tbaa !279
  %19 = sub nuw nsw i32 1, %.0.i69
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !279
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.057121
  store ptr %22, ptr %i.ef, align 8, !tbaa !279
  %i.eg = add nuw nsw i64 %indvars.iv125, 1       ; 4 uses
  %.cmp.not = icmp eq i64 %indvars.iv125, 2
  %i.eh = select i1 %.cmp.not, i64 0, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !279 ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !269 ; 4 uses
  %i.em = load i32, ptr %i.aw, align 4, !tbaa !184 ; 4 uses
  %.not26.i.i = icmp sgt i32 %i.em, 0
  br i1 %.not26.i.i, label %.lr.ph.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  %i.en = load ptr, ptr %i.bx, align 8, !tbaa !183 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.em to i64
  br label %bb.o

bb.n:                                             ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [72 x i8], ptr %i.en, i64 %indvars.iv.i.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !279 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %6
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ej
  %or.cond.i.i = select i1 %i.er, i1 %i.eu, i1 false
  br i1 %or.cond.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o
  %i.ev = icmp eq ptr %i.eq, %i.ej
  %i.ew = icmp eq ptr %i.et, %6
  %or.cond23.i.i = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond23.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %bb.n

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i: ; preds = %bb.n, %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i82)
  %i.ex = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy acquire, align 8
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.p, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i, !prof !261

bb.p:                                             ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %i.ez = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  %.not.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8, !tbaa !262
  %i.fa = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i

_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i: ; preds = %bb.q, %bb.p, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %.sroa.0.0.copyload6.i = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.i82, ptr noundef nonnull align 8 dereferenceable(52) getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, i64 16), i64 52, i1 false)
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i
  %i.fb = load ptr, ptr %i.by, align 8, !tbaa !211
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !276
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i
  %.sroa.6.0.i = phi ptr [ %i.el, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i ], [ %i.fc, %bb.r ]
  %i.fd = load i32, ptr %i.aw, align 4, !tbaa !184 ; 7 uses
  %i.fe = load i32, ptr %i.bz, align 8, !tbaa !185
  %i.ff = icmp eq i32 %i.fd, %i.fe
  br i1 %i.ff, label %bb.t, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i85 = icmp eq i32 %i.fd, 0
  %i.fg = shl nsw i32 %i.fd, 1
  %i.fh = select i1 %.not.i.i.i85, i32 1, i32 %i.fg ; 4 uses
  %i.fi = icmp slt i32 %i.fd, %i.fh
  br i1 %i.fi, label %bb.u, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i86 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i.i86, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = sext i32 %i.fh to i64
  %i.fk = mul nsw i64 %i.fj, 72
  %i.fl = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fk, i32 noundef 16)
  %.pre.i.i87 = load i32, ptr %i.aw, align 4, !tbaa !184
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i: ; preds = %bb.v, %bb.u
  %i.fm = phi i32 [ %.pre.i.i87, %bb.v ], [ %i.fd, %bb.u ] ; 4 uses
  %.0.i.i.i.i88 = phi ptr [ %i.fl, %bb.v ], [ null, %bb.u ] ; 4 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.i.i.i.i91, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i91:                                 ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i92 = zext nneg i32 %i.fm to i64 ; 2 uses
  %xtraiter159 = and i64 %wide.trip.count.i.i.i.i92, 1
  %i.fo = icmp eq i32 %i.fm, 1
  br i1 %i.fo, label %.epil.preheader158, label %.lr.ph.i.i.i.i91.new

.lr.ph.i.i.i.i91.new:                             ; preds = %.lr.ph.i.i.i.i91
  %unroll_iter162 = and i64 %wide.trip.count.i.i.i.i92, 2147483646
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i91.new
  %indvars.iv.i.i.i.i93 = phi i64 [ 0, %.lr.ph.i.i.i.i91.new ], [ %indvars.iv.next.i.i.i.i94.1, %bb.w ] ; 4 uses
  %niter163 = phi i64 [ 0, %.lr.ph.i.i.i.i91.new ], [ %niter163.next.1, %bb.w ]
  %i.fp = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i88, i64 %indvars.iv.i.i.i.i93
  %i.fq = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.fr = getelementptr inbounds nuw [72 x i8], ptr %i.fq, i64 %indvars.iv.i.i.i.i93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fp, ptr noundef nonnull align 8 dereferenceable(72) %i.fr, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i94 = or disjoint i64 %indvars.iv.i.i.i.i93, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i88, i64 %indvars.iv.next.i.i.i.i94
  %i.ft = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.fu = getelementptr inbounds nuw [72 x i8], ptr %i.ft, i64 %indvars.iv.next.i.i.i.i94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fs, ptr noundef nonnull align 8 dereferenceable(72) %i.fu, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i94.1 = add nuw nsw i64 %indvars.iv.i.i.i.i93, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.w

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader158

.epil.preheader158:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i91
  %indvars.iv.i.i.i.i93.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i91 ], [ %indvars.iv.next.i.i.i.i94.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i32 %i.fm to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.fv = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i88, i64 %indvars.iv.i.i.i.i93.epil.init
  %i.fw = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.fx = getelementptr inbounds nuw [72 x i8], ptr %i.fw, i64 %indvars.iv.i.i.i.i93.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(72) %i.fx, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader158, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %i.fy = load ptr, ptr %i.bx, align 8, !tbaa !183 ; 2 uses
  %.not.i5.i.i.i89 = icmp eq ptr %i.fy, null
  br i1 %.not.i5.i.i.i89, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  %i.fz = load i8, ptr %i.ca, align 8, !tbaa !182, !range !245, !noundef !246
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.y, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fy)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i: ; preds = %bb.y, %bb.x, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.ca, align 8, !tbaa !182
  store ptr %.0.i.i.i.i88, ptr %i.bx, align 8, !tbaa !183
  store i32 %i.fh, ptr %i.bz, align 8, !tbaa !185
  %.pre2.i.i90 = load i32, ptr %i.aw, align 4, !tbaa !184
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit: ; preds = %bb.s, %bb.t, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i
  %i.gb = phi i32 [ %.pre2.i.i90, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i ], [ %i.fd, %bb.t ], [ %i.fd, %bb.s ]
  %i.gc = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.gd = sext i32 %i.gb to i64
  %i.ge = getelementptr inbounds [72 x i8], ptr %i.gc, i64 %i.gd ; 3 uses
  store ptr %.sroa.0.0.copyload6.i, ptr %i.ge, align 8
  %.sroa.6.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i83, align 8
  %.sroa.7.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i84, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i82, i64 56, i1 false)
  %i.gf = load i32, ptr %i.aw, align 4, !tbaa !184
  %i.gg = add nsw i32 %i.gf, 1                    ; 3 uses
  store i32 %i.gg, ptr %i.aw, align 4, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i82)
  %i.gh = load ptr, ptr %i.bx, align 8, !tbaa !183 ; 2 uses
  %i.gi = sext i32 %i.gg to i64
  %i.gj = getelementptr [72 x i8], ptr %i.gh, i64 %i.gi ; 3 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -56
  store ptr %6, ptr %i.gk, align 8, !tbaa !279
  %i.gl = getelementptr i8, ptr %i.gj, i64 -48
  store ptr %i.ej, ptr %i.gl, align 8, !tbaa !279
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.gn = load float, ptr %i.cb, align 8, !tbaa !229
  %i.go = load float, ptr %i.gm, align 4, !tbaa !229
  %i.gp = fsub float %i.gn, %i.go                 ; 2 uses
  %i.gq = load float, ptr %i.cc, align 4, !tbaa !229
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !229
  %i.gt = fsub float %i.gq, %i.gs                 ; 2 uses
  %i.gu = load float, ptr %i.cd, align 8, !tbaa !229
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !229
  %i.gx = fsub float %i.gu, %i.gw                 ; 2 uses
  %i.gy = fmul float %i.gt, %i.gt
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.gy)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.gz)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ha)
  %i.hb = getelementptr i8, ptr %i.gj, i64 -40
  store float %sqrt.i.i, ptr %i.hb, align 8, !tbaa !289
  store i8 1, ptr %i.ce, align 4, !tbaa !234
  %.pre134 = load ptr, ptr %i.ei, align 8, !tbaa !279
  %.pre135 = load ptr, ptr %i.ek, align 8, !tbaa !269
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit: ; preds = %bb.o, %.critedge.i.i, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit
  %i.hc = phi ptr [ %i.gh, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.en, %.critedge.i.i ], [ %i.en, %bb.o ]
  %i.hd = phi i32 [ %i.gg, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.em, %.critedge.i.i ], [ %i.em, %bb.o ] ; 2 uses
  %i.he = phi ptr [ %.pre135, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.el, %.critedge.i.i ], [ %i.el, %bb.o ] ; 2 uses
  %i.hf = phi ptr [ %.pre134, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.ej, %.critedge.i.i ], [ %i.ej, %bb.o ] ; 6 uses
  %.not26.i.i70 = icmp sgt i32 %i.hd, 0
  br i1 %.not26.i.i70, label %.lr.ph.i.i73, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71

.lr.ph.i.i73:                                     ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  %wide.trip.count.i.i74 = zext nneg i32 %i.hd to i64
  br label %bb.aa

bb.z:                                             ; preds = %.critedge.i.i77
  %indvars.iv.next.i.i79 = add nuw nsw i64 %indvars.iv.i.i75, 1 ; 2 uses
  %exitcond.not.i.i80 = icmp eq i64 %indvars.iv.next.i.i79, %wide.trip.count.i.i74
  br i1 %exitcond.not.i.i80, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i73
  %indvars.iv.i.i75 = phi i64 [ 0, %.lr.ph.i.i73 ], [ %indvars.iv.next.i.i79, %bb.z ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [72 x i8], ptr %i.hc, i64 %indvars.iv.i.i75 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !279 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.at
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.hf
  %or.cond.i.i76 = select i1 %i.hj, i1 %i.hm, i1 false
  br i1 %or.cond.i.i76, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81, label %.critedge.i.i77

.critedge.i.i77:                                  ; preds = %bb.aa
  %i.hn = icmp eq ptr %i.hi, %i.hf
  %i.ho = icmp eq ptr %i.hl, %i.at
  %or.cond23.i.i78 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond23.i.i78, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81, label %bb.z

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71: ; preds = %bb.z, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i96)
  %i.hp = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy acquire, align 8
  %i.hq = icmp eq i8 %i.hp, 0
  br i1 %i.hq, label %bb.ab, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i97, !prof !261

bb.ab:                                            ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71
  %i.hr = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  %.not.i.i117 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i117, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i97, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8, !tbaa !262
  %i.hs = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i97

_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i97: ; preds = %bb.ac, %bb.ab, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71
  %.sroa.0.0.copyload6.i98 = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.i96, ptr noundef nonnull align 8 dereferenceable(52) getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, i64 16), i64 52, i1 false)
  %.not.i99 = icmp eq ptr %i.he, null
  br i1 %.not.i99, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i97
  %i.ht = load ptr, ptr %i.by, align 8, !tbaa !211
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !276
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i97
  %.sroa.6.0.i100 = phi ptr [ %i.he, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i97 ], [ %i.hu, %bb.ad ]
  %i.hv = load i32, ptr %i.aw, align 4, !tbaa !184 ; 7 uses
  %i.hw = load i32, ptr %i.bz, align 8, !tbaa !185
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.af, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i103 = icmp eq i32 %i.hv, 0
  %i.hy = shl nsw i32 %i.hv, 1
  %i.hz = select i1 %.not.i.i.i103, i32 1, i32 %i.hy ; 4 uses
  %i.ia = icmp slt i32 %i.hv, %i.hz
  br i1 %i.ia, label %bb.ag, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.i104 = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i.i.i104, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i106, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ib = sext i32 %i.hz to i64
  %i.ic = mul nsw i64 %i.ib, 72
  %i.id = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ic, i32 noundef 16)
  %.pre.i.i105 = load i32, ptr %i.aw, align 4, !tbaa !184
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i106

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i106: ; preds = %bb.ah, %bb.ag
  %i.ie = phi i32 [ %.pre.i.i105, %bb.ah ], [ %i.hv, %bb.ag ] ; 4 uses
  %.0.i.i.i.i107 = phi ptr [ %i.id, %bb.ah ], [ null, %bb.ag ] ; 4 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.i.i.i.i112, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108

.lr.ph.i.i.i.i112:                                ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i106
  %wide.trip.count.i.i.i.i113 = zext nneg i32 %i.ie to i64 ; 2 uses
  %xtraiter165 = and i64 %wide.trip.count.i.i.i.i113, 1
  %i.ig = icmp eq i32 %i.ie, 1
  br i1 %i.ig, label %.epil.preheader164, label %.lr.ph.i.i.i.i112.new

.lr.ph.i.i.i.i112.new:                            ; preds = %.lr.ph.i.i.i.i112
  %unroll_iter168 = and i64 %wide.trip.count.i.i.i.i113, 2147483646
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i112.new
  %indvars.iv.i.i.i.i114 = phi i64 [ 0, %.lr.ph.i.i.i.i112.new ], [ %indvars.iv.next.i.i.i.i115.1, %bb.ai ] ; 4 uses
  %niter169 = phi i64 [ 0, %.lr.ph.i.i.i.i112.new ], [ %niter169.next.1, %bb.ai ]
  %i.ih = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i107, i64 %indvars.iv.i.i.i.i114
  %i.ii = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.ij = getelementptr inbounds nuw [72 x i8], ptr %i.ii, i64 %indvars.iv.i.i.i.i114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ih, ptr noundef nonnull align 8 dereferenceable(72) %i.ij, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i115 = or disjoint i64 %indvars.iv.i.i.i.i114, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i107, i64 %indvars.iv.next.i.i.i.i115
  %i.il = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.im = getelementptr inbounds nuw [72 x i8], ptr %i.il, i64 %indvars.iv.next.i.i.i.i115
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ik, ptr noundef nonnull align 8 dereferenceable(72) %i.im, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i115.1 = add nuw nsw i64 %indvars.iv.i.i.i.i114, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa, label %bb.ai

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108, label %.epil.preheader164

.epil.preheader164:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa, %.lr.ph.i.i.i.i112
  %indvars.iv.i.i.i.i114.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i112 ], [ %indvars.iv.next.i.i.i.i115.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod167 = trunc i32 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.in = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i107, i64 %indvars.iv.i.i.i.i114.epil.init
  %i.io = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.ip = getelementptr inbounds nuw [72 x i8], ptr %i.io, i64 %indvars.iv.i.i.i.i114.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef nonnull align 8 dereferenceable(72) %i.ip, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108: ; preds = %.epil.preheader164, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i106
  %i.iq = load ptr, ptr %i.bx, align 8, !tbaa !183 ; 2 uses
  %.not.i5.i.i.i109 = icmp eq ptr %i.iq, null
  br i1 %.not.i5.i.i.i109, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110, label %bb.aj

bb.aj:                                            ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108
  %i.ir = load i8, ptr %i.ca, align 8, !tbaa !182, !range !245, !noundef !246
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.ak, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.iq)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110: ; preds = %bb.ak, %bb.aj, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108
  store i8 1, ptr %i.ca, align 8, !tbaa !182
  store ptr %.0.i.i.i.i107, ptr %i.bx, align 8, !tbaa !183
  store i32 %i.hz, ptr %i.bz, align 8, !tbaa !185
  %.pre2.i.i111 = load i32, ptr %i.aw, align 4, !tbaa !184
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118: ; preds = %bb.ae, %bb.af, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110
  %i.it = phi i32 [ %.pre2.i.i111, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110 ], [ %i.hv, %bb.af ], [ %i.hv, %bb.ae ]
  %i.iu = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.iv = sext i32 %i.it to i64
  %i.iw = getelementptr inbounds [72 x i8], ptr %i.iu, i64 %i.iv ; 3 uses
  store ptr %.sroa.0.0.copyload6.i98, ptr %i.iw, align 8
  %.sroa.6.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %.sroa.6.0.i100, ptr %.sroa.6.0..sroa_idx.i101, align 8
  %.sroa.7.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i102, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i96, i64 56, i1 false)
  %i.ix = load i32, ptr %i.aw, align 4, !tbaa !184
  %i.iy = add nsw i32 %i.ix, 1                    ; 2 uses
  store i32 %i.iy, ptr %i.aw, align 4, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i96)
  %i.iz = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.ja = sext i32 %i.iy to i64
  %i.jb = getelementptr [72 x i8], ptr %i.iz, i64 %i.ja ; 3 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 -56
  store ptr %i.at, ptr %i.jc, align 8, !tbaa !279
  %i.jd = getelementptr i8, ptr %i.jb, i64 -48
  store ptr %i.hf, ptr %i.jd, align 8, !tbaa !279
  %i.je = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.jf = load float, ptr %i.cf, align 8, !tbaa !229
  %i.jg = load float, ptr %i.je, align 4, !tbaa !229
  %i.jh = fsub float %i.jf, %i.jg                 ; 2 uses
  %i.ji = load float, ptr %i.cg, align 4, !tbaa !229
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !229
  %i.jl = fsub float %i.ji, %i.jk                 ; 2 uses
  %i.jm = load float, ptr %i.ch, align 8, !tbaa !229
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !229
  %i.jp = fsub float %i.jm, %i.jo                 ; 2 uses
  %i.jq = fmul float %i.jl, %i.jl
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jh, float %i.jh, float %i.jq)
  %i.js = tail call noundef float @llvm.fmuladd.f32(float %i.jp, float %i.jp, float %i.jr)
  %sqrt.i.i72 = tail call noundef float @llvm.sqrt.f32(float %i.js)
  %i.jt = getelementptr i8, ptr %i.jb, i64 -40
  store float %sqrt.i.i72, ptr %i.jt, align 8, !tbaa !289
  store i8 1, ptr %i.ce, align 4, !tbaa !234
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81: ; preds = %.critedge.i.i77, %bb.aa, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81_crit_edge, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118
  %indvars.iv.next126.pre-phi = phi i64 [ %.pre136, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81_crit_edge ], [ %i.eg, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118 ], [ %i.eg, %bb.aa ], [ %i.eg, %.critedge.i.i77 ] ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next126.pre-phi, 3
  br i1 %exitcond128.not, label %bb.e, label %bb.f

._crit_edge124:                                   ; preds = %bb.e, %._crit_edge
  br i1 %.0.lcssa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge124
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ar, i64 -136
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !268
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.ju, ptr noundef %i.jw)
  %i.jx = getelementptr i8, ptr %i.ar, i64 -16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !268
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.ju, ptr noundef %i.jy)
  %i.jz = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.ka = add nsw i32 %i.jz, -2
  store i32 %i.ka, ptr %i.ao, align 4, !tbaa !180
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i1 %.0.lcssa
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7rayTestERK9btVector3S2_RNS_8sRayCastE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 20)) %3) local_unnamed_addr #3 align 2 !guid !672 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.b = load i32, ptr %i.a, align 4, !tbaa !188
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !675
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !676
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !677
  %i.i = tail call noundef i32 @_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext false)
  %i.j = icmp ne i32 %i.i, 0
  ret i1 %i.j
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #3 align 2 !guid !682 {
bb.a:
  %1 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  tail call void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !188
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !279, !noalias !683
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !279, !noalias !683
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !279, !noalias !683
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.r = load <4 x float>, ptr %1, align 16, !alias.scope !685 ; 2 uses
  %i.s = load <4 x float>, ptr %i.n, align 4, !tbaa !229, !noalias !685 ; 4 uses
  %i.t = fcmp olt <4 x float> %i.s, %i.r
  %i.u = select <4 x i1> %i.t, <4 x float> %i.s, <4 x float> %i.r ; 2 uses
  %i.v = load <4 x float>, ptr %i.q, align 4, !tbaa !229, !noalias !685 ; 4 uses
  %i.w = fcmp olt <4 x float> %i.v, %i.u
  %i.x = select <4 x i1> %i.w, <4 x float> %i.v, <4 x float> %i.u
  store <4 x float> %i.x, ptr %1, align 16, !tbaa !229, !alias.scope !683
  %i.y = load <4 x float>, ptr %i.f, align 16, !alias.scope !685 ; 2 uses
  %i.z = fcmp olt <4 x float> %i.y, %i.s
  %i.aa = select <4 x i1> %i.z, <4 x float> %i.s, <4 x float> %i.y ; 2 uses
  %i.ab = fcmp olt <4 x float> %i.aa, %i.v
  %i.ac = select <4 x i1> %i.ab, <4 x float> %i.v, <4 x float> %i.aa ; 2 uses
  %i.ad = fadd <4 x float> %i.ac, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ae, ptr %i.f, align 16, !tbaa !229, !alias.scope !683
  %i.af = call noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull %i.h)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !188
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !686 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %8 = alloca %"struct.btSoftBody::RayFromToCaster", align 8 ; 11 uses
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !229
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !229
  %i.h = fsub float %i.e, %i.g                    ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.j = load <2 x float>, ptr %2, align 4, !tbaa !229
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !229
  %i.l = fsub <2 x float> %i.j, %i.k              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.l, %i.l
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.m)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.o)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.l, %i.s
  store <2 x float> %i.t, ptr %7, align 8, !tbaa !229
  %i.u = fmul float %i.h, %i.q
  store float %i.u, ptr %i.i, align 8, !tbaa !229
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.w = load i32, ptr %i.v, align 4, !tbaa !188  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %wide.trip.count41 = zext nneg i32 %i.w to i64  ; 2 uses
  br i1 %6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.035.us = phi i32 [ %spec.select, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !187
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %indvars.iv38 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !279
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !279
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !279
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load float, ptr %3, align 4, !tbaa !229
  %i.al = call noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, float noundef %i.ak)
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %i.an = zext i1 %i.am to i32
  %spec.select = add nuw nsw i32 %.035.us, %i.an  ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.e, %.lr.ph.split.us, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %spec.select, %.lr.ph.split.us ], [ %.1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %.035 = phi i32 [ %.1, %bb.e ], [ 0, %.lr.ph ]  ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !187
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.ao, i64 %indvars.iv ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !279
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !279
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !279
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load float, ptr %3, align 4, !tbaa !229
  %i.ba = call noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.ay, float noundef %i.az) ; 2 uses
  %i.bb = fcmp ogt float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.bc = add nsw i32 %.035, 1
  store i32 3, ptr %4, align 4, !tbaa !687
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bd, ptr %5, align 4, !tbaa !7
  store float %i.ba, ptr %3, align 4, !tbaa !229
  br label %bb.e
end_hunk_0
