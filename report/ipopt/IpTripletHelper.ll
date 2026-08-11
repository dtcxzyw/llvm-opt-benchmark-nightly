inline.NumInlined: 492
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_25ExpandedMultiVectorMatrixEPd:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.037104.us, i64 %i.am ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !195
  %wide.load198 = load <2 x double>, ptr %i.ao, align 8, !tbaa !195
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !195
  store <2 x double> %wide.load198, ptr %i.ap, align 8, !tbaa !195
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit92.us, label %.preheader93.us.preheader202

.preheader93.us.preheader202:                     ; preds = %.preheader93.us.preheader, %middle.block
  %indvars.iv152.ph = phi i64 [ 0, %.preheader93.us.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.198.us.ph = phi ptr [ %.037104.us, %.preheader93.us.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %i.ar = sub nsw i64 %i.y, %indvars.iv152.ph
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader93.us.prol.loopexit, label %.preheader93.us.prol

.preheader93.us.prol:                             ; preds = %.preheader93.us.preheader202, %.preheader93.us.prol
  %indvars.iv152.prol = phi i64 [ %indvars.iv.next153.prol, %.preheader93.us.prol ], [ %indvars.iv152.ph, %.preheader93.us.preheader202 ] ; 2 uses
  %.198.us.prol = phi ptr [ %i.au, %.preheader93.us.prol ], [ %.198.us.ph, %.preheader93.us.preheader202 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader93.us.prol ], [ 0, %.preheader93.us.preheader202 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !195
  %i.au = getelementptr inbounds nuw i8, ptr %.198.us.prol, i64 8 ; 3 uses
  store double %i.at, ptr %.198.us.prol, align 8, !tbaa !195
  %indvars.iv.next153.prol = add nuw nsw i64 %indvars.iv152.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader93.us.prol.loopexit, label %.preheader93.us.prol, !llvm.loop !366

.preheader93.us.prol.loopexit:                    ; preds = %.preheader93.us.prol, %.preheader93.us.preheader202
  %.lcssa203.unr = phi ptr [ poison, %.preheader93.us.preheader202 ], [ %i.au, %.preheader93.us.prol ]
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %.preheader93.us.preheader202 ], [ %indvars.iv.next153.prol, %.preheader93.us.prol ]
  %.198.us.unr = phi ptr [ %.198.us.ph, %.preheader93.us.preheader202 ], [ %i.au, %.preheader93.us.prol ]
  %i.av = sub nsw i64 %indvars.iv152.ph, %i.y
  %i.aw = icmp ugt i64 %i.av, -8
  br i1 %i.aw, label %.loopexit92.us, label %.preheader93.us

.preheader93.us:                                  ; preds = %.preheader93.us.prol.loopexit, %.preheader93.us
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.7, %.preheader93.us ], [ %indvars.iv152.unr, %.preheader93.us.prol.loopexit ] ; 9 uses
  %.198.us = phi ptr [ %i.cb, %.preheader93.us ], [ %.198.us.unr, %.preheader93.us.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !195
  %i.az = getelementptr inbounds nuw i8, ptr %.198.us, i64 8
  store double %i.ay, ptr %.198.us, align 8, !tbaa !195
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !195
  %i.bd = getelementptr inbounds nuw i8, ptr %.198.us, i64 16
  store double %i.bc, ptr %i.az, align 8, !tbaa !195
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !195
  %i.bh = getelementptr inbounds nuw i8, ptr %.198.us, i64 24
  store double %i.bg, ptr %i.bd, align 8, !tbaa !195
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !195
  %i.bl = getelementptr inbounds nuw i8, ptr %.198.us, i64 32
  store double %i.bk, ptr %i.bh, align 8, !tbaa !195
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !195
  %i.bp = getelementptr inbounds nuw i8, ptr %.198.us, i64 40
  store double %i.bo, ptr %i.bl, align 8, !tbaa !195
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !195
  %i.bt = getelementptr inbounds nuw i8, ptr %.198.us, i64 48
  store double %i.bs, ptr %i.bp, align 8, !tbaa !195
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !195
  %i.bx = getelementptr inbounds nuw i8, ptr %.198.us, i64 56
  store double %i.bw, ptr %i.bt, align 8, !tbaa !195
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !195
  %i.cb = getelementptr inbounds nuw i8, ptr %.198.us, i64 64 ; 2 uses
  store double %i.ca, ptr %i.bx, align 8, !tbaa !195
  %indvars.iv.next153.7 = add nuw nsw i64 %indvars.iv152, 8 ; 2 uses
  %exitcond156.not.7 = icmp eq i64 %indvars.iv.next153.7, %i.y
  br i1 %exitcond156.not.7, label %.loopexit92.us, label %.preheader93.us, !llvm.loop !367

.loopexit92.us:                                   ; preds = %.preheader93.us.prol.loopexit, %.preheader93.us, %middle.block
  %.lcssa192 = phi ptr [ %i.al, %middle.block ], [ %.lcssa203.unr, %.preheader93.us.prol.loopexit ], [ %i.cb, %.preheader93.us ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !44
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !44
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

bb.d:                                             ; preds = %.loopexit92.us
  %i.cg = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(205) %i.ag) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us:   ; preds = %.loopexit92.us.thread, %bb.d, %.loopexit92.us
  %.3.us178 = phi ptr [ %scevgep157, %.loopexit92.us.thread ], [ %.lcssa192, %bb.d ], [ %.lcssa192, %.loopexit92.us ]
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %._crit_edge, label %.lr.ph105.split.us, !llvm.loop !368

.loopexit92.us.thread:                            ; preds = %.lr.ph105.split.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %.037104.us, i8 0, i64 %i.z, i1 false), !tbaa !195
  %i.cj = getelementptr i8, ptr %.037104.us, i64 %i.ac
  %scevgep157 = getelementptr i8, ptr %i.cj, i64 8
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

.split.us:                                        ; preds = %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph105.split.split.preheader:                  ; preds = %.lr.ph105
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph105.split.split

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread: ; preds = %bb.b
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph105.split.split:                            ; preds = %.lr.ph105.split.split.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61
  %indvars.iv = phi i64 [ 0, %.lr.ph105.split.split.preheader ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61 ] ; 2 uses
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !361, !noalias !362
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !328, !noalias !362 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61, label %bb.e

bb.e:                                             ; preds = %.lr.ph105.split.split
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !44, !noalias !362
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !44, !noalias !362
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %.fr131, ptr noundef nonnull align 8 dereferenceable(205) %i.co, ptr noundef nonnull %i.t)
          to label %.preheader91 unwind label %.split.split

.split.split:                                     ; preds = %bb.e
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split:                                           ; preds = %.split.split, %.split.us
  %.us-phi = phi ptr [ %i.ag, %.split.us ], [ %i.co, %.split.split ] ; 2 uses
  %.us-phi106 = phi { ptr, i32 } [ %i.ck, %.split.us ], [ %i.cs, %.split.split ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !44
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !44
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

.preheader91:                                     ; preds = %bb.e
  %i.cx = load i32, ptr %i.cp, align 8, !tbaa !44
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.cy, ptr %i.cp, align 8, !tbaa !44
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61

bb.f:                                             ; preds = %.preheader91
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !45
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(205) %i.co) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61:      ; preds = %.lr.ph105.split.split, %.preheader91, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph105.split.split, !llvm.loop !368

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us, %.preheader95
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #19
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !58 ; 5 uses
  %i.df = icmp sgt i32 %i.d, 0
  br i1 %i.df, label %.lr.ph130, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

.lr.ph130:                                        ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dh = sext i32 %i.de to i64
  %i.di = icmp sgt i32 %i.de, 0
  %i.dj = zext nneg i32 %i.de to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = add i32 %i.de, -1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %wide.trip.count167 = zext nneg i32 %i.d to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph130, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67
  %indvars.iv164 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next165, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67 ] ; 2 uses
  %.4127 = phi ptr [ %2, %.lr.ph130 ], [ %.687, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67 ] ; 5 uses
  %i.do = load ptr, ptr %i.dg, align 8, !tbaa !361, !noalias !369
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv164
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !328, !noalias !369 ; 6 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i62, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  br i1 %i.di, label %.lr.ph.preheader, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

.lr.ph.preheader:                                 ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 8 %.4127, i8 0, i64 %i.dk, i1 false), !tbaa !195
  %i.dr = getelementptr i8, ptr %.4127, i64 %i.dn
  %scevgep163 = getelementptr i8, ptr %i.dr, i64 8
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

bb.i:                                             ; preds = %bb.h
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 6 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !44, !noalias !369
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !44, !noalias !369
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(205) %i.dq, ptr noundef %.4127)
          to label %.thread84 unwind label %bb.j

.thread84:                                        ; preds = %bb.i
  %i.dv = getelementptr inbounds [8 x i8], ptr %.4127, i64 %i.dh ; 2 uses
  %i.dw = load i32, ptr %i.ds, align 8, !tbaa !44
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.ds, align 8, !tbaa !44
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.k, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

bb.j:                                             ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load i32, ptr %i.ds, align 8, !tbaa !44
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.ds, align 8, !tbaa !44
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.k:                                             ; preds = %.thread84
  %i.ed = load ptr, ptr %i.dq, align 8, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(205) %i.dq) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67:      ; preds = %.lr.ph.preheader, %.preheader, %.thread84, %bb.k
  %.687 = phi ptr [ %i.dv, %bb.k ], [ %i.dv, %.thread84 ], [ %.4127, %.preheader ], [ %scevgep163, %.lr.ph.preheader ]
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %.loopexit, label %bb.h, !llvm.loop !372

.loopexit:                                        ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67, %._crit_edge
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !44
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !44
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ek = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(80) %i.h) #17, !inline_history !238
  br label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit: ; preds = %bb.g, %.loopexit, %bb.l, %bb.m
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split: ; preds = %bb.j, %.split
  %.lcssa180.sink188 = phi ptr [ %.us-phi, %.split ], [ %i.dq, %bb.j ] ; 2 uses
  %.pn55.pn.pn.pn.ph = phi { ptr, i32 } [ %.us-phi106, %.split ], [ %i.dz, %bb.j ]
  %i.en = load ptr, ptr %.lcssa180.sink188, align 8, !tbaa !45
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(205) %.lcssa180.sink188) #17
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split, %bb.j, %.split
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.j ], [ %.us-phi106, %.split ], [ %.pn55.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split ] ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit._crit_edge

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit._crit_edge: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !44
  %i.eq = add nsw i32 %.pre, -1
  br label %bb.n

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit._crit_edge, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread
  %i.er = phi i32 [ %i.j, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread ], [ %i.eq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit._crit_edge ] ; 2 uses
  %.pn55.pn.pn.pn89 = phi { ptr, i32 } [ %i.cl, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread ], [ %.pn55.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit._crit_edge ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.er, ptr %i.es, align 8, !tbaa !44
  %i.et = icmp eq i32 %i.er, 0
  br i1 %i.et, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70

bb.o:                                             ; preds = %bb.n
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(80) %i.h) #17, !inline_history !238
  br label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.n, %bb.o
  %.pn55.pn.pn.pn90 = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ], [ %.pn55.pn.pn.pn89, %bb.n ], [ %.pn55.pn.pn.pn89, %bb.o ]
  resume { ptr, i32 } %.pn55.pn.pn.pn90
}

declare noundef i32 @_ZNK5Ipopt9SumMatrix6NTermsEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZNK5Ipopt9SumMatrix7GetTermEiRdRNS_8SmartPtrIKNS_6MatrixEEE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK5Ipopt12SumSymMatrix6NTermsEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZNK5Ipopt12SumSymMatrix7GetTermEiRdRNS_8SmartPtrIKNS_9SymMatrixEEE(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK5Ipopt17CompoundSymMatrix10NComps_DimEv(ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #3

declare void @_ZNK5Ipopt10SymTMatrix10FillValuesEPd(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(205) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.37", align 1 ; 4 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #17 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 233
  %i.d = load i8, ptr %i.c, align 1, !tbaa !373, !range !379, !noundef !380
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = load double, ptr %i.f, align 8, !tbaa !381
  store double %i.g, ptr %i.a, align 8, !tbaa !195
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef %2, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !382
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %0, ptr noundef %i.i, i32 noundef 1, ptr noundef %2, i32 noundef 1)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt14CompoundVectorE, i64 0) #17 ; 4 uses
  %.not34 = icmp eq ptr %i.j, null
  br i1 %.not34, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !383
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !391  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ] ; 3 uses
  %.03063 = phi ptr [ %2, %.lr.ph ], [ %i.af, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !398, !noalias !399
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264, !noalias !399 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i:    ; preds = %bb.g
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !361, !noalias !399
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !328, !noalias !399, !nonnull !380, !noundef !380
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %bb.g
end_hunk_0
