inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 250
begin_hunk_0_@_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f:bb.a
  %i.bp = extractelement <2 x float> %i.ar, i64 0
  %i.bq = fadd float %i.bp, %i.bm                 ; 3 uses
  %i.br = fadd float %i.bl, %i.bn                 ; 3 uses
  %i.bs = fadd float %i.aq, %i.bo                 ; 3 uses
  %i.bt = fsub float %i.g, %i.bq                  ; 4 uses
  %i.bu = fsub float %i.f, %i.br                  ; 4 uses
  %i.bv = fsub float %i.m, %i.bs                  ; 4 uses
  %i.bw = fsub float %i.a, %i.bq                  ; 4 uses
  %i.bx = fsub float %i.c, %i.br                  ; 4 uses
  %i.by = fsub float %i.k, %i.bs                  ; 4 uses
  %i.bz = fneg float %i.bx
  %i.ca = fmul float %i.bv, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.by, float %i.ca)
  %i.cc = fneg float %i.by
  %i.cd = fmul float %i.bt, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.cd)
  %i.cf = fneg float %i.bw
  %i.cg = fmul float %i.bu, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bx, float %i.cg)
  %i.ci = fmul float %i.ab, %i.ce
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.y, float %i.cb, float %i.ci)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ch, float %i.cj)
  %i.cl = fcmp ogt float %i.ck, f0xB5A00000
  br i1 %i.cl, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.cm = fsub float %i.o, %i.bq                  ; 4 uses
  %i.cn = fsub float %i.r, %i.br                  ; 4 uses
  %i.co = fsub float %i.u, %i.bs                  ; 4 uses
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.by, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.co, float %i.cq)
  %i.cs = fneg float %i.co
  %i.ct = fmul float %i.bw, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cm, float %i.ct)
  %i.cv = fneg float %i.cm
  %i.cw = fmul float %i.bx, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cn, float %i.cw)
  %i.cy = fmul float %i.ab, %i.cu
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.y, float %i.cr, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.cx, float %i.cz)
  %i.db = fcmp ogt float %i.da, f0xB5A00000
  br i1 %i.db, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.dc = fneg float %i.bu
  %i.dd = fmul float %i.co, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bv, float %i.dd)
  %i.df = fneg float %i.bv
  %i.dg = fmul float %i.cm, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.co, float %i.bt, float %i.dg)
  %i.di = fneg float %i.bt
  %i.dj = fmul float %i.cn, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.bu, float %i.dj)
  %i.dl = fmul float %i.ab, %i.dh
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.y, float %i.de, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.dk, float %i.dm)
  %i.do = fcmp ogt float %i.dn, f0xB5A00000
  br i1 %i.do, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.e, %bb.c, %bb.d
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.critedge.thread, %bb.e
  %.3 = phi float [ %i.bh, %bb.e ], [ -1.000000e+00, %.critedge.thread ], [ -1.000000e+00, %bb.a ]
  ret float %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6btDbvt7rayTestEPK10btDbvtNodeRK9btVector3S5_RNS_8ICollideE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btAlignedObjectArray.84, align 8 ; 8 uses
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !223
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i8 0, ptr %i.f, align 8, !tbaa !1000
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1003
  store i32 128, ptr %i.h, align 4, !tbaa !1004
  store i32 128, ptr %i.i, align 8, !tbaa !1005
  store ptr %0, ptr %i.a, align 16, !tbaa !873
  %i.j = fsub float %i.c, %i.e                    ; 4 uses
  %i.k = load <2 x float>, ptr %2, align 4, !tbaa !223
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !223
  %i.m = fsub <2 x float> %i.k, %i.l              ; 5 uses
  %foldExtExtBinop129 = fmul <2 x float> %i.m, %i.m
  %i.n = extractelement <2 x float> %foldExtExtBinop129, i64 1
  %i.o = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.n)
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.p)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.q)
  %i.r = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %i.m, %i.t              ; 4 uses
  %i.v = fmul float %i.j, %i.r                    ; 3 uses
  %i.w = fcmp oeq <2 x float> %i.u, zeroinitializer
  %i.x = fdiv <2 x float> splat (float 1.000000e+00), %i.u
  %i.y = select <2 x i1> %i.w, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.x ; 3 uses
  %i.z = fcmp oeq float %i.v, 0.000000e+00
  %i.aa = fdiv float 1.000000e+00, %i.v
  %i.ab = select i1 %i.z, float f0x5D5E0B6B, float %i.aa ; 3 uses
  %i.ac = fcmp uge <2 x float> %i.y, zeroinitializer ; 2 uses
  %i.ad = fcmp uge float %i.ab, 0.000000e+00      ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.m, %i.u
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.af = extractelement <2 x float> %i.u, i64 0
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.o, float %i.ae)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.j, float %i.ag)
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  %i.ai = phi ptr [ %i.eg, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.a, %.preheader ] ; 7 uses
  %.old = phi i8 [ %i.eh, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 0, %.preheader ] ; 9 uses
  %i.aj = phi i32 [ %i.ei, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %.preheader ] ; 8 uses
  %.pre.i = phi i32 [ %i.ej, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %.preheader ] ; 11 uses
  %i.ak = phi ptr [ %i.ek, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.a, %.preheader ] ; 14 uses
  %.028 = phi i32 [ %.129, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 1, %.preheader ] ; 3 uses
  %.026 = phi i32 [ %.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 126, %.preheader ] ; 6 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = add nsw i32 %.028, -1                   ; 6 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !873 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load <2 x float>, ptr %i.ap, align 4    ; 2 uses
  %i.as = load <2 x float>, ptr %i.aq, align 4    ; 2 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.av = select <2 x i1> %i.ac, <2 x float> %i.at, <2 x float> %i.au
  %i.aw = load <2 x float>, ptr %1, align 4, !tbaa !223 ; 2 uses
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = fmul <2 x float> %i.y, %i.ax            ; 3 uses
  %i.az = select <2 x i1> %i.ac, <2 x float> %i.au, <2 x float> %i.at
  %i.ba = fsub <2 x float> %i.az, %i.aw
  %i.bb = fmul <2 x float> %i.y, %i.ba            ; 3 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bd = extractelement <2 x float> %i.bb, i64 1 ; 2 uses
  %i.be = fcmp ogt float %i.bc, %i.bd
  %i.bf = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bg = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.bh = fcmp ogt float %i.bg, %i.bf
  %or.cond.i = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %or.cond.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.15.16.copyload = load float, ptr %.sroa.15.16..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.bj = fcmp olt <2 x float> %i.bb, %i.bi       ; 2 uses
  %i.bk = extractelement <2 x i1> %i.bj, i64 0
  %i.bl = select i1 %i.bk, float %i.bg, float %i.bc ; 3 uses
  %i.bm = extractelement <2 x i1> %i.bj, i64 1
  %.0.i = select i1 %i.bm, float %i.bd, float %i.bf ; 3 uses
  %.sroa.speculated100 = select i1 %i.ad, float %.sroa.8.0.copyload, float %.sroa.15.16.copyload
  %i.bn = load float, ptr %i.d, align 4, !tbaa !223 ; 2 uses
  %i.bo = fsub float %.sroa.speculated100, %i.bn
  %i.bp = fmul float %i.ab, %i.bo                 ; 3 uses
  %.sroa.speculated = select i1 %i.ad, float %.sroa.15.16.copyload, float %.sroa.8.0.copyload
  %i.bq = fsub float %.sroa.speculated, %i.bn
  %i.br = fmul float %i.ab, %i.bq                 ; 3 uses
  %i.bs = fcmp ogt float %i.bl, %i.br
  %i.bt = fcmp ogt float %i.bp, %.0.i
  %or.cond60.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond60.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.bu = fcmp ogt float %i.bp, %i.bl
  %i.bv = select i1 %i.bu, float %i.bp, float %i.bl
  %i.bw = fcmp olt float %i.br, %.0.i
  %.1.i = select i1 %i.bw, float %i.br, float %.0.i
  %i.bx = fcmp olt float %i.bv, %i.ah
  %i.by = fcmp ogt float %.1.i, 0.000000e+00
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.d, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.d:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !230
  %.not80 = icmp eq ptr %i.cb, null
  br i1 %.not80, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cc = icmp sgt i32 %i.am, %.026
  br i1 %i.cc, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.cd = shl nsw i32 %.pre.i, 1                  ; 8 uses
  %i.ce = icmp sgt i32 %i.cd, %.pre.i
  br i1 %i.ce, label %..lr.ph.i_crit_edge, label %.loopexit

..lr.ph.i_crit_edge:                              ; preds = %bb.f
  %5 = icmp slt i32 %i.aj, %i.cd
  %6 = zext nneg i32 %i.cd to i64
  %.pre113 = shl nuw nsw i64 %6, 3                ; 2 uses
  br i1 %5, label %bb.g, label %.lr.ph.i

bb.g:                                             ; preds = %..lr.ph.i_crit_edge
  %i.cf = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %.pre113, i32 noundef 16)
          to label %.noexc41 unwind label %bb.j   ; 10 uses

.noexc41:                                         ; preds = %bb.g
  %i.cg = icmp sgt i32 %.pre.i, 0
  br i1 %i.cg, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc41
  %i.ch = ptrtoaddr ptr %i.cf to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 4
  %i.ci = sub i64 %i.al, %i.ch
  %diff.check = icmp ugt i64 %i.ci, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !873
  %wide.load126 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !873
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x ptr> %wide.load, ptr %i.cj, align 8, !tbaa !873
  store <2 x ptr> %wide.load126, ptr %i.cm, align 8, !tbaa !873
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1006

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i.prol
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i.prol
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !873
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !873
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1007

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cr = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !873
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !873
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !873
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !873
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.1
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !873
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !873
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.2
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.2
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !873
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !873
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !1008

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i: ; preds = %.noexc41
  %i.df = trunc nuw i8 %.old to i1
  br i1 %i.df, label %bb.h, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old77 = trunc nuw i8 %.old to i1
  br i1 %.old77, label %bb.h, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ak)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i unwind label %bb.j

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
  store i8 1, ptr %i.f, align 8, !tbaa !1000
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !1003
  store i32 %i.cd, ptr %i.i, align 8, !tbaa !1005
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i
  %i.dg = phi ptr [ %i.cf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ], [ %i.ai, %..lr.ph.i_crit_edge ]
  %i.dh = phi ptr [ %i.cf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ], [ %i.ak, %..lr.ph.i_crit_edge ]
  %i.di = phi i8 [ 1, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ], [ %.old, %..lr.ph.i_crit_edge ]
  %i.dj = phi i32 [ %i.cd, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ], [ %i.aj, %..lr.ph.i_crit_edge ]
  %7 = zext i32 %.pre.i to i64
  %i.dk = shl nuw nsw i64 %7, 3                   ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.dh, i64 %i.dk
  %i.dl = sub nsw i64 %.pre113, %i.dk
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.dl, i1 false), !tbaa !873
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.f
  %i.dm = phi ptr [ %i.dg, %.lr.ph.i ], [ %i.ai, %bb.f ]
  %i.dn = phi i8 [ %i.di, %.lr.ph.i ], [ %.old, %bb.f ]
  %i.do = phi i32 [ %i.dj, %.lr.ph.i ], [ %i.aj, %bb.f ]
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !1004
  %i.dp = add nsw i32 %i.cd, -2
  br label %bb.k

bb.i:                                             ; preds = %bb.l
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %.loopexit, %bb.e
  %i.ds = phi ptr [ %i.dm, %.loopexit ], [ %i.ai, %bb.e ] ; 4 uses
  %i.dt = phi i8 [ %i.dn, %.loopexit ], [ %.old, %bb.e ]
  %i.du = phi i32 [ %i.do, %.loopexit ], [ %i.aj, %bb.e ]
  %i.dv = phi i32 [ %i.cd, %.loopexit ], [ %.pre.i, %bb.e ]
  %.127 = phi i32 [ %i.dp, %.loopexit ], [ %.026, %bb.e ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !230
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.an
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !873
  %i.dz = load ptr, ptr %i.ca, align 8, !tbaa !230
  %i.ea = add nsw i32 %.028, 1
  %i.eb = sext i32 %.028 to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.eb
  store ptr %i.dz, ptr %i.ec, align 8, !tbaa !873
  br label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.ed = load ptr, ptr %3, align 8, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ap)
          to label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread unwind label %bb.i

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.c, %bb.b, %bb.k, %bb.l, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.eg = phi ptr [ %i.ds, %bb.k ], [ %i.ai, %bb.l ], [ %i.ai, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.ai, %bb.b ], [ %i.ai, %bb.c ] ; 3 uses
  %i.eh = phi i8 [ %i.dt, %bb.k ], [ %.old, %bb.l ], [ %.old, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.old, %bb.b ], [ %.old, %bb.c ] ; 2 uses
  %i.ei = phi i32 [ %i.du, %bb.k ], [ %i.aj, %bb.l ], [ %i.aj, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.aj, %bb.b ], [ %i.aj, %bb.c ]
  %i.ej = phi i32 [ %i.dv, %bb.k ], [ %.pre.i, %bb.l ], [ %.pre.i, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.pre.i, %bb.b ], [ %.pre.i, %bb.c ]
  %i.ek = phi ptr [ %i.ds, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.ak, %bb.b ], [ %i.ak, %bb.c ]
  %.129 = phi i32 [ %i.ea, %bb.k ], [ %i.am, %bb.l ], [ %i.am, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.am, %bb.b ], [ %i.am, %bb.c ] ; 2 uses
  %.2 = phi i32 [ %.127, %bb.k ], [ %.026, %bb.l ], [ %.026, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.026, %bb.b ], [ %.026, %bb.c ]
  %.not34 = icmp eq i32 %.129, 0
  br i1 %.not34, label %bb.m, label %bb.b, !llvm.loop !1009

bb.m:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %.not.i.i.i43 = icmp ne ptr %i.eg, null
  %i.el = trunc nuw i8 %i.eh to i1
  %or.cond.i.i44 = select i1 %.not.i.i.i43, i1 %i.el, i1 false
  br i1 %or.cond.i.i44, label %bb.n, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.eg)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #40
  unreachable

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.q

bb.p:                                             ; preds = %bb.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.j ], [ %i.dq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  call void @_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, %bb.a
  ret void
}

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IiEE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !886  ; 4 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN20btAlignedObjectArrayIiED2Ev.exit
  %indvars.iv26 = phi i64 [ %i.e, %.preheader ], [ %indvars.iv.next27, %_ZN20btAlignedObjectArrayIiED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !885
  %i.g = getelementptr inbounds [32 x i8], ptr %i.f, i64 %indvars.iv26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !220  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !233
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.l, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.b, %bb.c
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %lftr.wideiv29 = trunc i64 %indvars.iv.next27 to i32
  %exitcond30.not = icmp eq i32 %i.b, %lftr.wideiv29
  br i1 %exitcond30.not, label %.loopexit, label %bb.b, !llvm.loop !1010

bb.e:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %1, %i.b
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  tail call void @_ZN20btAlignedObjectArrayIS_IiEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = sext i32 %i.b to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit ] ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !885
  %i.u = getelementptr inbounds [32 x i8], ptr %i.t, i64 %indvars.iv ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store i8 1, ptr %i.v, align 8, !tbaa !219
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr null, ptr %i.w, align 8, !tbaa !220
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 4 uses
  store i32 0, ptr %i.x, align 4, !tbaa !221
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !222
  %i.z = load i32, ptr %i.q, align 4, !tbaa !221  ; 6 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i: ; preds = %bb.f
  %i.ab = zext nneg i32 %i.z to i64               ; 6 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ac, i32 noundef 16) ; 15 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %.pre.i.i = load i32, ptr %i.x, align 4, !tbaa !221 ; 3 uses
  %i.af = icmp sgt i32 %.pre.i.i, 0
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !220 ; 9 uses
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 5 uses
  %min.iters.check42 = icmp ult i32 %.pre.i.i, 8
  %i.ai = sub i64 %i.ah, %i.ae
  %diff.check40 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check42, i1 true, i1 %diff.check40
  br i1 %or.cond, label %scalar.ph41.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.i.i.i.i
  %n.vec44 = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index46 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index46 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !257
  %wide.load48 = load <4 x i32>, ptr %i.al, align 4, !tbaa !257
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %wide.load47, ptr %i.aj, align 4, !tbaa !257
  store <4 x i32> %wide.load48, ptr %i.am, align 4, !tbaa !257
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.an, label %middle.block50, label %vector.body45, !llvm.loop !1011

middle.block50:                                   ; preds = %vector.body45
end_hunk_0
