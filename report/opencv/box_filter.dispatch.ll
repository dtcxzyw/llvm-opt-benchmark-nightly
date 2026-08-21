Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/box_filter.dispatch?download=true
inline.NumInlined: 2169
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEclEPPKhPhiii:bb.a
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !196 ; 3 uses
  %i.ab = icmp slt i32 %.promoted, %i.aa
  br i1 %i.ab, label %.lr.ph141, label %.loopexit137

.lr.ph141:                                        ; preds = %bb.h
  %i.ac = icmp sgt i32 %5, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph141.split.preheader

.lr.ph141.split.preheader:                        ; preds = %.lr.ph141
  %i.ad = add i32 %i.z, -2
  %i.ae = sub i32 %i.ad, %.promoted
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  br label %..loopexit137_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph141
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep222 = getelementptr i8, ptr %i.u, i64 %i.ai
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0139.us = phi ptr [ %i.bu, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.bt, %._crit_edge.us ], [ %.promoted, %.lr.ph.us.preheader ]
  %i.ak = load ptr, ptr %.0139.us, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep223 = getelementptr i8, ptr %i.ak, i64 %i.ai
  %bound0 = icmp ult ptr %i.u, %scevgep223
  %bound1 = icmp ult ptr %i.ak, %scevgep222
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !285, !alias.scope !867
  %wide.load224 = load <2 x double>, ptr %i.am, align 8, !tbaa !285, !alias.scope !867
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load225 = load <2 x double>, ptr %i.an, align 8, !tbaa !285, !alias.scope !870, !noalias !867
  %wide.load226 = load <2 x double>, ptr %i.ao, align 8, !tbaa !285, !alias.scope !870, !noalias !867
  %i.ap = fadd <2 x double> %wide.load, %wide.load225
  %i.aq = fadd <2 x double> %wide.load224, %wide.load226
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !285, !alias.scope !870, !noalias !867
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !285, !alias.scope !870, !noalias !867
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !872

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !285
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !285
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !285
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !873

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !285
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !285
  %i.bd = fadd double %i.ba, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.bf = load double, ptr %i.be, align 8, !tbaa !285
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !285
  %i.bi = fadd double %i.bf, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !285
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !285
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !285
  %i.bn = fadd double %i.bk, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !285
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.2
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !285
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !285
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !285
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !874

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bt = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0139.us, i64 8 ; 2 uses
  %exitcond172.not = icmp eq i32 %i.bt, %i.aa
  br i1 %exitcond172.not, label %..loopexit137_crit_edge, label %.lr.ph.us, !llvm.loop !875

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = icmp eq i32 %.pre196, %i.bx
  br i1 %i.by, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ca, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cg = sext i32 %.pre196 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cg
  br label %.loopexit137

..loopexit137_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph141.split.preheader
  %.us-phi142 = phi ptr [ %scevgep, %.lr.ph141.split.preheader ], [ %i.bu, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !196
  br label %.loopexit137

.loopexit137:                                     ; preds = %bb.h, %..loopexit137_crit_edge, %bb.o
  %i.ci = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit137_crit_edge ], [ %i.u, %bb.h ] ; 26 uses
  %i.cj = phi i32 [ %i.bw, %bb.o ], [ %i.z, %..loopexit137_crit_edge ], [ %i.z, %bb.h ]
  %.1 = phi ptr [ %i.ch, %bb.o ], [ %.us-phi142, %..loopexit137_crit_edge ], [ %1, %bb.h ] ; 10 uses
  %i.ck = add i32 %4, -1                          ; 6 uses
  %.not130154 = icmp eq i32 %4, 0
  br i1 %.not130154, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %.loopexit137
  %i.cl = sub nsw i32 1, %i.cj
  %i.cm = sext i32 %i.cl to i64                   ; 8 uses
  %i.cn = add i32 %5, -2                          ; 2 uses
  %i.co = sext i32 %3 to i64                      ; 8 uses
  %.not132148 = icmp slt i32 %5, 2                ; 2 uses
  br i1 %i.c, label %.lr.ph158.split.us, label %.lr.ph158.split

.lr.ph158.split.us:                               ; preds = %.lr.ph158
  br i1 %.not132148, label %.lr.ph158.split.us.split.us, label %.preheader133.us.preheader

.preheader133.us.preheader:                       ; preds = %.lr.ph158.split.us
  %i.cp = zext i32 %i.cn to i64                   ; 5 uses
  %i.cq = zext nneg i32 %5 to i64                 ; 3 uses
  %i.cr = and i64 %i.cp, 4294967294
  %i.cs = add nuw nsw i64 %i.cr, 3
  %umax289 = call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cq)
  %i.ct = shl nuw nsw i64 %umax289, 3
  %i.cu = shl nuw nsw i64 %i.cp, 3
  %i.cv = and i64 %i.cu, 34359738352              ; 2 uses
  %i.cw = sub nsw i64 %i.ct, %i.cv
  %i.cx = add nuw nsw i64 %i.cv, 16               ; 3 uses
  %scevgep316 = getelementptr i8, ptr %i.ci, i64 %i.cx ; 2 uses
  %i.cy = lshr i64 %i.cp, 1                       ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check327 = icmp eq i64 %i.cy, 0
  %n.vec329 = and i64 %i.cz, 4294967294           ; 5 uses
  %i.da = shl nuw nsw i64 %n.vec329, 1            ; 4 uses
  %i.db = or disjoint i64 %i.da, 2
  %broadcast.splatinsert330 = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat331 = shufflevector <2 x double> %broadcast.splatinsert330, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %ind.escape347 = add nsw i64 %n.vec329, -1
  %cmp.n349 = icmp eq i64 %i.cz, %n.vec329
  %i.dc = insertelement <2 x double> poison, double %i.b, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = and i64 %i.cp, 4294967294               ; 2 uses
  %i.df = add nuw nsw i64 %i.de, 3
  %i.dg = call i64 @llvm.umax.i64(i64 %i.df, i64 %i.cq) ; 2 uses
  %i.dh = add nsw i64 %i.dg, -2
  %i.di = sub nsw i64 %i.dh, %i.de                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.di, 4
  %i.dj = and i64 %i.dg, 1                        ; 2 uses
  %n.vec305 = sub nsw i64 %i.di, %i.dj            ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n313 = icmp eq i64 %i.dj, 0
  br label %.preheader133.us

.lr.ph158.split.us.split.us:                      ; preds = %.lr.ph158.split.us
  %i.dk = icmp eq i32 %5, 1
  br i1 %i.dk, label %.preheader133.us.us.preheader, label %._crit_edge

.preheader133.us.us.preheader:                    ; preds = %.lr.ph158.split.us.split.us
  %.pre199.pre = load double, ptr %i.ci, align 8, !tbaa !285 ; 2 uses
  %xtraiter367 = and i32 %4, 1
  %lcmp.mod368.not = icmp eq i32 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %..loopexit_crit_edge.us.us.prol.loopexit, label %..loopexit_crit_edge.us.us.prol

..loopexit_crit_edge.us.us.prol:                  ; preds = %.preheader133.us.us.preheader
  %i.dl = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.cm
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !242
  %i.dn = load ptr, ptr %.1, align 8, !tbaa !242
  %i.do = load double, ptr %i.dn, align 8, !tbaa !285
  %i.dp = fadd double %.pre199.pre, %i.do         ; 2 uses
  %i.dq = fmul double %i.b, %i.dp
  %i.dr = fptrunc double %i.dq to float
  store float %i.dr, ptr %2, align 4, !tbaa !263
  %i.ds = load double, ptr %i.dm, align 8, !tbaa !285
  %i.dt = fsub double %i.dp, %i.ds                ; 2 uses
  store double %i.dt, ptr %i.ci, align 8, !tbaa !285
  %i.du = getelementptr inbounds i8, ptr %2, i64 %i.co
  %i.dv = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.dw = add i32 %4, -2
  br label %..loopexit_crit_edge.us.us.prol.loopexit

..loopexit_crit_edge.us.us.prol.loopexit:         ; preds = %..loopexit_crit_edge.us.us.prol, %.preheader133.us.us.preheader
  %.pre199.unr = phi double [ %.pre199.pre, %.preheader133.us.us.preheader ], [ %i.dt, %..loopexit_crit_edge.us.us.prol ]
  %.unr370 = phi i32 [ %i.ck, %.preheader133.us.us.preheader ], [ %i.dw, %..loopexit_crit_edge.us.us.prol ]
  %.2157.us.us.unr = phi ptr [ %.1, %.preheader133.us.us.preheader ], [ %i.dv, %..loopexit_crit_edge.us.us.prol ]
  %.0115155.us.us.unr = phi ptr [ %2, %.preheader133.us.us.preheader ], [ %i.du, %..loopexit_crit_edge.us.us.prol ]
  %i.dx = icmp eq i32 %i.ck, 0
  br i1 %i.dx, label %._crit_edge, label %..loopexit_crit_edge.us.us

..loopexit_crit_edge.us.us:                       ; preds = %..loopexit_crit_edge.us.us.prol.loopexit, %..loopexit_crit_edge.us.us
  %.pre199 = phi double [ %i.es, %..loopexit_crit_edge.us.us ], [ %.pre199.unr, %..loopexit_crit_edge.us.us.prol.loopexit ]
  %i.dy = phi i32 [ %i.ev, %..loopexit_crit_edge.us.us ], [ %.unr370, %..loopexit_crit_edge.us.us.prol.loopexit ] ; 2 uses
  %.2157.us.us = phi ptr [ %i.eu, %..loopexit_crit_edge.us.us ], [ %.2157.us.us.unr, %..loopexit_crit_edge.us.us.prol.loopexit ] ; 4 uses
  %.0115155.us.us = phi ptr [ %i.et, %..loopexit_crit_edge.us.us ], [ %.0115155.us.us.unr, %..loopexit_crit_edge.us.us.prol.loopexit ] ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.2157.us.us, i64 %i.cm
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !242
  %i.eb = load ptr, ptr %.2157.us.us, align 8, !tbaa !242
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !285
  %i.ed = fadd double %.pre199, %i.ec             ; 2 uses
  %i.ee = fmul double %i.b, %i.ed
  %i.ef = fptrunc double %i.ee to float
  store float %i.ef, ptr %.0115155.us.us, align 4, !tbaa !263
  %i.eg = load double, ptr %i.ea, align 8, !tbaa !285
  %i.eh = fsub double %i.ed, %i.eg                ; 2 uses
  store double %i.eh, ptr %i.ci, align 8, !tbaa !285
  %i.ei = getelementptr inbounds i8, ptr %.0115155.us.us, i64 %i.co ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2157.us.us, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.cm
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !242
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !242
  %i.en = load double, ptr %i.em, align 8, !tbaa !285
  %i.eo = fadd double %i.eh, %i.en                ; 2 uses
  %i.ep = fmul double %i.b, %i.eo
  %i.eq = fptrunc double %i.ep to float
  store float %i.eq, ptr %i.ei, align 4, !tbaa !263
  %i.er = load double, ptr %i.el, align 8, !tbaa !285
  %i.es = fsub double %i.eo, %i.er                ; 2 uses
  store double %i.es, ptr %i.ci, align 8, !tbaa !285
  %i.et = getelementptr inbounds i8, ptr %i.ei, i64 %i.co
  %i.eu = getelementptr inbounds nuw i8, ptr %.2157.us.us, i64 16
  %i.ev = add nsw i32 %i.dy, -2
  %.not130.us.us.1 = icmp eq i32 %i.dy, 1
  br i1 %.not130.us.us.1, label %._crit_edge, label %..loopexit_crit_edge.us.us, !llvm.loop !876

.preheader133.us:                                 ; preds = %.preheader133.us.preheader, %.loopexit.us
  %i.ew = phi i32 [ %i.gn, %.loopexit.us ], [ %i.ck, %.preheader133.us.preheader ] ; 2 uses
  %.2157.us = phi ptr [ %i.gm, %.loopexit.us ], [ %.1, %.preheader133.us.preheader ] ; 3 uses
  %.0115155.us = phi ptr [ %i.gl, %.loopexit.us ], [ %2, %.preheader133.us.preheader ] ; 5 uses
  %i.ex = load ptr, ptr %.2157.us, align 8, !tbaa !242 ; 8 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.2157.us, i64 %i.cm
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check327, label %scalar.ph326.preheader, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.preheader133.us
  %scevgep317 = getelementptr i8, ptr %i.ex, i64 %i.cx
  %scevgep318 = getelementptr i8, ptr %i.ez, i64 %i.cx
  %bound0319 = icmp ult ptr %i.ci, %scevgep317
  %bound1320 = icmp ult ptr %i.ex, %scevgep316
  %found.conflict321 = and i1 %bound0319, %bound1320
  %bound0322 = icmp ult ptr %i.ci, %scevgep318
  %bound1323 = icmp ult ptr %i.ez, %scevgep316
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %found.conflict321, %found.conflict324
  br i1 %conflict.rdx325, label %scalar.ph326.preheader, label %vector.body332

vector.body332:                                   ; preds = %vector.memcheck315, %vector.body332
  %index333 = phi i64 [ %index.next345, %vector.body332 ], [ 0, %vector.memcheck315 ] ; 2 uses
  %i.fa = shl nuw i64 %index333, 1                ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.fa ; 2 uses
  %wide.vec334 = load <4 x double>, ptr %i.fb, align 8, !tbaa !285, !alias.scope !877, !noalias !880 ; 2 uses
  %strided.vec335 = shufflevector <4 x double> %wide.vec334, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec336 = shufflevector <4 x double> %wide.vec334, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fa
  %wide.vec337 = load <4 x double>, ptr %i.fc, align 8, !tbaa !285, !alias.scope !883 ; 2 uses
  %strided.vec338 = shufflevector <4 x double> %wide.vec337, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec339 = shufflevector <4 x double> %wide.vec337, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fd = fadd <2 x double> %strided.vec335, %strided.vec338 ; 2 uses
  %i.fe = fadd <2 x double> %strided.vec336, %strided.vec339 ; 2 uses
  %i.ff = fmul <2 x double> %broadcast.splat331, %i.fd
  %i.fg = fptrunc <2 x double> %i.ff to <2 x float>
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0115155.us, i64 %i.fa
  %i.fi = fmul <2 x double> %broadcast.splat331, %i.fe
  %i.fj = fptrunc <2 x double> %i.fi to <2 x float>
  %interleaved.vec340 = shufflevector <2 x float> %i.fg, <2 x float> %i.fj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec340, ptr %i.fh, align 4, !tbaa !263, !alias.scope !884
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  %wide.vec341 = load <4 x double>, ptr %i.fk, align 8, !tbaa !285, !alias.scope !886 ; 2 uses
  %strided.vec342 = shufflevector <4 x double> %wide.vec341, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec343 = shufflevector <4 x double> %wide.vec341, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fl = fsub <2 x double> %i.fd, %strided.vec342
  %i.fm = fsub <2 x double> %i.fe, %strided.vec343
  %interleaved.vec344 = shufflevector <2 x double> %i.fl, <2 x double> %i.fm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec344, ptr %i.fb, align 8, !tbaa !285, !alias.scope !877, !noalias !880
  %index.next345 = add nuw i64 %index333, 2       ; 2 uses
  %i.fn = icmp eq i64 %index.next345, %n.vec329
  br i1 %i.fn, label %middle.block346, label %vector.body332, !llvm.loop !887

middle.block346:                                  ; preds = %vector.body332
  br i1 %cmp.n349, label %..preheader_crit_edge.us, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %vector.memcheck315, %.preheader133.us, %middle.block346
  %indvar286.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.preheader133.us ], [ %n.vec329, %middle.block346 ]
  %indvars.iv187.ph = phi i64 [ 2, %vector.memcheck315 ], [ 2, %.preheader133.us ], [ %i.db, %middle.block346 ]
  %indvars.iv184.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.preheader133.us ], [ %i.da, %middle.block346 ]
  br label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.preheader, %scalar.ph326
  %indvar286 = phi i64 [ %indvar.next287, %scalar.ph326 ], [ %indvar286.ph, %scalar.ph326.preheader ] ; 2 uses
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %scalar.ph326 ], [ %indvars.iv187.ph, %scalar.ph326.preheader ] ; 2 uses
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %scalar.ph326 ], [ %indvars.iv184.ph, %scalar.ph326.preheader ] ; 5 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv184 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv184
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.0115155.us, i64 %indvars.iv184
  %i.fr = load <2 x double>, ptr %i.fo, align 8, !tbaa !285
  %i.fs = load <2 x double>, ptr %i.fp, align 8, !tbaa !285
  %i.ft = fadd <2 x double> %i.fr, %i.fs          ; 2 uses
  %i.fu = fmul <2 x double> %i.dd, %i.ft
  %i.fv = fptrunc <2 x double> %i.fu to <2 x float>
  store <2 x float> %i.fv, ptr %i.fq, align 4, !tbaa !263
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv184
  %i.fx = load <2 x double>, ptr %i.fw, align 8, !tbaa !285
  %i.fy = fsub <2 x double> %i.ft, %i.fx
  store <2 x double> %i.fy, ptr %i.fo, align 8, !tbaa !285
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 2 ; 3 uses
  %.not132.us = icmp samesign ugt i64 %indvars.iv.next185, %i.cp
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 2
  %indvar.next287 = add i64 %indvar286, 1
  br i1 %.not132.us, label %..preheader_crit_edge.us, label %scalar.ph326, !llvm.loop !888

.lr.ph153.us:                                     ; preds = %.lr.ph153.us.preheader353, %.lr.ph153.us
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %.lr.ph153.us ], [ %indvars.iv189.ph, %.lr.ph153.us.preheader353 ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv189 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !285
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv189
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !285
  %i.gd = fadd double %i.ga, %i.gc                ; 2 uses
  %i.ge = fmul double %i.b, %i.gd
  %i.gf = fptrunc double %i.ge to float
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0115155.us, i64 %indvars.iv189
  store float %i.gf, ptr %i.gg, align 4, !tbaa !263
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv189
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !285
  %i.gj = fsub double %i.gd, %i.gi
  store double %i.gj, ptr %i.fz, align 8, !tbaa !285
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next190, %i.cq
  br i1 %i.gk, label %.lr.ph153.us, label %.loopexit.us, !llvm.loop !889

.loopexit.us:                                     ; preds = %.lr.ph153.us, %middle.block312, %..preheader_crit_edge.us
  %i.gl = getelementptr inbounds i8, ptr %.0115155.us, i64 %i.co
  %i.gm = getelementptr inbounds nuw i8, ptr %.2157.us, i64 8
  %i.gn = add nsw i32 %i.ew, -1
  %.not130.us = icmp eq i32 %i.ew, 0
  br i1 %.not130.us, label %._crit_edge, label %.preheader133.us, !llvm.loop !876

..preheader_crit_edge.us:                         ; preds = %scalar.ph326, %middle.block346
  %indvar286.lcssa = phi i64 [ %ind.escape347, %middle.block346 ], [ %indvar286, %scalar.ph326 ]
  %indvars.iv187.lcssa = phi i64 [ %i.da, %middle.block346 ], [ %indvars.iv187, %scalar.ph326 ] ; 4 uses
  %indvars.iv.next185.lcssa = phi i64 [ %i.da, %middle.block346 ], [ %indvars.iv.next185, %scalar.ph326 ]
  %i.go = trunc nuw nsw i64 %indvars.iv.next185.lcssa to i32
  %i.gp = icmp sgt i32 %5, %i.go
  br i1 %i.gp, label %.lr.ph153.us.preheader, label %.loopexit.us

.lr.ph153.us.preheader:                           ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check303, label %.lr.ph153.us.preheader353, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.lr.ph153.us.preheader
  %i.gq = shl nuw nsw i64 %indvar286.lcssa, 4     ; 2 uses
  %i.gr = add nuw i64 %i.gq, 16                   ; 3 uses
  %scevgep288 = getelementptr i8, ptr %i.ci, i64 %i.gr ; 2 uses
  %i.gs = add i64 %i.cw, %i.gq                    ; 3 uses
  %scevgep290 = getelementptr i8, ptr %i.ci, i64 %i.gs ; 2 uses
  %scevgep291 = getelementptr i8, ptr %i.ex, i64 %i.gr
  %scevgep292 = getelementptr i8, ptr %i.ex, i64 %i.gs
  %scevgep293 = getelementptr i8, ptr %i.ez, i64 %i.gr
  %scevgep294 = getelementptr i8, ptr %i.ez, i64 %i.gs
  %bound0295 = icmp ult ptr %scevgep288, %scevgep292
  %bound1296 = icmp ult ptr %scevgep291, %scevgep290
  %found.conflict297 = and i1 %bound0295, %bound1296
  %bound0298 = icmp ult ptr %scevgep288, %scevgep294
  %bound1299 = icmp ult ptr %scevgep293, %scevgep290
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx301 = or i1 %found.conflict297, %found.conflict300
  br i1 %conflict.rdx301, label %.lr.ph153.us.preheader353, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck285
  %i.gt = add i64 %indvars.iv187.lcssa, %n.vec305
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next311, %vector.body306 ] ; 2 uses
  %i.gu = add nuw i64 %indvars.iv187.lcssa, %index307 ; 4 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.gu ; 2 uses
  %wide.load308 = load <2 x double>, ptr %i.gv, align 8, !tbaa !285, !alias.scope !890, !noalias !893
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.gu
  %wide.load309 = load <2 x double>, ptr %i.gw, align 8, !tbaa !285, !alias.scope !896
  %i.gx = fadd <2 x double> %wide.load308, %wide.load309 ; 2 uses
  %i.gy = fmul <2 x double> %broadcast.splat, %i.gx
  %i.gz = fptrunc <2 x double> %i.gy to <2 x float>
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.0115155.us, i64 %i.gu
  store <2 x float> %i.gz, ptr %i.ha, align 4, !tbaa !263
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gu
  %wide.load310 = load <2 x double>, ptr %i.hb, align 8, !tbaa !285, !alias.scope !897
  %i.hc = fsub <2 x double> %i.gx, %wide.load310
  store <2 x double> %i.hc, ptr %i.gv, align 8, !tbaa !285, !alias.scope !890, !noalias !893
  %index.next311 = add nuw i64 %index307, 2       ; 2 uses
  %i.hd = icmp eq i64 %index.next311, %n.vec305
  br i1 %i.hd, label %middle.block312, label %vector.body306, !llvm.loop !898

middle.block312:                                  ; preds = %vector.body306
  br i1 %cmp.n313, label %.loopexit.us, label %.lr.ph153.us.preheader353

.lr.ph153.us.preheader353:                        ; preds = %vector.memcheck285, %.lr.ph153.us.preheader, %middle.block312
  %indvars.iv189.ph = phi i64 [ %indvars.iv187.lcssa, %vector.memcheck285 ], [ %indvars.iv187.lcssa, %.lr.ph153.us.preheader ], [ %i.gt, %middle.block312 ]
  br label %.lr.ph153.us

.lr.ph158.split:                                  ; preds = %.lr.ph158
  br i1 %.not132148, label %.lr.ph158.split.split.us, label %.preheader136.preheader

.preheader136.preheader:                          ; preds = %.lr.ph158.split
  %i.he = zext i32 %i.cn to i64                   ; 5 uses
  %i.hf = zext nneg i32 %5 to i64                 ; 3 uses
  %i.hg = and i64 %i.he, 4294967294
  %i.hh = add nuw nsw i64 %i.hg, 3
  %umax = call i64 @llvm.umax.i64(i64 %i.hh, i64 %i.hf)
  %i.hi = shl nuw nsw i64 %umax, 3
  %i.hj = shl nuw nsw i64 %i.he, 3
  %i.hk = and i64 %i.hj, 34359738352              ; 2 uses
  %i.hl = sub nsw i64 %i.hi, %i.hk
  %i.hm = add nuw nsw i64 %i.hk, 16               ; 3 uses
  %scevgep254 = getelementptr i8, ptr %i.ci, i64 %i.hm ; 2 uses
  %i.hn = lshr i64 %i.he, 1                       ; 2 uses
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %min.iters.check265 = icmp eq i64 %i.hn, 0
  %n.vec267 = and i64 %i.ho, 4294967294           ; 5 uses
  %i.hp = shl nuw nsw i64 %n.vec267, 1            ; 4 uses
  %i.hq = or disjoint i64 %i.hp, 2
  %ind.escape = add nsw i64 %n.vec267, -1
  %cmp.n281 = icmp eq i64 %i.ho, %n.vec267
  %i.hr = and i64 %i.he, 4294967294               ; 2 uses
  %i.hs = add nuw nsw i64 %i.hr, 3
  %i.ht = call i64 @llvm.umax.i64(i64 %i.hs, i64 %i.hf) ; 2 uses
  %i.hu = add nsw i64 %i.ht, -2
  %i.hv = sub nsw i64 %i.hu, %i.hr                ; 2 uses
  %min.iters.check241 = icmp ult i64 %i.hv, 6
  %i.hw = and i64 %i.ht, 1                        ; 2 uses
  %n.vec243 = sub nsw i64 %i.hv, %i.hw            ; 2 uses
  %cmp.n251 = icmp eq i64 %i.hw, 0
  br label %.preheader136

.lr.ph158.split.split.us:                         ; preds = %.lr.ph158.split
  %i.hx = icmp eq i32 %5, 1
  br i1 %i.hx, label %.preheader136.us.preheader, label %._crit_edge

.preheader136.us.preheader:                       ; preds = %.lr.ph158.split.split.us
  %.pre197.pre = load double, ptr %i.ci, align 8, !tbaa !285 ; 2 uses
  %xtraiter364 = and i32 %4, 1
  %lcmp.mod365.not = icmp eq i32 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %..loopexit135_crit_edge.us.prol.loopexit, label %..loopexit135_crit_edge.us.prol

..loopexit135_crit_edge.us.prol:                  ; preds = %.preheader136.us.preheader
  %i.hy = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.cm
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !242
  %i.ia = load ptr, ptr %.1, align 8, !tbaa !242
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !285
  %i.ic = fadd double %.pre197.pre, %i.ib         ; 2 uses
  %i.id = fptrunc double %i.ic to float
  store float %i.id, ptr %2, align 4, !tbaa !263
  %i.ie = load double, ptr %i.hz, align 8, !tbaa !285
  %i.if = fsub double %i.ic, %i.ie                ; 2 uses
  store double %i.if, ptr %i.ci, align 8, !tbaa !285
  %i.ig = getelementptr inbounds i8, ptr %2, i64 %i.co
  %i.ih = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ii = add i32 %4, -2
  br label %..loopexit135_crit_edge.us.prol.loopexit

..loopexit135_crit_edge.us.prol.loopexit:         ; preds = %..loopexit135_crit_edge.us.prol, %.preheader136.us.preheader
  %.pre197.unr = phi double [ %.pre197.pre, %.preheader136.us.preheader ], [ %i.if, %..loopexit135_crit_edge.us.prol ]
  %.unr = phi i32 [ %i.ck, %.preheader136.us.preheader ], [ %i.ii, %..loopexit135_crit_edge.us.prol ]
  %.2157.us159.unr = phi ptr [ %.1, %.preheader136.us.preheader ], [ %i.ih, %..loopexit135_crit_edge.us.prol ]
  %.0115155.us160.unr = phi ptr [ %2, %.preheader136.us.preheader ], [ %i.ig, %..loopexit135_crit_edge.us.prol ]
  %i.ij = icmp eq i32 %i.ck, 0
  br i1 %i.ij, label %._crit_edge, label %..loopexit135_crit_edge.us

..loopexit135_crit_edge.us:                       ; preds = %..loopexit135_crit_edge.us.prol.loopexit, %..loopexit135_crit_edge.us
  %.pre197 = phi double [ %i.jc, %..loopexit135_crit_edge.us ], [ %.pre197.unr, %..loopexit135_crit_edge.us.prol.loopexit ]
  %i.ik = phi i32 [ %i.jf, %..loopexit135_crit_edge.us ], [ %.unr, %..loopexit135_crit_edge.us.prol.loopexit ] ; 2 uses
  %.2157.us159 = phi ptr [ %i.je, %..loopexit135_crit_edge.us ], [ %.2157.us159.unr, %..loopexit135_crit_edge.us.prol.loopexit ] ; 4 uses
  %.0115155.us160 = phi ptr [ %i.jd, %..loopexit135_crit_edge.us ], [ %.0115155.us160.unr, %..loopexit135_crit_edge.us.prol.loopexit ] ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.2157.us159, i64 %i.cm
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !242
  %i.in = load ptr, ptr %.2157.us159, align 8, !tbaa !242
  %i.io = load double, ptr %i.in, align 8, !tbaa !285
  %i.ip = fadd double %.pre197, %i.io             ; 2 uses
  %i.iq = fptrunc double %i.ip to float
  store float %i.iq, ptr %.0115155.us160, align 4, !tbaa !263
  %i.ir = load double, ptr %i.im, align 8, !tbaa !285
  %i.is = fsub double %i.ip, %i.ir                ; 2 uses
  store double %i.is, ptr %i.ci, align 8, !tbaa !285
  %i.it = getelementptr inbounds i8, ptr %.0115155.us160, i64 %i.co ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.2157.us159, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.cm
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !242
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !242
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !285
  %i.iz = fadd double %i.is, %i.iy                ; 2 uses
  %i.ja = fptrunc double %i.iz to float
  store float %i.ja, ptr %i.it, align 4, !tbaa !263
  %i.jb = load double, ptr %i.iw, align 8, !tbaa !285
  %i.jc = fsub double %i.iz, %i.jb                ; 2 uses
  store double %i.jc, ptr %i.ci, align 8, !tbaa !285
  %i.jd = getelementptr inbounds i8, ptr %i.it, i64 %i.co
  %i.je = getelementptr inbounds nuw i8, ptr %.2157.us159, i64 16
  %i.jf = add nsw i32 %i.ik, -2
  %.not130.us161.1 = icmp eq i32 %i.ik, 1
  br i1 %.not130.us161.1, label %._crit_edge, label %..loopexit135_crit_edge.us, !llvm.loop !876

.preheader136:                                    ; preds = %.preheader136.preheader, %.loopexit135
  %i.jg = phi i32 [ %i.li, %.loopexit135 ], [ %i.ck, %.preheader136.preheader ] ; 2 uses
  %.2157 = phi ptr [ %i.lh, %.loopexit135 ], [ %.1, %.preheader136.preheader ] ; 3 uses
  %.0115155 = phi ptr [ %i.lg, %.loopexit135 ], [ %2, %.preheader136.preheader ] ; 5 uses
  %i.jh = load ptr, ptr %.2157, align 8, !tbaa !242 ; 8 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %.2157, i64 %i.cm
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check265, label %scalar.ph264.preheader, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.preheader136
  %scevgep255 = getelementptr i8, ptr %i.jh, i64 %i.hm
  %scevgep256 = getelementptr i8, ptr %i.jj, i64 %i.hm
  %bound0257 = icmp ult ptr %i.ci, %scevgep255
  %bound1258 = icmp ult ptr %i.jh, %scevgep254
  %found.conflict259 = and i1 %bound0257, %bound1258
  %bound0260 = icmp ult ptr %i.ci, %scevgep256
  %bound1261 = icmp ult ptr %i.jj, %scevgep254
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %found.conflict259, %found.conflict262
  br i1 %conflict.rdx263, label %scalar.ph264.preheader, label %vector.body268

vector.body268:                                   ; preds = %vector.memcheck253, %vector.body268
  %index269 = phi i64 [ %index.next278, %vector.body268 ], [ 0, %vector.memcheck253 ] ; 2 uses
  %i.jk = shl nuw i64 %index269, 1                ; 4 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.jk ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.jl, align 8, !tbaa !285, !alias.scope !899, !noalias !902 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec270 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jk
  %wide.vec271 = load <4 x double>, ptr %i.jm, align 8, !tbaa !285, !alias.scope !905 ; 2 uses
  %strided.vec272 = shufflevector <4 x double> %wide.vec271, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec273 = shufflevector <4 x double> %wide.vec271, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.jn = fadd <2 x double> %strided.vec, %strided.vec272 ; 2 uses
  %i.jo = fadd <2 x double> %strided.vec270, %strided.vec273 ; 2 uses
  %i.jp = fptrunc <2 x double> %i.jn to <2 x float>
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.0115155, i64 %i.jk
  %i.jr = fptrunc <2 x double> %i.jo to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %i.jp, <2 x float> %i.jr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.jq, align 4, !tbaa !263, !alias.scope !906
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk
  %wide.vec274 = load <4 x double>, ptr %i.js, align 8, !tbaa !285, !alias.scope !908 ; 2 uses
  %strided.vec275 = shufflevector <4 x double> %wide.vec274, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec276 = shufflevector <4 x double> %wide.vec274, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.jt = fsub <2 x double> %i.jn, %strided.vec275
  %i.ju = fsub <2 x double> %i.jo, %strided.vec276
  %interleaved.vec277 = shufflevector <2 x double> %i.jt, <2 x double> %i.ju, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec277, ptr %i.jl, align 8, !tbaa !285, !alias.scope !899, !noalias !902
  %index.next278 = add nuw i64 %index269, 2       ; 2 uses
  %i.jv = icmp eq i64 %index.next278, %n.vec267
  br i1 %i.jv, label %middle.block279, label %vector.body268, !llvm.loop !909

middle.block279:                                  ; preds = %vector.body268
  br i1 %cmp.n281, label %..preheader134_crit_edge, label %scalar.ph264.preheader

scalar.ph264.preheader:                           ; preds = %vector.memcheck253, %.preheader136, %middle.block279
  %indvar.ph = phi i64 [ 0, %vector.memcheck253 ], [ 0, %.preheader136 ], [ %n.vec267, %middle.block279 ]
  %indvars.iv176.ph = phi i64 [ 2, %vector.memcheck253 ], [ 2, %.preheader136 ], [ %i.hq, %middle.block279 ]
  %indvars.iv173.ph = phi i64 [ 0, %vector.memcheck253 ], [ 0, %.preheader136 ], [ %i.hp, %middle.block279 ]
  br label %scalar.ph264

..preheader134_crit_edge:                         ; preds = %scalar.ph264, %middle.block279
  %indvar.lcssa = phi i64 [ %ind.escape, %middle.block279 ], [ %indvar, %scalar.ph264 ]
  %indvars.iv176.lcssa = phi i64 [ %i.hp, %middle.block279 ], [ %indvars.iv176, %scalar.ph264 ] ; 4 uses
  %indvars.iv.next174.lcssa = phi i64 [ %i.hp, %middle.block279 ], [ %indvars.iv.next174, %scalar.ph264 ]
  %i.jw = trunc nuw nsw i64 %indvars.iv.next174.lcssa to i32
  %i.jx = icmp sgt i32 %5, %i.jw
  br i1 %i.jx, label %.lr.ph147.preheader, label %.loopexit135

.lr.ph147.preheader:                              ; preds = %..preheader134_crit_edge
  br i1 %min.iters.check241, label %.lr.ph147.preheader359, label %vector.memcheck227

vector.memcheck227:                               ; preds = %.lr.ph147.preheader
  %i.jy = shl nuw nsw i64 %indvar.lcssa, 4        ; 2 uses
  %i.jz = add nuw i64 %i.jy, 16                   ; 3 uses
  %scevgep228 = getelementptr i8, ptr %i.ci, i64 %i.jz ; 2 uses
  %i.ka = add i64 %i.hl, %i.jy                    ; 3 uses
  %scevgep229 = getelementptr i8, ptr %i.ci, i64 %i.ka ; 2 uses
  %scevgep230 = getelementptr i8, ptr %i.jh, i64 %i.jz
  %scevgep231 = getelementptr i8, ptr %i.jh, i64 %i.ka
  %scevgep232 = getelementptr i8, ptr %i.jj, i64 %i.jz
  %scevgep233 = getelementptr i8, ptr %i.jj, i64 %i.ka
  %bound0234 = icmp ult ptr %scevgep228, %scevgep231
  %bound1235 = icmp ult ptr %scevgep230, %scevgep229
  %found.conflict236 = and i1 %bound0234, %bound1235
  %bound0237 = icmp ult ptr %scevgep228, %scevgep233
  %bound1238 = icmp ult ptr %scevgep232, %scevgep229
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx = or i1 %found.conflict236, %found.conflict239
  br i1 %conflict.rdx, label %.lr.ph147.preheader359, label %vector.ph242

vector.ph242:                                     ; preds = %vector.memcheck227
  %i.kb = add i64 %indvars.iv176.lcssa, %n.vec243
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next249, %vector.body244 ] ; 2 uses
  %i.kc = add nuw i64 %indvars.iv176.lcssa, %index245 ; 4 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.kc ; 2 uses
  %wide.load246 = load <2 x double>, ptr %i.kd, align 8, !tbaa !285, !alias.scope !910, !noalias !913
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.kc
  %wide.load247 = load <2 x double>, ptr %i.ke, align 8, !tbaa !285, !alias.scope !916
  %i.kf = fadd <2 x double> %wide.load246, %wide.load247 ; 2 uses
  %i.kg = fptrunc <2 x double> %i.kf to <2 x float>
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0115155, i64 %i.kc
  store <2 x float> %i.kg, ptr %i.kh, align 4, !tbaa !263
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.kc
  %wide.load248 = load <2 x double>, ptr %i.ki, align 8, !tbaa !285, !alias.scope !917
  %i.kj = fsub <2 x double> %i.kf, %wide.load248
  store <2 x double> %i.kj, ptr %i.kd, align 8, !tbaa !285, !alias.scope !910, !noalias !913
  %index.next249 = add nuw i64 %index245, 2       ; 2 uses
  %i.kk = icmp eq i64 %index.next249, %n.vec243
  br i1 %i.kk, label %middle.block250, label %vector.body244, !llvm.loop !918

middle.block250:                                  ; preds = %vector.body244
  br i1 %cmp.n251, label %.loopexit135, label %.lr.ph147.preheader359

.lr.ph147.preheader359:                           ; preds = %vector.memcheck227, %.lr.ph147.preheader, %middle.block250
  %indvars.iv178.ph = phi i64 [ %indvars.iv176.lcssa, %vector.memcheck227 ], [ %indvars.iv176.lcssa, %.lr.ph147.preheader ], [ %i.kb, %middle.block250 ]
  br label %.lr.ph147

scalar.ph264:                                     ; preds = %scalar.ph264.preheader, %scalar.ph264
  %indvar = phi i64 [ %indvar.next, %scalar.ph264 ], [ %indvar.ph, %scalar.ph264.preheader ] ; 2 uses
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph264 ], [ %indvars.iv176.ph, %scalar.ph264.preheader ] ; 2 uses
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %scalar.ph264 ], [ %indvars.iv173.ph, %scalar.ph264.preheader ] ; 5 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv173 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv173
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.0115155, i64 %indvars.iv173
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEclEPPKhPhiii:bb.a
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !214 ; 3 uses
  %i.ab = icmp slt i32 %.promoted, %i.aa
  br i1 %i.ab, label %.lr.ph141, label %.loopexit137

.lr.ph141:                                        ; preds = %bb.h
  %i.ac = icmp sgt i32 %5, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph141.split.preheader

.lr.ph141.split.preheader:                        ; preds = %.lr.ph141
  %i.ad = add i32 %i.z, -2
  %i.ae = sub i32 %i.ad, %.promoted
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  br label %..loopexit137_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph141
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep222 = getelementptr i8, ptr %i.u, i64 %i.ai
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0139.us = phi ptr [ %i.bu, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.bt, %._crit_edge.us ], [ %.promoted, %.lr.ph.us.preheader ]
  %i.ak = load ptr, ptr %.0139.us, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep223 = getelementptr i8, ptr %i.ak, i64 %i.ai
  %bound0 = icmp ult ptr %i.u, %scevgep223
  %bound1 = icmp ult ptr %i.ak, %scevgep222
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !285, !alias.scope !979
  %wide.load224 = load <2 x double>, ptr %i.am, align 8, !tbaa !285, !alias.scope !979
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load225 = load <2 x double>, ptr %i.an, align 8, !tbaa !285, !alias.scope !982, !noalias !979
  %wide.load226 = load <2 x double>, ptr %i.ao, align 8, !tbaa !285, !alias.scope !982, !noalias !979
  %i.ap = fadd <2 x double> %wide.load, %wide.load225
  %i.aq = fadd <2 x double> %wide.load224, %wide.load226
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !285, !alias.scope !982, !noalias !979
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !285, !alias.scope !982, !noalias !979
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !984

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !285
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !285
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !285
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !985

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !285
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !285
  %i.bd = fadd double %i.ba, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.bf = load double, ptr %i.be, align 8, !tbaa !285
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !285
  %i.bi = fadd double %i.bf, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !285
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !285
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !285
  %i.bn = fadd double %i.bk, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !285
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.2
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !285
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !285
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !285
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !986

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bt = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0139.us, i64 8 ; 2 uses
  %exitcond172.not = icmp eq i32 %i.bt, %i.aa
  br i1 %exitcond172.not, label %..loopexit137_crit_edge, label %.lr.ph.us, !llvm.loop !987

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = icmp eq i32 %.pre196, %i.bx
  br i1 %i.by, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ca, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cg = sext i32 %.pre196 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cg
  br label %.loopexit137

..loopexit137_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph141.split.preheader
  %.us-phi142 = phi ptr [ %scevgep, %.lr.ph141.split.preheader ], [ %i.bu, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !214
  br label %.loopexit137

.loopexit137:                                     ; preds = %bb.h, %..loopexit137_crit_edge, %bb.o
  %i.ci = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit137_crit_edge ], [ %i.u, %bb.h ] ; 30 uses
  %i.cj = phi i32 [ %i.bw, %bb.o ], [ %i.z, %..loopexit137_crit_edge ], [ %i.z, %bb.h ]
  %.1 = phi ptr [ %i.ch, %bb.o ], [ %.us-phi142, %..loopexit137_crit_edge ], [ %1, %bb.h ] ; 10 uses
  %i.ck = add i32 %4, -1                          ; 8 uses
  %.not130154 = icmp eq i32 %4, 0
  br i1 %.not130154, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %.loopexit137
  %i.cl = sub nsw i32 1, %i.cj
  %i.cm = sext i32 %i.cl to i64                   ; 8 uses
  %i.cn = add i32 %5, -2                          ; 4 uses
  %i.co = sext i32 %3 to i64                      ; 12 uses
  %.not132148 = icmp slt i32 %5, 2                ; 2 uses
  br i1 %i.c, label %.lr.ph158.split.us, label %.lr.ph158.split

.lr.ph158.split.us:                               ; preds = %.lr.ph158
  br i1 %.not132148, label %.lr.ph158.split.us.split.us, label %.preheader133.us.preheader

.preheader133.us.preheader:                       ; preds = %.lr.ph158.split.us
  %i.cp = zext i32 %i.cn to i64                   ; 5 uses
  %i.cq = zext nneg i32 %5 to i64                 ; 3 uses
  %i.cr = and i64 %i.cp, 4294967294
  %i.cs = add nuw nsw i64 %i.cr, 3
  %umax317 = call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cq)
  %i.ct = shl nuw nsw i64 %umax317, 3
  %i.cu = lshr i64 %i.cp, 1                       ; 3 uses
  %i.cv = shl nuw nsw i64 %i.cu, 4                ; 3 uses
  %i.cw = sub nsw i64 %i.ct, %i.cv                ; 2 uses
  %i.cx = zext i32 %i.ck to i64
  %i.cy = mul nsw i64 %i.co, %i.cx
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cv
  %scevgep358 = getelementptr i8, ptr %i.da, i64 16 ; 3 uses
  %i.db = add nuw nsw i64 %i.cv, 16               ; 3 uses
  %scevgep359 = getelementptr i8, ptr %i.ci, i64 %i.db ; 3 uses
  %min.iters.check385 = icmp ult i32 %i.cn, 10
  %bound0362 = icmp ult ptr %2, %scevgep359
  %bound1363 = icmp ult ptr %i.ci, %scevgep358
  %found.conflict364 = and i1 %bound0362, %bound1363
  %stride.check369 = icmp slt i32 %3, 0
  %invariant.op434 = or i1 %stride.check369, %found.conflict364
  %i.dc = and i64 %i.cp, 4294967294
  %i.dd = add nuw nsw i64 %i.dc, 2                ; 2 uses
  %broadcast.splatinsert388 = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat389 = shufflevector <2 x double> %broadcast.splatinsert388, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = insertelement <2 x double> poison, double %i.b, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = and i64 %i.cp, 4294967294               ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 3
  %i.di = call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.cq) ; 2 uses
  %i.dj = add nsw i64 %i.di, -2
  %i.dk = sub nsw i64 %i.dj, %i.dg                ; 2 uses
  %min.iters.check345 = icmp ult i64 %i.dk, 10
  %invariant.gep435 = getelementptr i8, ptr %2, i64 %i.cw
  %i.dl = and i64 %i.di, 1                        ; 2 uses
  %n.vec347 = sub nsw i64 %i.dk, %i.dl            ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n355 = icmp eq i64 %i.dl, 0
  br label %.preheader133.us

.lr.ph158.split.us.split.us:                      ; preds = %.lr.ph158.split.us
  %i.dm = icmp eq i32 %5, 1
  br i1 %i.dm, label %.preheader133.us.us.preheader, label %._crit_edge

.preheader133.us.us.preheader:                    ; preds = %.lr.ph158.split.us.split.us
  %.pre199.pre = load double, ptr %i.ci, align 8, !tbaa !285 ; 2 uses
  %xtraiter425 = and i32 %4, 1
  %lcmp.mod426.not = icmp eq i32 %xtraiter425, 0
  br i1 %lcmp.mod426.not, label %..loopexit_crit_edge.us.us.prol.loopexit, label %..loopexit_crit_edge.us.us.prol

..loopexit_crit_edge.us.us.prol:                  ; preds = %.preheader133.us.us.preheader
  %i.dn = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.cm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !242
  %i.dp = load ptr, ptr %.1, align 8, !tbaa !242
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !285
  %i.dr = fadd double %.pre199.pre, %i.dq         ; 2 uses
  %i.ds = fmul double %i.b, %i.dr
  store double %i.ds, ptr %2, align 8, !tbaa !285
  %i.dt = load double, ptr %i.do, align 8, !tbaa !285
  %i.du = fsub double %i.dr, %i.dt                ; 2 uses
  store double %i.du, ptr %i.ci, align 8, !tbaa !285
  %i.dv = getelementptr inbounds i8, ptr %2, i64 %i.co
  %i.dw = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.dx = add i32 %4, -2
  br label %..loopexit_crit_edge.us.us.prol.loopexit

..loopexit_crit_edge.us.us.prol.loopexit:         ; preds = %..loopexit_crit_edge.us.us.prol, %.preheader133.us.us.preheader
  %.pre199.unr = phi double [ %.pre199.pre, %.preheader133.us.us.preheader ], [ %i.du, %..loopexit_crit_edge.us.us.prol ]
  %.unr428 = phi i32 [ %i.ck, %.preheader133.us.us.preheader ], [ %i.dx, %..loopexit_crit_edge.us.us.prol ]
  %.2157.us.us.unr = phi ptr [ %.1, %.preheader133.us.us.preheader ], [ %i.dw, %..loopexit_crit_edge.us.us.prol ]
  %.0115155.us.us.unr = phi ptr [ %2, %.preheader133.us.us.preheader ], [ %i.dv, %..loopexit_crit_edge.us.us.prol ]
  %i.dy = icmp eq i32 %i.ck, 0
  br i1 %i.dy, label %._crit_edge, label %..loopexit_crit_edge.us.us

..loopexit_crit_edge.us.us:                       ; preds = %..loopexit_crit_edge.us.us.prol.loopexit, %..loopexit_crit_edge.us.us
  %.pre199 = phi double [ %i.er, %..loopexit_crit_edge.us.us ], [ %.pre199.unr, %..loopexit_crit_edge.us.us.prol.loopexit ]
  %i.dz = phi i32 [ %i.eu, %..loopexit_crit_edge.us.us ], [ %.unr428, %..loopexit_crit_edge.us.us.prol.loopexit ] ; 2 uses
  %.2157.us.us = phi ptr [ %i.et, %..loopexit_crit_edge.us.us ], [ %.2157.us.us.unr, %..loopexit_crit_edge.us.us.prol.loopexit ] ; 4 uses
  %.0115155.us.us = phi ptr [ %i.es, %..loopexit_crit_edge.us.us ], [ %.0115155.us.us.unr, %..loopexit_crit_edge.us.us.prol.loopexit ] ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %.2157.us.us, i64 %i.cm
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !242
  %i.ec = load ptr, ptr %.2157.us.us, align 8, !tbaa !242
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !285
  %i.ee = fadd double %.pre199, %i.ed             ; 2 uses
  %i.ef = fmul double %i.b, %i.ee
  store double %i.ef, ptr %.0115155.us.us, align 8, !tbaa !285
  %i.eg = load double, ptr %i.eb, align 8, !tbaa !285
  %i.eh = fsub double %i.ee, %i.eg                ; 2 uses
  store double %i.eh, ptr %i.ci, align 8, !tbaa !285
  %i.ei = getelementptr inbounds i8, ptr %.0115155.us.us, i64 %i.co ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2157.us.us, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.cm
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !242
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !242
  %i.en = load double, ptr %i.em, align 8, !tbaa !285
  %i.eo = fadd double %i.eh, %i.en                ; 2 uses
  %i.ep = fmul double %i.b, %i.eo
  store double %i.ep, ptr %i.ei, align 8, !tbaa !285
  %i.eq = load double, ptr %i.el, align 8, !tbaa !285
  %i.er = fsub double %i.eo, %i.eq                ; 2 uses
  store double %i.er, ptr %i.ci, align 8, !tbaa !285
  %i.es = getelementptr inbounds i8, ptr %i.ei, i64 %i.co
  %i.et = getelementptr inbounds nuw i8, ptr %.2157.us.us, i64 16
  %i.eu = add nsw i32 %i.dz, -2
  %.not130.us.us.1 = icmp eq i32 %i.dz, 1
  br i1 %.not130.us.us.1, label %._crit_edge, label %..loopexit_crit_edge.us.us, !llvm.loop !988

.preheader133.us:                                 ; preds = %.preheader133.us.preheader, %.loopexit.us
  %indvar312 = phi i64 [ 0, %.preheader133.us.preheader ], [ %indvar.next313, %.loopexit.us ] ; 2 uses
  %i.ev = phi i32 [ %i.ck, %.preheader133.us.preheader ], [ %i.gg, %.loopexit.us ] ; 2 uses
  %.2157.us = phi ptr [ %.1, %.preheader133.us.preheader ], [ %i.gf, %.loopexit.us ] ; 3 uses
  %.0115155.us = phi ptr [ %2, %.preheader133.us.preheader ], [ %i.ge, %.loopexit.us ] ; 5 uses
  %i.ew = mul i64 %indvar312, %i.co               ; 2 uses
  %i.ex = load ptr, ptr %.2157.us, align 8, !tbaa !242 ; 9 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.2157.us, i64 %i.cm
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !242 ; 9 uses
  br i1 %min.iters.check385, label %scalar.ph384.preheader, label %vector.memcheck357

scalar.ph384.preheader:                           ; preds = %vector.memcheck357, %.preheader133.us
  br label %scalar.ph384

vector.memcheck357:                               ; preds = %.preheader133.us
  %scevgep360 = getelementptr i8, ptr %i.ex, i64 %i.db ; 2 uses
  %scevgep361 = getelementptr i8, ptr %i.ez, i64 %i.db ; 2 uses
  %bound0366 = icmp ult ptr %2, %scevgep360
  %bound1367 = icmp ult ptr %i.ex, %scevgep358
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx370.reass = or i1 %found.conflict368, %invariant.op434
  %bound0371 = icmp ult ptr %2, %scevgep361
  %bound1372 = icmp ult ptr %i.ez, %scevgep358
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx375 = or i1 %found.conflict373, %conflict.rdx370.reass
  %bound0376 = icmp ult ptr %i.ci, %scevgep360
  %bound1377 = icmp ult ptr %i.ex, %scevgep359
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  %bound0380 = icmp ult ptr %i.ci, %scevgep361
  %bound1381 = icmp ult ptr %i.ez, %scevgep359
  %found.conflict382 = and i1 %bound0380, %bound1381
  %conflict.rdx383 = or i1 %conflict.rdx379, %found.conflict382
  br i1 %conflict.rdx383, label %scalar.ph384.preheader, label %vector.body390

vector.body390:                                   ; preds = %vector.memcheck357, %vector.body390
  %index391 = phi i64 [ %index.next395, %vector.body390 ], [ 0, %vector.memcheck357 ] ; 3 uses
  %i.fa = shl nuw i64 %index391, 1                ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.fa ; 2 uses
  %wide.load392 = load <2 x double>, ptr %i.fb, align 8, !tbaa !285, !alias.scope !989, !noalias !992
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fa
  %wide.load393 = load <2 x double>, ptr %i.fc, align 8, !tbaa !285, !alias.scope !995
  %i.fd = fadd <2 x double> %wide.load392, %wide.load393 ; 2 uses
  %i.fe = fmul <2 x double> %broadcast.splat389, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.0115155.us, i64 %i.fa
  store <2 x double> %i.fe, ptr %i.ff, align 8, !tbaa !285, !alias.scope !996, !noalias !998
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  %wide.load394 = load <2 x double>, ptr %i.fg, align 8, !tbaa !285, !alias.scope !999
  %i.fh = fsub <2 x double> %i.fd, %wide.load394
  store <2 x double> %i.fh, ptr %i.fb, align 8, !tbaa !285, !alias.scope !989, !noalias !992
  %index.next395 = add nuw i64 %index391, 1
  %i.fi = icmp eq i64 %index391, %i.cu
  br i1 %i.fi, label %..preheader_crit_edge.us, label %vector.body390, !llvm.loop !1000

scalar.ph384:                                     ; preds = %scalar.ph384.preheader, %scalar.ph384
  %indvar314 = phi i64 [ %indvar.next315, %scalar.ph384 ], [ 0, %scalar.ph384.preheader ] ; 2 uses
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %scalar.ph384 ], [ 2, %scalar.ph384.preheader ] ; 2 uses
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %scalar.ph384 ], [ 0, %scalar.ph384.preheader ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv184 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv184
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.0115155.us, i64 %indvars.iv184
  %i.fm = load <2 x double>, ptr %i.fj, align 8, !tbaa !285
  %i.fn = load <2 x double>, ptr %i.fk, align 8, !tbaa !285
  %i.fo = fadd <2 x double> %i.fm, %i.fn          ; 2 uses
  %i.fp = fmul <2 x double> %i.df, %i.fo
  store <2 x double> %i.fp, ptr %i.fl, align 8, !tbaa !285
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv184
  %i.fr = load <2 x double>, ptr %i.fq, align 8, !tbaa !285
  %i.fs = fsub <2 x double> %i.fo, %i.fr
  store <2 x double> %i.fs, ptr %i.fj, align 8, !tbaa !285
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 2 ; 3 uses
  %.not132.us = icmp samesign ugt i64 %indvars.iv.next185, %i.cp
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 2
  %indvar.next315 = add i64 %indvar314, 1
  br i1 %.not132.us, label %..preheader_crit_edge.us, label %scalar.ph384, !llvm.loop !1001

.lr.ph153.us:                                     ; preds = %.lr.ph153.us.preheader403, %.lr.ph153.us
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %.lr.ph153.us ], [ %indvars.iv189.ph, %.lr.ph153.us.preheader403 ] ; 5 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv189 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !285
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv189
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !285
  %i.fx = fadd double %i.fu, %i.fw                ; 2 uses
  %i.fy = fmul double %i.b, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.0115155.us, i64 %indvars.iv189
  store double %i.fy, ptr %i.fz, align 8, !tbaa !285
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv189
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !285
  %i.gc = fsub double %i.fx, %i.gb
  store double %i.gc, ptr %i.ft, align 8, !tbaa !285
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.gd = icmp samesign ult i64 %indvars.iv.next190, %i.cq
  br i1 %i.gd, label %.lr.ph153.us, label %.loopexit.us, !llvm.loop !1002

.loopexit.us:                                     ; preds = %.lr.ph153.us, %middle.block354, %..preheader_crit_edge.us
  %i.ge = getelementptr inbounds i8, ptr %.0115155.us, i64 %i.co
  %i.gf = getelementptr inbounds nuw i8, ptr %.2157.us, i64 8
  %i.gg = add nsw i32 %i.ev, -1
  %.not130.us = icmp eq i32 %i.ev, 0
  %indvar.next313 = add i64 %indvar312, 1
  br i1 %.not130.us, label %._crit_edge, label %.preheader133.us, !llvm.loop !988

..preheader_crit_edge.us:                         ; preds = %vector.body390, %scalar.ph384
  %indvar314.lcssa = phi i64 [ %indvar314, %scalar.ph384 ], [ %i.cu, %vector.body390 ]
  %indvars.iv187.lcssa = phi i64 [ %indvars.iv187, %scalar.ph384 ], [ %i.dd, %vector.body390 ] ; 4 uses
  %indvars.iv.next185.lcssa = phi i64 [ %indvars.iv.next185, %scalar.ph384 ], [ %i.dd, %vector.body390 ]
  %i.gh = trunc nuw nsw i64 %indvars.iv.next185.lcssa to i32
  %i.gi = icmp sgt i32 %5, %i.gh
  br i1 %i.gi, label %.lr.ph153.us.preheader, label %.loopexit.us

.lr.ph153.us.preheader:                           ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check345, label %.lr.ph153.us.preheader403, label %vector.memcheck311

vector.memcheck311:                               ; preds = %.lr.ph153.us.preheader
  %i.gj = shl nuw nsw i64 %indvar314.lcssa, 4     ; 4 uses
  %i.gk = getelementptr i8, ptr %2, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.ew
  %scevgep316 = getelementptr i8, ptr %i.gl, i64 16 ; 3 uses
  %gep436 = getelementptr i8, ptr %invariant.gep435, i64 %i.gj
  %scevgep318 = getelementptr i8, ptr %gep436, i64 %i.ew ; 3 uses
  %i.gm = add nuw i64 %i.gj, 16                   ; 3 uses
  %scevgep319 = getelementptr i8, ptr %i.ci, i64 %i.gm ; 3 uses
  %i.gn = add i64 %i.cw, %i.gj                    ; 3 uses
  %scevgep320 = getelementptr i8, ptr %i.ci, i64 %i.gn ; 3 uses
  %scevgep321 = getelementptr i8, ptr %i.ex, i64 %i.gm ; 2 uses
  %scevgep322 = getelementptr i8, ptr %i.ex, i64 %i.gn ; 2 uses
  %scevgep323 = getelementptr i8, ptr %i.ez, i64 %i.gm ; 2 uses
  %scevgep324 = getelementptr i8, ptr %i.ez, i64 %i.gn ; 2 uses
  %bound0325 = icmp ult ptr %scevgep316, %scevgep320
  %bound1326 = icmp ult ptr %scevgep319, %scevgep318
  %found.conflict327 = and i1 %bound0325, %bound1326
  %bound0328 = icmp ult ptr %scevgep316, %scevgep322
  %bound1329 = icmp ult ptr %scevgep321, %scevgep318
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %found.conflict327, %found.conflict330
  %bound0332 = icmp ult ptr %scevgep316, %scevgep324
  %bound1333 = icmp ult ptr %scevgep323, %scevgep318
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  %bound0336 = icmp ult ptr %scevgep319, %scevgep322
  %bound1337 = icmp ult ptr %scevgep321, %scevgep320
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335, %found.conflict338
  %bound0340 = icmp ult ptr %scevgep319, %scevgep324
  %bound1341 = icmp ult ptr %scevgep323, %scevgep320
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx339, %found.conflict342
  br i1 %conflict.rdx343, label %.lr.ph153.us.preheader403, label %vector.ph346

vector.ph346:                                     ; preds = %vector.memcheck311
  %i.go = add i64 %indvars.iv187.lcssa, %n.vec347
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next353, %vector.body348 ] ; 2 uses
  %i.gp = add nuw i64 %indvars.iv187.lcssa, %index349 ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.gp ; 2 uses
  %wide.load350 = load <2 x double>, ptr %i.gq, align 8, !tbaa !285, !alias.scope !1003, !noalias !1006
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.gp
  %wide.load351 = load <2 x double>, ptr %i.gr, align 8, !tbaa !285, !alias.scope !1009
  %i.gs = fadd <2 x double> %wide.load350, %wide.load351 ; 2 uses
  %i.gt = fmul <2 x double> %broadcast.splat, %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.0115155.us, i64 %i.gp
  store <2 x double> %i.gt, ptr %i.gu, align 8, !tbaa !285, !alias.scope !1010, !noalias !1012
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gp
  %wide.load352 = load <2 x double>, ptr %i.gv, align 8, !tbaa !285, !alias.scope !1013
  %i.gw = fsub <2 x double> %i.gs, %wide.load352
  store <2 x double> %i.gw, ptr %i.gq, align 8, !tbaa !285, !alias.scope !1003, !noalias !1006
  %index.next353 = add nuw i64 %index349, 2       ; 2 uses
  %i.gx = icmp eq i64 %index.next353, %n.vec347
  br i1 %i.gx, label %middle.block354, label %vector.body348, !llvm.loop !1014

middle.block354:                                  ; preds = %vector.body348
  br i1 %cmp.n355, label %.loopexit.us, label %.lr.ph153.us.preheader403

.lr.ph153.us.preheader403:                        ; preds = %vector.memcheck311, %.lr.ph153.us.preheader, %middle.block354
  %indvars.iv189.ph = phi i64 [ %indvars.iv187.lcssa, %vector.memcheck311 ], [ %indvars.iv187.lcssa, %.lr.ph153.us.preheader ], [ %i.go, %middle.block354 ]
  br label %.lr.ph153.us

.lr.ph158.split:                                  ; preds = %.lr.ph158
  br i1 %.not132148, label %.lr.ph158.split.split.us, label %.preheader136.preheader

.preheader136.preheader:                          ; preds = %.lr.ph158.split
  %i.gy = zext i32 %i.cn to i64                   ; 5 uses
  %i.gz = zext nneg i32 %5 to i64                 ; 3 uses
  %i.ha = and i64 %i.gy, 4294967294
  %i.hb = add nuw nsw i64 %i.ha, 3
  %umax = call i64 @llvm.umax.i64(i64 %i.hb, i64 %i.gz)
  %i.hc = shl nuw nsw i64 %umax, 3
  %i.hd = lshr i64 %i.gy, 1                       ; 5 uses
  %i.he = shl nuw nsw i64 %i.hd, 4                ; 3 uses
  %i.hf = sub nsw i64 %i.hc, %i.he                ; 2 uses
  %i.hg = zext i32 %i.ck to i64
  %i.hh = mul nsw i64 %i.co, %i.hg
  %i.hi = getelementptr i8, ptr %2, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.he
  %scevgep270 = getelementptr i8, ptr %i.hj, i64 16 ; 3 uses
  %i.hk = add nuw nsw i64 %i.he, 16               ; 3 uses
  %scevgep271 = getelementptr i8, ptr %i.ci, i64 %i.hk ; 3 uses
  %i.hl = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check296 = icmp ult i32 %i.cn, 10
  %bound0274 = icmp ult ptr %2, %scevgep271
  %bound1275 = icmp ult ptr %i.ci, %scevgep270
  %found.conflict276 = and i1 %bound0274, %bound1275
  %stride.check280 = icmp slt i32 %3, 0
  %invariant.op = or i1 %stride.check280, %found.conflict276
  %i.hm = and i64 %i.gy, 4294967294
  %i.hn = add nuw nsw i64 %i.hm, 2                ; 2 uses
  %i.ho = icmp eq i64 %i.hd, 0
  %unroll_iter = and i64 %i.hl, 4294967294
  %i.hp = and i64 %i.gy, 2
  %lcmp.mod417.not.not = icmp eq i64 %i.hp, 0
  %lcmp.mod421 = trunc i64 %i.hl to i1
  %i.hq = and i64 %i.gy, 4294967294               ; 2 uses
  %i.hr = add nuw nsw i64 %i.hq, 3
  %i.hs = call i64 @llvm.umax.i64(i64 %i.hr, i64 %i.gz) ; 2 uses
  %i.ht = add nsw i64 %i.hs, -2
  %i.hu = sub nsw i64 %i.ht, %i.hq                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.hu, 12
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.hf
  %i.hv = and i64 %i.hs, 1                        ; 2 uses
  %n.vec259 = sub nsw i64 %i.hu, %i.hv            ; 2 uses
  %cmp.n267 = icmp eq i64 %i.hv, 0
  br label %.preheader136

.lr.ph158.split.split.us:                         ; preds = %.lr.ph158.split
  %i.hw = icmp eq i32 %5, 1
  br i1 %i.hw, label %.preheader136.us.preheader, label %._crit_edge

.preheader136.us.preheader:                       ; preds = %.lr.ph158.split.split.us
  %.pre197.pre = load double, ptr %i.ci, align 8, !tbaa !285 ; 2 uses
  %xtraiter422 = and i32 %4, 1
  %lcmp.mod423.not = icmp eq i32 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %..loopexit135_crit_edge.us.prol.loopexit, label %..loopexit135_crit_edge.us.prol

..loopexit135_crit_edge.us.prol:                  ; preds = %.preheader136.us.preheader
  %i.hx = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.cm
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !242
  %i.hz = load ptr, ptr %.1, align 8, !tbaa !242
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !285
  %i.ib = fadd double %.pre197.pre, %i.ia         ; 2 uses
  store double %i.ib, ptr %2, align 8, !tbaa !285
  %i.ic = load double, ptr %i.hy, align 8, !tbaa !285
  %i.id = fsub double %i.ib, %i.ic                ; 2 uses
  store double %i.id, ptr %i.ci, align 8, !tbaa !285
  %i.ie = getelementptr inbounds i8, ptr %2, i64 %i.co
  %i.if = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ig = add i32 %4, -2
  br label %..loopexit135_crit_edge.us.prol.loopexit

..loopexit135_crit_edge.us.prol.loopexit:         ; preds = %..loopexit135_crit_edge.us.prol, %.preheader136.us.preheader
  %.pre197.unr = phi double [ %.pre197.pre, %.preheader136.us.preheader ], [ %i.id, %..loopexit135_crit_edge.us.prol ]
  %.unr = phi i32 [ %i.ck, %.preheader136.us.preheader ], [ %i.ig, %..loopexit135_crit_edge.us.prol ]
  %.2157.us159.unr = phi ptr [ %.1, %.preheader136.us.preheader ], [ %i.if, %..loopexit135_crit_edge.us.prol ]
  %.0115155.us160.unr = phi ptr [ %2, %.preheader136.us.preheader ], [ %i.ie, %..loopexit135_crit_edge.us.prol ]
  %i.ih = icmp eq i32 %i.ck, 0
  br i1 %i.ih, label %._crit_edge, label %..loopexit135_crit_edge.us

..loopexit135_crit_edge.us:                       ; preds = %..loopexit135_crit_edge.us.prol.loopexit, %..loopexit135_crit_edge.us
  %.pre197 = phi double [ %i.iy, %..loopexit135_crit_edge.us ], [ %.pre197.unr, %..loopexit135_crit_edge.us.prol.loopexit ]
  %i.ii = phi i32 [ %i.jb, %..loopexit135_crit_edge.us ], [ %.unr, %..loopexit135_crit_edge.us.prol.loopexit ] ; 2 uses
  %.2157.us159 = phi ptr [ %i.ja, %..loopexit135_crit_edge.us ], [ %.2157.us159.unr, %..loopexit135_crit_edge.us.prol.loopexit ] ; 4 uses
  %.0115155.us160 = phi ptr [ %i.iz, %..loopexit135_crit_edge.us ], [ %.0115155.us160.unr, %..loopexit135_crit_edge.us.prol.loopexit ] ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %.2157.us159, i64 %i.cm
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !242
  %i.il = load ptr, ptr %.2157.us159, align 8, !tbaa !242
  %i.im = load double, ptr %i.il, align 8, !tbaa !285
  %i.in = fadd double %.pre197, %i.im             ; 2 uses
  store double %i.in, ptr %.0115155.us160, align 8, !tbaa !285
  %i.io = load double, ptr %i.ik, align 8, !tbaa !285
  %i.ip = fsub double %i.in, %i.io                ; 2 uses
  store double %i.ip, ptr %i.ci, align 8, !tbaa !285
  %i.iq = getelementptr inbounds i8, ptr %.0115155.us160, i64 %i.co ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.2157.us159, i64 8 ; 2 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.cm
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !242
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !242
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !285
  %i.iw = fadd double %i.ip, %i.iv                ; 2 uses
  store double %i.iw, ptr %i.iq, align 8, !tbaa !285
  %i.ix = load double, ptr %i.it, align 8, !tbaa !285
  %i.iy = fsub double %i.iw, %i.ix                ; 2 uses
  store double %i.iy, ptr %i.ci, align 8, !tbaa !285
  %i.iz = getelementptr inbounds i8, ptr %i.iq, i64 %i.co
  %i.ja = getelementptr inbounds nuw i8, ptr %.2157.us159, i64 16
  %i.jb = add nsw i32 %i.ii, -2
  %.not130.us161.1 = icmp eq i32 %i.ii, 1
  br i1 %.not130.us161.1, label %._crit_edge, label %..loopexit135_crit_edge.us, !llvm.loop !988

.preheader136:                                    ; preds = %.preheader136.preheader, %.loopexit135
  %indvar = phi i64 [ 0, %.preheader136.preheader ], [ %indvar.next, %.loopexit135 ] ; 2 uses
  %i.jc = phi i32 [ %i.ck, %.preheader136.preheader ], [ %i.ls, %.loopexit135 ] ; 2 uses
  %.2157 = phi ptr [ %.1, %.preheader136.preheader ], [ %i.lr, %.loopexit135 ] ; 3 uses
  %.0115155 = phi ptr [ %2, %.preheader136.preheader ], [ %i.lq, %.loopexit135 ] ; 7 uses
  %i.jd = mul i64 %indvar, %i.co                  ; 2 uses
  %i.je = load ptr, ptr %.2157, align 8, !tbaa !242 ; 11 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %.2157, i64 %i.cm
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !242 ; 11 uses
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.memcheck269

scalar.ph295.preheader:                           ; preds = %vector.memcheck269, %.preheader136
  br i1 %i.ho, label %scalar.ph295.epil.preheader, label %scalar.ph295

vector.memcheck269:                               ; preds = %.preheader136
  %scevgep272 = getelementptr i8, ptr %i.je, i64 %i.hk ; 2 uses
  %scevgep273 = getelementptr i8, ptr %i.jg, i64 %i.hk ; 2 uses
  %bound0277 = icmp ult ptr %2, %scevgep272
  %bound1278 = icmp ult ptr %i.je, %scevgep270
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx281.reass = or i1 %found.conflict279, %invariant.op
  %bound0282 = icmp ult ptr %2, %scevgep273
  %bound1283 = icmp ult ptr %i.jg, %scevgep270
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx286 = or i1 %found.conflict284, %conflict.rdx281.reass
  %bound0287 = icmp ult ptr %i.ci, %scevgep272
  %bound1288 = icmp ult ptr %i.je, %scevgep271
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx286, %found.conflict289
  %bound0291 = icmp ult ptr %i.ci, %scevgep273
  %bound1292 = icmp ult ptr %i.jg, %scevgep271
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  br i1 %conflict.rdx294, label %scalar.ph295.preheader, label %vector.body299

vector.body299:                                   ; preds = %vector.memcheck269, %vector.body299
  %index300 = phi i64 [ %index.next304, %vector.body299 ], [ 0, %vector.memcheck269 ] ; 3 uses
  %i.jh = shl nuw i64 %index300, 1                ; 4 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.jh ; 2 uses
  %wide.load301 = load <2 x double>, ptr %i.ji, align 8, !tbaa !285, !alias.scope !1015, !noalias !1018
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jh
  %wide.load302 = load <2 x double>, ptr %i.jj, align 8, !tbaa !285, !alias.scope !1021
  %i.jk = fadd <2 x double> %wide.load301, %wide.load302 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.0115155, i64 %i.jh
  store <2 x double> %i.jk, ptr %i.jl, align 8, !tbaa !285, !alias.scope !1022, !noalias !1024
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jh
  %wide.load303 = load <2 x double>, ptr %i.jm, align 8, !tbaa !285, !alias.scope !1025
  %i.jn = fsub <2 x double> %i.jk, %wide.load303
  store <2 x double> %i.jn, ptr %i.ji, align 8, !tbaa !285, !alias.scope !1015, !noalias !1018
  %index.next304 = add nuw i64 %index300, 1
  %i.jo = icmp eq i64 %index300, %i.hd
  br i1 %i.jo, label %..preheader134_crit_edge, label %vector.body299, !llvm.loop !1026

..preheader134_crit_edge.loopexit.unr-lcssa:      ; preds = %scalar.ph295
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 2
  %indvar.next229 = or disjoint i64 %indvar228, 1
  br i1 %lcmp.mod417.not.not, label %scalar.ph295.epil.preheader, label %..preheader134_crit_edge

scalar.ph295.epil.preheader:                      ; preds = %..preheader134_crit_edge.loopexit.unr-lcssa, %scalar.ph295.preheader
  %indvar228.epil.init = phi i64 [ 0, %scalar.ph295.preheader ], [ %indvar.next229.1, %..preheader134_crit_edge.loopexit.unr-lcssa ]
  %indvars.iv176.epil.init = phi i64 [ 2, %scalar.ph295.preheader ], [ %indvars.iv.next177.1, %..preheader134_crit_edge.loopexit.unr-lcssa ]
  %indvars.iv173.epil.init = phi i64 [ 0, %scalar.ph295.preheader ], [ %indvars.iv.next174.1, %..preheader134_crit_edge.loopexit.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod421)
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv173.epil.init ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv173.epil.init
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.0115155, i64 %indvars.iv173.epil.init
  %i.js = load <2 x double>, ptr %i.jp, align 8, !tbaa !285
  %i.jt = load <2 x double>, ptr %i.jq, align 8, !tbaa !285
  %i.ju = fadd <2 x double> %i.js, %i.jt          ; 2 uses
  store <2 x double> %i.ju, ptr %i.jr, align 8, !tbaa !285
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv173.epil.init
  %i.jw = load <2 x double>, ptr %i.jv, align 8, !tbaa !285
  %i.jx = fsub <2 x double> %i.ju, %i.jw
  store <2 x double> %i.jx, ptr %i.jp, align 8, !tbaa !285
  %indvars.iv.next174.epil = add nuw nsw i64 %indvars.iv173.epil.init, 2
  br label %..preheader134_crit_edge

..preheader134_crit_edge:                         ; preds = %vector.body299, %scalar.ph295.epil.preheader, %..preheader134_crit_edge.loopexit.unr-lcssa
  %indvar228.lcssa = phi i64 [ %indvar228.epil.init, %scalar.ph295.epil.preheader ], [ %indvar.next229, %..preheader134_crit_edge.loopexit.unr-lcssa ], [ %i.hd, %vector.body299 ]
  %indvars.iv176.lcssa = phi i64 [ %indvars.iv176.epil.init, %scalar.ph295.epil.preheader ], [ %indvars.iv.next177, %..preheader134_crit_edge.loopexit.unr-lcssa ], [ %i.hn, %vector.body299 ] ; 4 uses
  %indvars.iv.next174.lcssa = phi i64 [ %indvars.iv.next174.epil, %scalar.ph295.epil.preheader ], [ %indvars.iv.next174.1, %..preheader134_crit_edge.loopexit.unr-lcssa ], [ %i.hn, %vector.body299 ]
  %i.jy = trunc nuw nsw i64 %indvars.iv.next174.lcssa to i32
  %i.jz = icmp sgt i32 %5, %i.jy
  br i1 %i.jz, label %.lr.ph147.preheader, label %.loopexit135

.lr.ph147.preheader:                              ; preds = %..preheader134_crit_edge
  br i1 %min.iters.check257, label %.lr.ph147.preheader410, label %vector.memcheck227

vector.memcheck227:                               ; preds = %.lr.ph147.preheader
  %i.ka = shl nuw nsw i64 %indvar228.lcssa, 4     ; 4 uses
  %i.kb = getelementptr i8, ptr %2, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.kb, i64 %i.jd
  %scevgep230 = getelementptr i8, ptr %i.kc, i64 16 ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ka
  %scevgep231 = getelementptr i8, ptr %gep, i64 %i.jd ; 3 uses
  %i.kd = add nuw i64 %i.ka, 16                   ; 3 uses
  %scevgep232 = getelementptr i8, ptr %i.ci, i64 %i.kd ; 3 uses
  %i.ke = add i64 %i.hf, %i.ka                    ; 3 uses
  %scevgep233 = getelementptr i8, ptr %i.ci, i64 %i.ke ; 3 uses
  %scevgep234 = getelementptr i8, ptr %i.je, i64 %i.kd ; 2 uses
  %scevgep235 = getelementptr i8, ptr %i.je, i64 %i.ke ; 2 uses
  %scevgep236 = getelementptr i8, ptr %i.jg, i64 %i.kd ; 2 uses
  %scevgep237 = getelementptr i8, ptr %i.jg, i64 %i.ke ; 2 uses
  %bound0238 = icmp ult ptr %scevgep230, %scevgep233
  %bound1239 = icmp ult ptr %scevgep232, %scevgep231
  %found.conflict240 = and i1 %bound0238, %bound1239
  %bound0241 = icmp ult ptr %scevgep230, %scevgep235
  %bound1242 = icmp ult ptr %scevgep234, %scevgep231
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %found.conflict240, %found.conflict243
  %bound0244 = icmp ult ptr %scevgep230, %scevgep237
  %bound1245 = icmp ult ptr %scevgep236, %scevgep231
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx, %found.conflict246
  %bound0248 = icmp ult ptr %scevgep232, %scevgep235
  %bound1249 = icmp ult ptr %scevgep234, %scevgep233
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %scevgep232, %scevgep237
  %bound1253 = icmp ult ptr %scevgep236, %scevgep233
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  br i1 %conflict.rdx255, label %.lr.ph147.preheader410, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck227
  %i.kf = add i64 %indvars.iv176.lcssa, %n.vec259
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
end_hunk_1
