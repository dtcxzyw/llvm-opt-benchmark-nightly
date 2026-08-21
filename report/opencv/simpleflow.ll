Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/simpleflow?download=true
inline.NumInlined: 521
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv7optflowL24selectPointsToRecalcFlowERKNS_3MatEifiiS3_RS1_S4_:bb.a
  %i.bt = load float, ptr %gep85.us.us.i, align 4, !tbaa !111
  %i.bu = fcmp ogt float %i.bq, %i.bt
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.bq, ptr %gep85.us.us.i, align 4, !tbaa !111
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1
  %.not50.us.us95.not.i = icmp samesign ult i64 %indvars.iv118.i, %i.an
  br i1 %.not50.us.us95.not.i, label %bb.h, label %._crit_edge.split.us.split.us96.i, !llvm.loop !125

._crit_edge.split.us.split.us96.i:                ; preds = %bb.j
  %i.bv = add nuw nsw i32 %.04288.us.i, 1
  %.not.us.not.i = icmp slt i32 %.04288.us.i, %.sroa.speculated72.i
  br i1 %.not.us.not.i, label %.preheader.us.i, label %._crit_edge89.split.i, !llvm.loop !126

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.i.split
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %._crit_edge.split.i.split ], [ %i.x, %.preheader.i.preheader ] ; 3 uses
  br label %bb.k

._crit_edge89.split.i:                            ; preds = %._crit_edge.split.i.split, %._crit_edge.split.i.split.us.us, %._crit_edge.split.us.split.us96.i, %._crit_edge.split.us.split.us.us.us.i, %.preheader.lr.ph.i
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next126.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.split101.i, label %.preheader.lr.ph.i, !llvm.loop !127

._crit_edge.split.i.split:                        ; preds = %bb.m
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1
  %.not.not.i = icmp samesign ult i64 %indvars.iv114.i, %i.ab
  br i1 %.not.not.i, label %.preheader.i, label %._crit_edge89.split.i, !llvm.loop !126

bb.k:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv108.i = phi i64 [ %i.af, %.preheader.i ], [ %indvars.iv.next109.i, %bb.m ] ; 3 uses
  %i.bw = load i64, ptr %i.s, align 8, !noalias !118 ; 2 uses
  %i.bx = mul i64 %i.bw, %indvars.iv128.i
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.bx ; 2 uses
  %i.by = mul i64 %i.bw, %indvars.iv114.i
  %.sink.i59.i = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.by
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sink.i59.i, i64 %indvars.iv108.i ; 2 uses
  %.val.i = load float, ptr %gep.i, align 4, !tbaa !111
  %i.ca = getelementptr i8, ptr %gep.i, i64 4
  %.val52.i = load float, ptr %i.ca, align 4, !tbaa !111
  %.val53.i = load float, ptr %i.bz, align 4, !tbaa !111
  %i.cb = getelementptr i8, ptr %i.bz, i64 4
  %.val54.i = load float, ptr %i.cb, align 4, !tbaa !111
  %i.cc = fsub float %.val.i, %.val53.i           ; 2 uses
  %i.cd = fsub float %.val52.i, %.val54.i         ; 2 uses
  %i.ce = fmul float %i.cd, %i.cd
  %i.cf = call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.ce) ; 2 uses
  %i.cg = load i64, ptr %i.v, align 8, !alias.scope !118
  %i.ch = mul i64 %i.cg, %indvars.iv128.i
  %gep85.i = getelementptr i8, ptr %invariant.gep84.i, i64 %i.ch ; 2 uses
  %i.ci = load float, ptr %gep85.i, align 4, !tbaa !111
  %i.cj = fcmp ogt float %i.cf, %i.ci
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.cf, ptr %gep85.i, align 4, !tbaa !111
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1
  %.not50.not.i = icmp samesign ult i64 %indvars.iv108.i, %i.an
  br i1 %.not50.not.i, label %bb.k, label %._crit_edge.split.i.split, !llvm.loop !125

_ZN2cv7optflowL19calcIrregularityMatERKNS_3MatEi.exit: ; preds = %._crit_edge.split101.i, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i, %.lr.ph103.i
  %i.ck = fpext float %2 to double
  invoke void @_ZN2cvltERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %11, double noundef %i.ck)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZN2cv7optflowL19calcIrregularityMatERKNS_3MatEi.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #20
  %i.cl = load ptr, ptr %10, align 8, !tbaa !31, !noalias !128 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #20
  br label %bb.s

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cq) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cr) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cs) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, i32 noundef %i.b, i32 noundef %i.d, i32 noundef 0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #20
  %i.ct = load ptr, ptr %13, align 8, !tbaa !31, !noalias !131 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !45
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit180 unwind label %.body178

.body178:                                         ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #20
  br label %bb.u

_ZNK2cv7MatExprcvNS_3MatEEv.exit180:              ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cy) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cz) #20
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.da) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i32 noundef %3, i32 noundef %4, i32 noundef 0)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit180
  %i.db = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !45
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.w, !inline_history !109

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.df) #20
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dg) #20
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dh) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, i32 noundef %3, i32 noundef %4, i32 noundef 0)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.di = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit181 unwind label %bb.z, !inline_history !109

_ZN2cv3MataSERKNS_7MatExprE.exit181:              ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dm) #20
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dn) #20
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.do) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !65 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.preheader244.lr.ph, label %._crit_edge274

.preheader244.lr.ph:                              ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit181
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ec = add nsw i32 %i.b, -1
  %i.ed = add nsw i32 %i.d, -1
  %i.ee = add i32 %3, -1                          ; 3 uses
  %i.ef = add i32 %4, -1                          ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 9 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.em = load i32, ptr %i.ds, align 4, !tbaa !66 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.preheader244.preheader, label %._crit_edge274

.preheader244.preheader:                          ; preds = %.preheader244.lr.ph
  %i.eo = sext i32 %i.d to i64
  %i.ep = sext i32 %i.b to i64
  %sext317 = sext i32 %3 to i64
  %invariant.op342 = add nsw i64 %sext317, -1
  %sext = sext i32 %4 to i64                      ; 3 uses
  %invariant.op = add nsw i64 %sext, -1
  br label %.preheader244

.preheader244:                                    ; preds = %.preheader244.preheader, %._crit_edge272
  %i.eq = phi i32 [ %i.dq, %.preheader244.preheader ], [ %i.fl, %._crit_edge272 ]
  %i.er = phi i32 [ %i.em, %.preheader244.preheader ], [ %i.fm, %._crit_edge272 ] ; 2 uses
  %indvars.iv297 = phi i32 [ 0, %.preheader244.preheader ], [ %indvars.iv.next298, %._crit_edge272 ] ; 2 uses
  %indvars.iv289 = phi i64 [ 0, %.preheader244.preheader ], [ %indvars.iv.next290, %._crit_edge272 ] ; 8 uses
  %i.es = call i32 @llvm.smin.i32(i32 %indvars.iv297, i32 %i.ee)
  %smin305 = sext i32 %i.es to i64                ; 2 uses
  %i.et = icmp sgt i32 %i.er, 0
  br i1 %i.et, label %.lr.ph, label %._crit_edge272

.lr.ph:                                           ; preds = %.preheader244
  %i.eu = shl i64 %indvars.iv289, 1               ; 4 uses
  %i.ev = icmp slt i64 %i.eu, %invariant.op342
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  %.sroa.speculated224 = call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.ew) ; 4 uses
  %i.ex = sext i32 %.sroa.speculated224 to i64    ; 2 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv289 to i32
  %.not157250.not = icmp slt i64 %indvars.iv289, %i.ep
  %i.ez = icmp sgt i32 %3, %i.ew
  %i.fa = and i64 %i.eu, 4294967294               ; 2 uses
  %i.fb = trunc i64 %i.eu to i32
  %i.fc = or disjoint i32 %i.fb, 1                ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %3
  %i.fe = zext nneg i32 %i.fc to i64              ; 2 uses
  br label %bb.ab

._crit_edge274:                                   ; preds = %._crit_edge272, %.preheader244.lr.ph, %_ZN2cv3MataSERKNS_7MatExprE.exit181
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void

bb.r:                                             ; preds = %_ZN2cv7optflowL19calcIrregularityMatERKNS_3MatEi.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cp, %.body ], [ %i.ff, %bb.r ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ao

bb.t:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.body178, %bb.t
  %.pn150 = phi { ptr, i32 } [ %i.cx, %.body178 ], [ %i.fg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.an

bb.v:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit180
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn152 = phi { ptr, i32 } [ %i.fi, %bb.w ], [ %i.fh, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.am

bb.y:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.q
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn154 = phi { ptr, i32 } [ %i.fk, %bb.z ], [ %i.fj, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.am

._crit_edge272.loopexit:                          ; preds = %.loopexit
  %.pre316 = load i32, ptr %i.dp, align 8, !tbaa !65
  br label %._crit_edge272

._crit_edge272:                                   ; preds = %._crit_edge272.loopexit, %.preheader244
  %i.fl = phi i32 [ %.pre316, %._crit_edge272.loopexit ], [ %i.eq, %.preheader244 ] ; 2 uses
  %i.fm = phi i32 [ %i.kg, %._crit_edge272.loopexit ], [ %i.er, %.preheader244 ]
  %indvars.iv.next290 = add i64 %indvars.iv289, 1 ; 2 uses
  %i.fn = sext i32 %i.fl to i64
  %i.fo = icmp slt i64 %indvars.iv.next290, %i.fn
  %indvars.iv.next298 = add nuw i32 %indvars.iv297, 2
  br i1 %i.fo, label %.preheader244, label %._crit_edge274, !llvm.loop !134

bb.ab:                                            ; preds = %.lr.ph, %.loopexit
  %indvars.iv293 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next294, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.fp = call i32 @llvm.smin.i32(i32 %indvars.iv293, i32 %i.ef)
  %smin302 = sext i32 %i.fp to i64                ; 2 uses
  %i.fq = load i32, ptr %i.dt, align 4, !tbaa !110
  %i.fr = icmp slt i32 %i.fq, 2
  %i.fs = load ptr, ptr %i.du, align 8, !tbaa !108
  %i.ft = load i64, ptr %i.dv, align 8
  %i.fu = mul i64 %i.ft, %indvars.iv289
  %.sink.idx.i = select i1 %i.fr, i64 0, i64 %i.fu
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sink.idx.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %indvars.iv ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !27
  %.not = icmp eq i8 %i.fw, 0
  br i1 %.not, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fx = load i32, ptr %i.dw, align 4, !tbaa !110
  %i.fy = icmp slt i32 %i.fx, 2
  %i.fz = load ptr, ptr %i.dx, align 8, !tbaa !108
  %i.ga = load i64, ptr %i.dy, align 8
  %i.gb = mul i64 %i.ga, %indvars.iv289
  %.sink.idx.i182 = select i1 %i.fy, i64 0, i64 %i.gb
  %.sink.i183 = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sink.idx.i182
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink.i183, i64 %indvars.iv
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !27
  %.not156 = icmp ne i8 %i.gd, 0
  %brmerge.not342 = select i1 %.not156, i1 %i.ev, i1 false
  %.pre321 = shl nuw nsw i64 %indvars.iv, 1       ; 8 uses
  %i.ge = icmp slt i64 %.pre321, %invariant.op
  %or.cond339 = select i1 %brmerge.not342, i1 %i.ge, i1 false
  br i1 %or.cond339, label %bb.ad, label %._crit_edge320

bb.ad:                                            ; preds = %bb.ac
  %i.gf = load i32, ptr %i.dz, align 4, !tbaa !110
  %i.gg = icmp slt i32 %i.gf, 2
  %i.gh = load ptr, ptr %i.ea, align 8, !tbaa !108
  %i.gi = load i64, ptr %i.eb, align 8
  %i.gj = mul i64 %i.gi, %indvars.iv289
  %.sink.idx.i184 = select i1 %i.gg, i64 0, i64 %i.gj
  %.sink.i185 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.sink.idx.i184
  %i.gk = getelementptr inbounds nuw i8, ptr %.sink.i185, i64 %indvars.iv
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !27  ; 2 uses
  %i.gm = zext nneg i8 %i.gl to i32
  %notmask = shl nsw i32 -1, %i.gm
  %i.gn = xor i32 %notmask, -1                    ; 2 uses
  %i.go = add nuw nsw i32 %i.ey, %i.gn            ; 2 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv to i32
  %i.gq = add nuw nsw i32 %i.gp, %i.gn            ; 2 uses
  %.not166247.not = icmp slt i64 %indvars.iv, %i.eo
  %or.cond340 = and i1 %.not157250.not, %.not166247.not
  br i1 %or.cond340, label %.preheader240.preheader, label %._crit_edge253

.preheader240.preheader:                          ; preds = %bb.ad
  %.sroa.speculated229 = call i32 @llvm.smin.i32(i32 %i.ed, i32 %i.gq)
  %.sroa.speculated234 = call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.go)
  %i.gr = sext i32 %.sroa.speculated229 to i64
  %i.gs = sext i32 %.sroa.speculated234 to i64
  br label %.preheader240

.preheader240:                                    ; preds = %.preheader240.preheader, %._crit_edge
  %indvars.iv291 = phi i64 [ %indvars.iv289, %.preheader240.preheader ], [ %indvars.iv.next292, %._crit_edge ] ; 4 uses
  %.0124251 = phi i1 [ true, %.preheader240.preheader ], [ %spec.select, %._crit_edge ]
  br label %bb.ae

._crit_edge253.loopexit:                          ; preds = %._crit_edge
  %i.gt = xor i1 %spec.select, true
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %._crit_edge253.loopexit, %bb.ad
  %.0124.lcssa = phi i1 [ false, %bb.ad ], [ %i.gt, %._crit_edge253.loopexit ]
  %i.gu = shl nuw nsw i32 %i.go, 1
  %i.gv = or disjoint i32 %i.gu, 1                ; 3 uses
  %.sroa.speculated219 = call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.gv) ; 3 uses
  %i.gw = trunc nuw i64 %.pre321 to i32
  %.sroa.speculated214 = call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.gw) ; 4 uses
  %i.gx = shl nuw nsw i32 %i.gq, 1
  %i.gy = or disjoint i32 %i.gx, 1                ; 3 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.gy) ; 3 uses
  %.not158 = icmp eq i32 %.sroa.speculated224, %.sroa.speculated219
  %or.cond = select i1 %.0124.lcssa, i1 true, i1 %.not158
  %.not159 = icmp eq i32 %.sroa.speculated214, %.sroa.speculated
  %or.cond176 = select i1 %or.cond, i1 true, i1 %.not159
  br i1 %or.cond176, label %.preheader241, label %bb.af

.preheader241:                                    ; preds = %._crit_edge253
  %.not160263 = icmp slt i32 %i.gv, %.sroa.speculated224
  %.not161260 = icmp slt i32 %i.gy, %.sroa.speculated214
  %or.cond276 = select i1 %.not160263, i1 true, i1 %.not161260
  br i1 %or.cond276, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader241
  %i.gz = sext i32 %.sroa.speculated to i64
  %i.ha = sext i32 %.sroa.speculated219 to i64
  br label %.preheader

._crit_edge:                                      ; preds = %bb.ae
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1
  %.not157.not = icmp slt i64 %indvars.iv291, %i.gs
  br i1 %.not157.not, label %.preheader240, label %._crit_edge253.loopexit, !llvm.loop !136

bb.ae:                                            ; preds = %.preheader240, %bb.ae
  %indvars.iv287 = phi i64 [ %indvars.iv, %.preheader240 ], [ %indvars.iv.next288, %bb.ae ] ; 4 uses
  %.1248 = phi i1 [ %.0124251, %.preheader240 ], [ %spec.select, %bb.ae ]
  %i.hb = load i32, ptr %i.dt, align 4, !tbaa !110
  %i.hc = icmp slt i32 %i.hb, 2
  %i.hd = load ptr, ptr %i.du, align 8, !tbaa !108
  %i.he = load i64, ptr %i.dv, align 8
  %i.hf = mul i64 %i.he, %indvars.iv291
  %.sink.idx.i191 = select i1 %i.hc, i64 0, i64 %i.hf
  %.sink.i192 = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sink.idx.i191
  %i.hg = getelementptr inbounds nuw i8, ptr %.sink.i192, i64 %indvars.iv287
  store i8 1, ptr %i.hg, align 1, !tbaa !27
  %i.hh = load i32, ptr %i.dw, align 4, !tbaa !110
  %i.hi = icmp slt i32 %i.hh, 2
  %i.hj = load ptr, ptr %i.dx, align 8, !tbaa !108
  %i.hk = load i64, ptr %i.dy, align 8
  %i.hl = mul i64 %i.hk, %indvars.iv291
  %.sink.idx.i193 = select i1 %i.hi, i64 0, i64 %i.hl
  %.sink.i194 = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.sink.idx.i193
  %i.hm = getelementptr inbounds nuw i8, ptr %.sink.i194, i64 %indvars.iv287
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !27
  %.not174 = icmp ne i8 %i.hn, 0
  %spec.select = select i1 %.not174, i1 %.1248, i1 false ; 3 uses
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1
  %.not166.not = icmp slt i64 %indvars.iv287, %i.gr
  br i1 %.not166.not, label %bb.ae, label %._crit_edge, !llvm.loop !137

bb.af:                                            ; preds = %._crit_edge253
  %i.ho = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.hp = icmp slt i32 %i.ho, 2
  %i.hq = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.hr = load i64, ptr %i.ei, align 8
  %i.hs = mul i64 %i.hr, %i.ex
  %.sink.idx.i195 = select i1 %i.hp, i64 0, i64 %i.hs
  %.sink.i196 = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sink.idx.i195
  %i.ht = sext i32 %.sroa.speculated214 to i64    ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %.sink.i196, i64 %i.ht
  store i8 -1, ptr %i.hu, align 1, !tbaa !27
  %i.hv = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.hw = icmp slt i32 %i.hv, 2
  %i.hx = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.hy = load i64, ptr %i.ei, align 8
  %i.hz = sext i32 %.sroa.speculated219 to i64    ; 3 uses
  %i.ia = mul i64 %i.hy, %i.hz
  %.sink.idx.i197 = select i1 %i.hw, i64 0, i64 %i.ia
  %.sink.i198 = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.sink.idx.i197
  %i.ib = getelementptr inbounds i8, ptr %.sink.i198, i64 %i.ht
  store i8 -1, ptr %i.ib, align 1, !tbaa !27
  %i.ic = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.id = icmp slt i32 %i.ic, 2
  %i.ie = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.if = load i64, ptr %i.ei, align 8
  %i.ig = mul i64 %i.if, %i.ex
  %.sink.idx.i199 = select i1 %i.id, i64 0, i64 %i.ig
  %.sink.i200 = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sink.idx.i199
  %i.ih = sext i32 %.sroa.speculated to i64       ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %.sink.i200, i64 %i.ih
  store i8 -1, ptr %i.ii, align 1, !tbaa !27
  %i.ij = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.ik = icmp slt i32 %i.ij, 2
  %i.il = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.im = load i64, ptr %i.ei, align 8
  %i.in = mul i64 %i.im, %i.hz
  %.sink.idx.i201 = select i1 %i.ik, i64 0, i64 %i.in
  %.sink.i202 = getelementptr inbounds nuw i8, ptr %i.il, i64 %.sink.idx.i201
  %i.io = getelementptr inbounds i8, ptr %.sink.i202, i64 %i.ih
  store i8 -1, ptr %i.io, align 1, !tbaa !27
  %.not162258 = icmp slt i32 %i.gv, %.sroa.speculated224
  br i1 %.not162258, label %.loopexit, label %.preheader239.lr.ph

.preheader239.lr.ph:                              ; preds = %bb.af
  %.not163255 = icmp slt i32 %i.gy, %.sroa.speculated214
  %i.ip = add i8 %i.gl, 1
  br i1 %.not163255, label %.loopexit, label %.preheader239

.preheader239:                                    ; preds = %.preheader239.lr.ph, %._crit_edge257
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %._crit_edge257 ], [ %smin305, %.preheader239.lr.ph ] ; 3 uses
  br label %bb.ag

._crit_edge257:                                   ; preds = %bb.ag
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, 1
  %.not162.not = icmp slt i64 %indvars.iv300, %i.hz
  br i1 %.not162.not, label %.preheader239, label %.loopexit, !llvm.loop !138

bb.ag:                                            ; preds = %.preheader239, %bb.ag
  %indvars.iv295 = phi i64 [ %smin302, %.preheader239 ], [ %indvars.iv.next296, %bb.ag ] ; 3 uses
  %i.iq = load i32, ptr %i.ej, align 4, !tbaa !110
  %i.ir = icmp slt i32 %i.iq, 2
  %i.is = load ptr, ptr %i.ek, align 8, !tbaa !108
  %i.it = load i64, ptr %i.el, align 8
  %i.iu = mul i64 %i.it, %indvars.iv300
  %.sink.idx.i203 = select i1 %i.ir, i64 0, i64 %i.iu
  %.sink.i204 = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sink.idx.i203
  %i.iv = getelementptr inbounds i8, ptr %.sink.i204, i64 %indvars.iv295
  store i8 %i.ip, ptr %i.iv, align 1, !tbaa !27
  %indvars.iv.next296 = add nsw i64 %indvars.iv295, 1
  %.not163.not = icmp slt i64 %indvars.iv295, %i.ih
  br i1 %.not163.not, label %bb.ag, label %._crit_edge257, !llvm.loop !139

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge262
  %indvars.iv306 = phi i64 [ %smin305, %.preheader.preheader ], [ %indvars.iv.next307, %._crit_edge262 ] ; 3 uses
  br label %bb.ah

._crit_edge262:                                   ; preds = %bb.ah
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, 1
  %.not160.not = icmp slt i64 %indvars.iv306, %i.ha
  br i1 %.not160.not, label %.preheader, label %.loopexit, !llvm.loop !140

bb.ah:                                            ; preds = %.preheader, %bb.ah
  %indvars.iv303 = phi i64 [ %smin302, %.preheader ], [ %indvars.iv.next304, %bb.ah ] ; 3 uses
  %i.iw = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.iz = load i64, ptr %i.ei, align 8
  %i.ja = mul i64 %i.iz, %indvars.iv306
  %.sink.idx.i205 = select i1 %i.ix, i64 0, i64 %i.ja
  %.sink.i206 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sink.idx.i205
  %i.jb = getelementptr inbounds i8, ptr %.sink.i206, i64 %indvars.iv303
  store i8 -1, ptr %i.jb, align 1, !tbaa !27
  %indvars.iv.next304 = add nsw i64 %indvars.iv303, 1
  %.not161.not = icmp slt i64 %indvars.iv303, %i.gz
  br i1 %.not161.not, label %bb.ah, label %._crit_edge262, !llvm.loop !141

._crit_edge320:                                   ; preds = %bb.ac
  store i8 1, ptr %i.fv, align 1, !tbaa !27
  br i1 %i.ez, label %.split.preheader, label %.split267.us

.split.preheader:                                 ; preds = %._crit_edge320
  %i.jc = trunc nuw i64 %.pre321 to i32
  %i.jd = icmp sgt i32 %4, %i.jc
  br i1 %i.jd, label %bb.ak, label %.split.1

.split267.us:                                     ; preds = %.split.1, %bb.al, %._crit_edge320
  br i1 %i.fd, label %.split.preheader.1, label %.loopexit

.split.preheader.1:                               ; preds = %.split267.us
  %i.je = trunc nuw i64 %.pre321 to i32
  %i.jf = icmp sgt i32 %4, %i.je
  br i1 %i.jf, label %bb.ai, label %.split.1.1

bb.ai:                                            ; preds = %.split.preheader.1
  %i.jg = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.jh = icmp slt i32 %i.jg, 2
  %i.ji = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.jj = load i64, ptr %i.ei, align 8
  %i.jk = mul i64 %i.jj, %i.fe
  %.sink.idx.i209.1312 = select i1 %i.jh, i64 0, i64 %i.jk
  %.sink.i210.1313 = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.sink.idx.i209.1312
  %i.jl = getelementptr inbounds nuw i8, ptr %.sink.i210.1313, i64 %.pre321
  store i8 -1, ptr %i.jl, align 1, !tbaa !27
  br label %.split.1.1

.split.1.1:                                       ; preds = %bb.ai, %.split.preheader.1
  %i.jm = or disjoint i64 %.pre321, 1             ; 2 uses
  %16 = icmp slt i64 %i.jm, %sext
  br i1 %16, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.split.1.1
  %i.jn = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.jo = icmp slt i32 %i.jn, 2
  %i.jp = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.jq = load i64, ptr %i.ei, align 8
  %i.jr = mul i64 %i.jq, %i.fe
  %.sink.idx.i209.1.1 = select i1 %i.jo, i64 0, i64 %i.jr
  %.sink.i210.1.1 = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.sink.idx.i209.1.1
  %i.js = getelementptr inbounds nuw i8, ptr %.sink.i210.1.1, i64 %i.jm
  store i8 -1, ptr %i.js, align 1, !tbaa !27
  br label %.loopexit

bb.ak:                                            ; preds = %.split.preheader
  %i.jt = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.ju = icmp slt i32 %i.jt, 2
  %i.jv = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.jw = load i64, ptr %i.ei, align 8
  %i.jx = mul i64 %i.jw, %i.fa
  %.sink.idx.i209 = select i1 %i.ju, i64 0, i64 %i.jx
  %.sink.i210 = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.sink.idx.i209
  %i.jy = getelementptr inbounds nuw i8, ptr %.sink.i210, i64 %.pre321
  store i8 -1, ptr %i.jy, align 1, !tbaa !27
  br label %.split.1

.split.1:                                         ; preds = %bb.ak, %.split.preheader
  %i.jz = or disjoint i64 %.pre321, 1             ; 2 uses
  %17 = icmp slt i64 %i.jz, %sext
  br i1 %17, label %bb.al, label %.split267.us

bb.al:                                            ; preds = %.split.1
  %i.ka = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.kb = icmp slt i32 %i.ka, 2
  %i.kc = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.kd = load i64, ptr %i.ei, align 8
  %i.ke = mul i64 %i.kd, %i.fa
  %.sink.idx.i209.1 = select i1 %i.kb, i64 0, i64 %i.ke
  %.sink.i210.1 = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.sink.idx.i209.1
  %i.kf = getelementptr inbounds nuw i8, ptr %.sink.i210.1, i64 %i.jz
  store i8 -1, ptr %i.kf, align 1, !tbaa !27
  br label %.split267.us

.loopexit:                                        ; preds = %._crit_edge257, %._crit_edge262, %.split267.us, %bb.aj, %.split.1.1, %bb.af, %.preheader239.lr.ph, %.preheader241, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kg = load i32, ptr %i.ds, align 4, !tbaa !66 ; 2 uses
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp slt i64 %indvars.iv.next, %i.kh
  %indvars.iv.next294 = add nuw i32 %indvars.iv293, 2
  br i1 %i.ki, label %bb.ab, label %._crit_edge272.loopexit, !llvm.loop !142

bb.am:                                            ; preds = %bb.aa, %bb.x
  %.pn167.pn.pn.pn = phi { ptr, i32 } [ %.pn152, %bb.x ], [ %.pn154, %bb.aa ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.u
  %.pn167.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn, %bb.am ], [ %.pn150, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.s
  %.pn167.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn, %bb.an ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv7optflowL18upscaleOpticalFlowEiiRKNS_3MatES3_RS1_iff(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !57
  store i32 16842752, ptr %10, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !57
  store i32 16842752, ptr %11, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !58
  store ptr %5, ptr %i.g, align 8, !tbaa !11
  %i.i = fpext float %8 to double
  %i.j = fpext float %7 to double
  call fastcc void @_ZN2cv7optflowL20crossBilateralFilterERKNS_11_InputArrayES3_RKNS_17_InputOutputArrayEiddb(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %6, double noundef %i.i, double noundef %i.j, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !57
  store i32 16842752, ptr %13, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !58
  store ptr %0, ptr %i.n, align 8, !tbaa !11
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.0.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !58
  store ptr %0, ptr %i.p, align 8, !tbaa !11
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef -1, double noundef 2.000000e+00, double noundef 0.000000e+00)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn22 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #20
  resume { ptr, i32 } %.pn22
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv7optflowL14calcConfidenceERKNS_3MatES3_S3_RS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, i32 noundef %i.b, i32 noundef %i.d, i32 noundef 5)
  %i.e = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.b, !inline_history !109

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #20
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.l = icmp sgt i32 %i.b, 0
  br i1 %i.l, label %.preheader139.lr.ph, label %._crit_edge159.split

.preheader139.lr.ph:                              ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.m = icmp sgt i32 %i.d, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  br i1 %i.m, label %.preheader139.lr.ph.split, label %._crit_edge159.split

.preheader139.lr.ph.split:                        ; preds = %.preheader139.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !110
  %i.aa = icmp slt i32 %i.z, 2
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !110
  %i.ad = icmp slt i32 %i.ac, 2                   ; 2 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !108 ; 2 uses
  %wide.trip.count172 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.lr.ph.split, %._crit_edge157
  %indvars.iv168 = phi i64 [ 0, %.preheader139.lr.ph.split ], [ %indvars.iv.next169, %._crit_edge157 ] ; 7 uses
  %i.af = sub nsw i64 0, %indvars.iv168           ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv168 to i32 ; 3 uses
  %i.ah = xor i32 %i.ag, -1
  %i.ai = add nsw i32 %i.b, %i.ah
  %i.aj = trunc nsw i64 %i.af to i32
end_hunk_0
