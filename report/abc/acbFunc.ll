Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acbFunc?download=true
inline.NumInlined: 1282
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@Acb_VerilogSimpleParse:bb.a

scalar.ph364.preheader:                           ; preds = %vector.memcheck366, %.lr.ph228, %middle.block385
  %indvars.iv263.ph = phi i64 [ 0, %vector.memcheck366 ], [ 0, %.lr.ph228 ], [ %n.vec379, %middle.block385 ] ; 4 uses
  %indvars.iv261.ph = phi i64 [ %i.gn, %vector.memcheck366 ], [ %i.gn, %.lr.ph228 ], [ %i.gx, %middle.block385 ] ; 4 uses
  %xtraiter395 = and i64 %wide.trip.count268, 1
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %scalar.ph364.prol.loopexit, label %scalar.ph364.prol

scalar.ph364.prol:                                ; preds = %scalar.ph364.preheader
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv263.ph
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !33 ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.gl, i64 %indvars.iv261.ph
  store i8 5, ptr %i.hj, align 1, !tbaa !26
  %indvars.iv.next262.prol = add nsw i64 %indvars.iv261.ph, 1 ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv261.ph
  store i32 %i.hi, ptr %i.hk, align 4, !tbaa !33
  %indvars.iv.next264.prol = or disjoint i64 %indvars.iv263.ph, 1
  br label %scalar.ph364.prol.loopexit

scalar.ph364.prol.loopexit:                       ; preds = %scalar.ph364.prol, %scalar.ph364.preheader
  %.lcssa391.unr = phi i32 [ poison, %scalar.ph364.preheader ], [ %i.hi, %scalar.ph364.prol ]
  %indvars.iv.next262.lcssa390.unr = phi i64 [ poison, %scalar.ph364.preheader ], [ %indvars.iv.next262.prol, %scalar.ph364.prol ]
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %scalar.ph364.preheader ], [ %indvars.iv.next264.prol, %scalar.ph364.prol ]
  %indvars.iv261.unr = phi i64 [ %indvars.iv261.ph, %scalar.ph364.preheader ], [ %indvars.iv.next262.prol, %scalar.ph364.prol ]
  %i.hl = add nsw i64 %wide.trip.count268, -1
  %i.hm = icmp eq i64 %indvars.iv263.ph, %i.hl
  br i1 %i.hm, label %..critedge7_crit_edge, label %scalar.ph364

scalar.ph364:                                     ; preds = %scalar.ph364.prol.loopexit, %scalar.ph364
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.1, %scalar.ph364 ], [ %indvars.iv263.unr, %scalar.ph364.prol.loopexit ] ; 3 uses
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.1, %scalar.ph364 ], [ %indvars.iv261.unr, %scalar.ph364.prol.loopexit ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv263
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !33
  %i.hp = getelementptr inbounds i8, ptr %i.gl, i64 %indvars.iv261
  store i8 5, ptr %i.hp, align 1, !tbaa !26
  %indvars.iv.next262 = add nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv261
  store i32 %i.ho, ptr %i.hq, align 4, !tbaa !33
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv263
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !33 ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %i.gl, i64 %indvars.iv.next262
  store i8 5, ptr %i.hu, align 1, !tbaa !26
  %indvars.iv.next262.1 = add nsw i64 %indvars.iv261, 2 ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv.next262
  store i32 %i.ht, ptr %i.hv, align 4, !tbaa !33
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %exitcond269.not.1 = icmp eq i64 %indvars.iv.next264.1, %wide.trip.count268
  br i1 %exitcond269.not.1, label %..critedge7_crit_edge, label %scalar.ph364, !llvm.loop !146

..critedge7_crit_edge:                            ; preds = %scalar.ph364.prol.loopexit, %scalar.ph364, %middle.block385
  %.lcssa325 = phi i32 [ %i.hg, %middle.block385 ], [ %.lcssa391.unr, %scalar.ph364.prol.loopexit ], [ %i.ht, %scalar.ph364 ]
  %indvars.iv.next262.lcssa = phi i64 [ %i.gx, %middle.block385 ], [ %indvars.iv.next262.lcssa390.unr, %scalar.ph364.prol.loopexit ], [ %indvars.iv.next262.1, %scalar.ph364 ]
  %i.hw = trunc nsw i64 %indvars.iv.next262.lcssa to i32
  store i32 %i.hw, ptr %i.dq, align 8, !tbaa !38
  %.val161.pre = load ptr, ptr %i.dv, align 8, !tbaa !37
  br label %.critedge7

.critedge7:                                       ; preds = %..critedge7_crit_edge, %Ndr_DataResize.exit199
  %.val161 = phi ptr [ %.val161.pre, %..critedge7_crit_edge ], [ %i.gk, %Ndr_DataResize.exit199 ] ; 5 uses
  %.lcssa226 = phi i32 [ %.lcssa325, %..critedge7_crit_edge ], [ %.lcssa, %Ndr_DataResize.exit199 ] ; 2 uses
  store i32 %.lcssa226, ptr %i.a, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.val161, i64 8 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !33
  %i.hz = add i32 %i.hy, %.val138
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !33
  %i.ia = load i32, ptr %.val161, align 4, !tbaa !33
  %i.ib = add i32 %i.ia, %.val138
  store i32 %i.ib, ptr %.val161, align 4, !tbaa !33
  %.val134 = load i32, ptr %i.l, align 4, !tbaa !30 ; 3 uses
  %i.ic = load i32, ptr %i.dq, align 8, !tbaa !38
  %i.id = add nsw i32 %i.ic, %.val134             ; 2 uses
  %i.ie = load i32, ptr %i.dr, align 4, !tbaa !35 ; 2 uses
  %.not.i200 = icmp sgt i32 %i.id, %i.ie
  br i1 %.not.i200, label %bb.ap, label %Ndr_DataResize.exit202

bb.ap:                                            ; preds = %.critedge7
  %i.if = shl nsw i32 %i.ie, 1
  %..i201 = tail call i32 @llvm.smax.i32(i32 %i.if, i32 %i.id) ; 3 uses
  store i32 %..i201, ptr %i.dr, align 4, !tbaa !35
  %i.ig = load ptr, ptr %i.dt, align 8, !tbaa !36
  %i.ih = sext i32 %..i201 to i64
  %i.ii = tail call ptr @realloc(ptr noundef %i.ig, i64 noundef %i.ih) #33
  store ptr %i.ii, ptr %i.dt, align 8, !tbaa !36
  %i.ij = shl nsw i32 %..i201, 2
  %i.ik = sext i32 %i.ij to i64
  %i.il = tail call ptr @realloc(ptr noundef nonnull %.val161, i64 noundef %i.ik) #33 ; 2 uses
  store ptr %i.il, ptr %i.dv, align 8, !tbaa !37
  br label %Ndr_DataResize.exit202

Ndr_DataResize.exit202:                           ; preds = %.critedge7, %bb.ap
  %.val159 = phi ptr [ %.val161, %.critedge7 ], [ %i.il, %bb.ap ] ; 4 uses
  %i.im = icmp sgt i32 %.val134, 0
  br i1 %i.im, label %.lr.ph236, label %.critedge9

.lr.ph236:                                        ; preds = %Ndr_DataResize.exit202
  %.val152 = load ptr, ptr %i.n, align 8, !tbaa !32
  %wide.trip.count273 = zext nneg i32 %.val134 to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph236, %Acb_WireIsTarget.exit.thread
  %indvars.iv270 = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next271, %Acb_WireIsTarget.exit.thread ] ; 2 uses
  %.0235 = phi i32 [ 0, %.lr.ph236 ], [ %.1, %Acb_WireIsTarget.exit.thread ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.val152, i64 %indvars.iv270
  %i.io = load i32, ptr %i.in, align 4, !tbaa !33 ; 3 uses
  %i.ip = tail call ptr @Abc_NamStr(ptr noundef %1, i32 noundef %i.io) #34 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !26
  %i.ir = icmp eq i8 %i.iq, 116
  br i1 %i.ir, label %Acb_WireIsTarget.exit, label %Acb_WireIsTarget.exit.thread

Acb_WireIsTarget.exit:                            ; preds = %bb.aq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !26
  %.not214 = icmp eq i8 %i.it, 95
  br i1 %.not214, label %bb.ar, label %Acb_WireIsTarget.exit.thread

bb.ar:                                            ; preds = %Acb_WireIsTarget.exit
  %i.iu = load ptr, ptr %i.dt, align 8, !tbaa !36
  %i.iv = load i32, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iu, i64 %i.iw
  store i8 10, ptr %i.ix, align 1, !tbaa !26
  %i.iy = add nsw i32 %i.iv, 1
  store i32 %i.iy, ptr %i.dq, align 8, !tbaa !38
  %i.iz = getelementptr inbounds [4 x i8], ptr %.val159, i64 %i.iw
  store i32 %i.io, ptr %i.iz, align 4, !tbaa !33
  %i.ja = add nsw i32 %.0235, 1
  br label %Acb_WireIsTarget.exit.thread

Acb_WireIsTarget.exit.thread:                     ; preds = %bb.aq, %Acb_WireIsTarget.exit, %bb.ar
  %.1 = phi i32 [ %i.ja, %bb.ar ], [ %.0235, %Acb_WireIsTarget.exit ], [ %.0235, %bb.aq ] ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %.critedge9, label %bb.aq, !llvm.loop !147

.critedge9:                                       ; preds = %Acb_WireIsTarget.exit.thread, %Ndr_DataResize.exit202
  %.lcssa233 = phi i32 [ %.lcssa226, %Ndr_DataResize.exit202 ], [ %i.io, %Acb_WireIsTarget.exit.thread ]
  %.0.lcssa = phi i32 [ 0, %Ndr_DataResize.exit202 ], [ %.1, %Acb_WireIsTarget.exit.thread ] ; 2 uses
  store i32 %.lcssa233, ptr %i.a, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %.val159, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !33
  %i.jd = add i32 %i.jc, %.0.lcssa
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !33
  %i.je = load i32, ptr %.val159, align 4, !tbaa !33
  %i.jf = add i32 %i.je, %.0.lcssa
  store i32 %i.jf, ptr %.val159, align 4, !tbaa !33
  br i1 %i.fu, label %.lr.ph240, label %.critedge11

.lr.ph240:                                        ; preds = %.critedge9
  %.val151 = load ptr, ptr %i.f, align 8, !tbaa !32
  %wide.trip.count278 = zext nneg i32 %.val142 to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph240, %bb.as
  %indvars.iv275 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next276, %bb.as ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.val151, i64 %indvars.iv275
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !33
  store i32 %i.jh, ptr %i.a, align 4, !tbaa !33
  call fastcc void @Ndr_AddObject(ptr noundef nonnull %i.dq, i32 noundef 258, i32 noundef 3, i32 noundef 0, ptr noundef null, ptr noundef %i.a)
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %.critedge11, label %bb.as, !llvm.loop !148

.critedge11:                                      ; preds = %bb.as, %.critedge9
  %i.ji = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.7) #34 ; 2 uses
  store i32 %i.ji, ptr %i.a, align 4, !tbaa !33
  %.not = icmp eq i32 %i.ji, 0
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.critedge11
  call fastcc void @Ndr_AddObject(ptr noundef nonnull %i.dq, i32 noundef 258, i32 noundef 7, i32 noundef 0, ptr noundef null, ptr noundef %i.a)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.critedge11
  %i.jj = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.8) #34 ; 2 uses
  store i32 %i.jj, ptr %i.a, align 4, !tbaa !33
  %.not128 = icmp eq i32 %i.jj, 0
  br i1 %.not128, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call fastcc void @Ndr_AddObject(ptr noundef nonnull %i.dq, i32 noundef 258, i32 noundef 8, i32 noundef 0, ptr noundef null, ptr noundef %i.a)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jk = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.9) #34 ; 2 uses
  store i32 %i.jk, ptr %i.a, align 4, !tbaa !33
  %.not129 = icmp eq i32 %i.jk, 0
  br i1 %.not129, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @Ndr_AddObject(ptr noundef nonnull %i.dq, i32 noundef 258, i32 noundef 9, i32 noundef 0, ptr noundef null, ptr noundef %i.a)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.val131 = load i32, ptr %i.p, align 4, !tbaa !30 ; 2 uses
  %i.jl = icmp sgt i32 %.val131, 1
  br i1 %i.jl, label %.critedge13.lr.ph, label %.preheader

.critedge13.lr.ph:                                ; preds = %bb.ay
  %.val150 = load ptr, ptr %i.r, align 8, !tbaa !32
  br label %.critedge13

.preheader:                                       ; preds = %bb.ba, %bb.ay
  br i1 %i.gm, label %.lr.ph246, label %.critedge15

.lr.ph246:                                        ; preds = %.preheader
  %.val146 = load ptr, ptr %i.j, align 8, !tbaa !32
  %wide.trip.count286 = zext nneg i32 %.val138 to i64
  br label %bb.bb

.critedge13:                                      ; preds = %.critedge13.lr.ph, %bb.ba
  %indvars.iv280 = phi i64 [ 0, %.critedge13.lr.ph ], [ %indvars.iv.next281, %bb.ba ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.val150, i64 %indvars.iv280 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !33 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.critedge13
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %.val148 = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr [4 x i8], ptr %.val148, i64 %i.jr ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !33
  store i32 %i.jt, ptr %i.b, align 4, !tbaa !33
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !33
  %i.jw = xor i32 %i.jq, -1
  %i.jx = add i32 %i.jv, %i.jw
  %i.jy = getelementptr i8, ptr %i.js, i64 4
  %switch.tableidx = add nsw i32 %i.jn, -6        ; 2 uses
  %i.jz = icmp ult i32 %switch.tableidx, 10
  br i1 %i.jz, label %switch.lookup, label %Acb_Type2Oper.exit

switch.lookup:                                    ; preds = %bb.az
  %i.ka = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Acb_VerilogSimpleParse, i64 %i.ka
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %Acb_Type2Oper.exit

Acb_Type2Oper.exit:                               ; preds = %bb.az, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.az ]
  call fastcc void @Ndr_AddObject(ptr noundef nonnull %i.dq, i32 noundef 258, i32 noundef %.0.i, i32 noundef %i.jx, ptr noundef nonnull %i.jy, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge13, %Acb_Type2Oper.exit
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 2
  %2 = trunc i64 %indvars.iv280 to i32
  %3 = add i32 %2, 3
  %4 = icmp slt i32 %3, %.val131
  br i1 %4, label %.critedge13, label %.preheader, !llvm.loop !149

bb.bb:                                            ; preds = %.lr.ph246, %bb.bb
  %indvars.iv283 = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next284, %bb.bb ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val146, i64 %indvars.iv283
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !33
  store i32 %i.kc, ptr %i.a, align 4, !tbaa !33
  call fastcc void @Ndr_AddObject(ptr noundef nonnull %i.dq, i32 noundef 258, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %i.a)
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %.critedge15, label %bb.bb, !llvm.loop !150

.critedge15:                                      ; preds = %bb.bb, %.preheader
  %i.kd = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %.not.i203 = icmp eq ptr %i.kd, null
  br i1 %.not.i203, label %Vec_IntFree.exit, label %bb.bc

bb.bc:                                            ; preds = %.critedge15
  tail call void @free(ptr noundef nonnull %i.kd) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge15, %bb.bc
  tail call void @free(ptr noundef nonnull %i.c) #34
  %i.ke = load ptr, ptr %i.j, align 8, !tbaa !32  ; 2 uses
  %.not.i204 = icmp eq ptr %i.ke, null
  br i1 %.not.i204, label %Vec_IntFree.exit205, label %bb.bd

bb.bd:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ke) #34
  br label %Vec_IntFree.exit205

Vec_IntFree.exit205:                              ; preds = %Vec_IntFree.exit, %bb.bd
  tail call void @free(ptr noundef nonnull %i.g) #34
  %i.kf = load ptr, ptr %i.n, align 8, !tbaa !32  ; 2 uses
  %.not.i206 = icmp eq ptr %i.kf, null
  br i1 %.not.i206, label %Vec_IntFree.exit207, label %bb.be

bb.be:                                            ; preds = %Vec_IntFree.exit205
  tail call void @free(ptr noundef nonnull %i.kf) #34
  br label %Vec_IntFree.exit207

Vec_IntFree.exit207:                              ; preds = %Vec_IntFree.exit205, %bb.be
  tail call void @free(ptr noundef nonnull %i.k) #34
  %i.kg = load ptr, ptr %i.r, align 8, !tbaa !32  ; 2 uses
  %.not.i208 = icmp eq ptr %i.kg, null
  br i1 %.not.i208, label %Vec_IntFree.exit209, label %bb.bf

bb.bf:                                            ; preds = %Vec_IntFree.exit207
  tail call void @free(ptr noundef nonnull %i.kg) #34
  br label %Vec_IntFree.exit209

Vec_IntFree.exit209:                              ; preds = %Vec_IntFree.exit207, %bb.bf
  tail call void @free(ptr noundef nonnull %i.o) #34
  %i.kh = load ptr, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %.not.i210 = icmp eq ptr %i.kh, null
  br i1 %.not.i210, label %Vec_IntFree.exit211, label %bb.bg

bb.bg:                                            ; preds = %Vec_IntFree.exit209
  tail call void @free(ptr noundef nonnull %i.kh) #34
  br label %Vec_IntFree.exit211

Vec_IntFree.exit211:                              ; preds = %Vec_IntFree.exit209, %bb.bg
  tail call void @free(ptr noundef nonnull %i.s) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret ptr %i.dq
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Ndr_AddObject(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483392, -2147483648) %1, i32 noundef range(i32 -1, 79) %2, i32 noundef range(i32 -2147483648, 2147483647) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !38     ; 6 uses
  %i.b = add nsw i32 %i.a, 6                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %Ndr_DataResize.exit

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %i.d, 1
  %..i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.b) ; 2 uses
  store i32 %..i, ptr %i.c, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = sext i32 %..i to i64
  %i.i = tail call ptr @realloc(ptr noundef %i.g, i64 noundef %i.h) #33
  store ptr %i.i, ptr %i.f, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = load i32, ptr %i.c, align 4, !tbaa !35
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %i.n) #33
  store ptr %i.o, ptr %i.j, align 8, !tbaa !37
  %.pre = load i32, ptr %0, align 8, !tbaa !38
  br label %Ndr_DataResize.exit

Ndr_DataResize.exit:                              ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %i.a, %bb.a ], [ %.pre, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i8 3, ptr %i.t, align 1, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = load i32, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %0, align 8, !tbaa !38
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  store i32 0, ptr %i.z, align 4, !tbaa !33
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.ab = load i32, ptr %0, align 8, !tbaa !38
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  store i8 6, ptr %i.ad, align 1, !tbaa !26
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.af = load i32, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %0, align 8, !tbaa !38
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ah
  store i32 %2, ptr %i.ai, align 4, !tbaa !33
  %.not.i35 = icmp eq i32 %3, 0
  %.pre1 = load i32, ptr %0, align 8, !tbaa !38   ; 3 uses
  br i1 %.not.i35, label %Ndr_DataPushArray.exit, label %bb.c

bb.c:                                             ; preds = %Ndr_DataResize.exit
  %i.aj = add nsw i32 %.pre1, %3                  ; 2 uses
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !35  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.d, label %Ndr_DataResize.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = shl nsw i32 %i.ak, 1
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.aj) ; 2 uses
  store i32 %..i.i, ptr %i.c, align 4, !tbaa !35
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.an = sext i32 %..i.i to i64
  %i.ao = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.an) #33
  store ptr %i.ao, ptr %i.q, align 8, !tbaa !36
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !35
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = sext i32 %i.ar to i64
  %i.at = tail call ptr @realloc(ptr noundef %i.ap, i64 noundef %i.as) #33
  store ptr %i.at, ptr %i.u, align 8, !tbaa !37
  %.pre.i = load i32, ptr %0, align 8, !tbaa !38
  br label %Ndr_DataResize.exit.i

Ndr_DataResize.exit.i:                            ; preds = %bb.d, %bb.c
  %i.au = phi i32 [ %.pre1, %bb.c ], [ %.pre.i, %bb.d ]
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %i.ay = sext i32 %3 to i64                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 4, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.ba = load i32, ptr %0, align 8, !tbaa !38
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bb
  %i.bd = shl nsw i64 %i.ay, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bc, ptr readonly align 4 %4, i64 %i.bd, i1 false)
  %i.be = load i32, ptr %0, align 8, !tbaa !38
  %i.bf = add nsw i32 %i.be, %3                   ; 2 uses
  store i32 %i.bf, ptr %0, align 8, !tbaa !38
  br label %Ndr_DataPushArray.exit

Ndr_DataPushArray.exit:                           ; preds = %Ndr_DataResize.exit, %Ndr_DataResize.exit.i
  %i.bg = phi i32 [ %.pre1, %Ndr_DataResize.exit ], [ %i.bf, %Ndr_DataResize.exit.i ] ; 3 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !35  ; 2 uses
  %.not.i.i36.not = icmp slt i32 %i.bg, %i.bh
  br i1 %.not.i.i36.not, label %Ndr_DataPushArray.exit40, label %bb.e

bb.e:                                             ; preds = %Ndr_DataPushArray.exit
  %i.bi = add nsw i32 %i.bg, 1
  %i.bj = shl nsw i32 %i.bh, 1
  %..i.i38 = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 %i.bi) ; 2 uses
  store i32 %..i.i38, ptr %i.c, align 4, !tbaa !35
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.bl = sext i32 %..i.i38 to i64
  %i.bm = tail call ptr @realloc(ptr noundef %i.bk, i64 noundef %i.bl) #33
  store ptr %i.bm, ptr %i.q, align 8, !tbaa !36
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !35
  %i.bp = shl nsw i32 %i.bo, 2
  %i.bq = sext i32 %i.bp to i64
  %i.br = tail call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bq) #33
  store ptr %i.br, ptr %i.u, align 8, !tbaa !37
  %.pre.i39 = load i32, ptr %0, align 8, !tbaa !38
  br label %Ndr_DataPushArray.exit40

Ndr_DataPushArray.exit40:                         ; preds = %Ndr_DataPushArray.exit, %bb.e
  %i.bs = phi i32 [ %i.bg, %Ndr_DataPushArray.exit ], [ %.pre.i39, %bb.e ]
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  store i8 5, ptr %i.bv, align 1
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.bx = load i32, ptr %0, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@Gia_FileSimpleParse:bb.a
  br label %bb.ap

bb.af:                                            ; preds = %bb.v, %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %.0195363, i64 4 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !30 ; 7 uses
  %i.cz = load i32, ptr %.0195363, align 8, !tbaa !31
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.ag, label %Vec_IntPush.exit290

bb.ag:                                            ; preds = %bb.af
  %i.db = icmp slt i32 %i.cy, 16
  br i1 %i.db, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %.0195363, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32 ; 2 uses
  %.not9.i.i288 = icmp eq ptr %i.dd, null
  br i1 %.not9.i.i288, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dd, i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i289

bb.aj:                                            ; preds = %bb.ah
  %i.df = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i289

Vec_IntGrow.exit.i289:                            ; preds = %bb.aj, %bb.ai
  %i.dg = phi ptr [ %i.de, %bb.ai ], [ %i.df, %bb.aj ]
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !32
  br label %Vec_IntGrow.exit11.sink.split.i286

bb.ak:                                            ; preds = %bb.ag
  %i.dh = icmp samesign ult i32 %i.cy, 1073741823
  %i.di = shl nuw nsw i32 %i.cy, 1
  %spec.select.i283 = select i1 %i.dh, i32 %i.di, i32 2147483647 ; 3 uses
  %.not.i9.i284 = icmp samesign ult i32 %i.cy, %spec.select.i283
  br i1 %.not.i9.i284, label %bb.al, label %Vec_IntPush.exit290

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %.0195363, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !32 ; 2 uses
  %.not9.i10.i285 = icmp eq ptr %i.dk, null
  %i.dl = zext nneg i32 %spec.select.i283 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2                ; 2 uses
  br i1 %.not9.i10.i285, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = tail call ptr @realloc(ptr noundef nonnull %i.dk, i64 noundef %i.dm) #33
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dm) #31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dp = phi ptr [ %i.dn, %bb.am ], [ %i.do, %bb.an ]
  store ptr %i.dp, ptr %i.dj, align 8, !tbaa !32
  br label %Vec_IntGrow.exit11.sink.split.i286

Vec_IntGrow.exit11.sink.split.i286:               ; preds = %bb.ao, %Vec_IntGrow.exit.i289
  %spec.select.sink.i287 = phi i32 [ %spec.select.i283, %bb.ao ], [ 16, %Vec_IntGrow.exit.i289 ]
  store i32 %spec.select.sink.i287, ptr %.0195363, align 8, !tbaa !31
  %.pre = load i32, ptr %i.cx, align 4, !tbaa !30
  br label %Vec_IntPush.exit290

Vec_IntPush.exit290:                              ; preds = %bb.af, %bb.ak, %Vec_IntGrow.exit11.sink.split.i286
  %i.dq = phi i32 [ %i.cy, %bb.af ], [ %i.cy, %bb.ak ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i286 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0195363, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.dt = add nsw i32 %i.dq, 1
  store i32 %i.dt, ptr %i.cx, align 4, !tbaa !30
  %i.du = sext i32 %i.dq to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du
  store i32 %i.av, ptr %i.dv, align 4, !tbaa !33
  br label %bb.ap

bb.ap:                                            ; preds = %bb.e, %bb.g, %Vec_IntPush.exit282, %Vec_IntPush.exit290, %Vec_IntPush.exit274, %bb.f, %bb.d
  %.1196 = phi ptr [ null, %bb.d ], [ %.0195363, %Vec_IntPush.exit290 ], [ %i.f, %bb.f ], [ %i.j, %bb.g ], [ %i.r, %Vec_IntPush.exit274 ], [ %.0195363, %Vec_IntPush.exit282 ], [ %i.b, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val227 = load i32, ptr %i.ar, align 4, !tbaa !30
  %i.dw = sext i32 %.val227 to i64
  %i.dx = icmp slt i64 %indvars.iv.next, %i.dw
  br i1 %i.dx, label %bb.d, label %.critedge, !llvm.loop !168

.critedge:                                        ; preds = %bb.ap, %bb.e
  %.pre428.a = load i32, ptr %i.o, align 4, !tbaa !30 ; 4 uses
  %.pre429.a = load i32, ptr %i.n, align 8, !tbaa !31 ; 5 uses
  %i.dy = icmp eq i32 %.pre428.a, %.pre429.a
  br i1 %i.dy, label %bb.aq, label %.critedge.Vec_IntPush.exit298_crit_edge

.critedge.Vec_IntPush.exit298_crit_edge:          ; preds = %Vec_IntStartFull.exit266, %.critedge
  %i.dz = phi i32 [ %.pre428.a, %.critedge ], [ 0, %Vec_IntStartFull.exit266 ]
  %.pre430.a = load ptr, ptr %i.q, align 8, !tbaa !32
  br label %Vec_IntPush.exit298

bb.aq:                                            ; preds = %.critedge
  %i.ea = icmp slt i32 %.pre429.a, 16
  br i1 %i.ea, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.eb = load ptr, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %.not9.i.i296 = icmp eq ptr %i.eb, null
  br i1 %.not9.i.i296, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eb, i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i294

bb.at:                                            ; preds = %bb.ar
  %i.ed = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i294

bb.au:                                            ; preds = %bb.aq
  %i.ee = icmp samesign ult i32 %.pre429.a, 1073741823
  %i.ef = shl nuw nsw i32 %.pre429.a, 1
  %spec.select.i291 = select i1 %i.ee, i32 %i.ef, i32 2147483647 ; 4 uses
  %.not.i9.i292 = icmp samesign ult i32 %.pre429.a, %spec.select.i291
  %.pre431.a = load ptr, ptr %i.q, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i292, label %bb.av, label %Vec_IntPush.exit298

bb.av:                                            ; preds = %bb.au
  %.not9.i10.i293 = icmp eq ptr %.pre431.a, null
  %i.eg = zext nneg i32 %spec.select.i291 to i64
  %i.eh = shl nuw nsw i64 %i.eg, 2                ; 2 uses
  br i1 %.not9.i10.i293, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = tail call ptr @realloc(ptr noundef nonnull %.pre431.a, i64 noundef %i.eh) #33
  br label %Vec_IntGrow.exit11.sink.split.i294

bb.ax:                                            ; preds = %bb.av
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.eh) #31
  br label %Vec_IntGrow.exit11.sink.split.i294

Vec_IntGrow.exit11.sink.split.i294:               ; preds = %bb.aw, %bb.ax, %bb.as, %bb.at
  %storemerge = phi ptr [ %i.ed, %bb.at ], [ %i.ec, %bb.as ], [ %i.ei, %bb.aw ], [ %i.ej, %bb.ax ] ; 2 uses
  %spec.select.sink.i295 = phi i32 [ 16, %bb.at ], [ 16, %bb.as ], [ %spec.select.i291, %bb.aw ], [ %spec.select.i291, %bb.ax ]
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !32
  store i32 %spec.select.sink.i295, ptr %i.n, align 8, !tbaa !31
  br label %Vec_IntPush.exit298

Vec_IntPush.exit298:                              ; preds = %.critedge.Vec_IntPush.exit298_crit_edge, %bb.au, %Vec_IntGrow.exit11.sink.split.i294
  %i.ek = phi i32 [ %i.dz, %.critedge.Vec_IntPush.exit298_crit_edge ], [ %.pre428.a, %bb.au ], [ %.pre428.a, %Vec_IntGrow.exit11.sink.split.i294 ] ; 7 uses
  %i.el = phi ptr [ %.pre430.a, %.critedge.Vec_IntPush.exit298_crit_edge ], [ %.pre431.a, %bb.au ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i294 ] ; 5 uses
  %i.em = add nsw i32 %i.ek, 1                    ; 6 uses
  store i32 %i.em, ptr %i.o, align 4, !tbaa !30
  %i.en = sext i32 %i.ek to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  store i32 -1, ptr %i.eo, align 4, !tbaa !33
  %.val225 = load i32, ptr %i.s, align 4, !tbaa !30 ; 2 uses
  %i.ep = load i32, ptr %i.n, align 8, !tbaa !31
  %i.eq = icmp eq i32 %i.em, %i.ep
  br i1 %i.eq, label %bb.ay, label %Vec_IntPush.exit306

bb.ay:                                            ; preds = %Vec_IntPush.exit298
  %i.er = icmp slt i32 %i.ek, 15
  br i1 %i.er, label %Vec_IntGrow.exit11.sink.split.i302, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.es = icmp samesign ult i32 %i.ek, 1073741822
  %i.et = shl nuw nsw i32 %i.em, 1
  %spec.select.i299 = select i1 %i.es, i32 %i.et, i32 2147483647 ; 3 uses
  %.not.i9.i300 = icmp samesign ult i32 %i.em, %spec.select.i299
  br i1 %.not.i9.i300, label %bb.ba, label %Vec_IntPush.exit306.thread

Vec_IntPush.exit306.thread:                       ; preds = %bb.az
  %i.eu = add nuw nsw i32 %i.ek, 2
  store i32 %i.eu, ptr %i.o, align 4, !tbaa !30
  %i.ev = zext nneg i32 %i.em to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ev
  store i32 %.val225, ptr %i.ew, align 4, !tbaa !33
  br label %.critedge5.lr.ph

bb.ba:                                            ; preds = %bb.az
  %i.ex = zext nneg i32 %spec.select.i299 to i64
  %i.ey = shl nuw nsw i64 %i.ex, 2
  br label %Vec_IntGrow.exit11.sink.split.i302

Vec_IntGrow.exit11.sink.split.i302:               ; preds = %bb.ay, %bb.ba
  %.sink478 = phi i64 [ %i.ey, %bb.ba ], [ 64, %bb.ay ]
  %spec.select.sink.i303 = phi i32 [ %spec.select.i299, %bb.ba ], [ 16, %bb.ay ]
  %i.ez = tail call ptr @realloc(ptr noundef nonnull %i.el, i64 noundef %.sink478) #33 ; 2 uses
  store ptr %i.ez, ptr %i.q, align 8, !tbaa !32
  store i32 %spec.select.sink.i303, ptr %i.n, align 8, !tbaa !31
  br label %Vec_IntPush.exit306

Vec_IntPush.exit306:                              ; preds = %Vec_IntPush.exit298, %Vec_IntGrow.exit11.sink.split.i302
  %i.fa = phi ptr [ %i.el, %Vec_IntPush.exit298 ], [ %i.ez, %Vec_IntGrow.exit11.sink.split.i302 ] ; 3 uses
  %i.fb = add nsw i32 %i.ek, 2
  store i32 %i.fb, ptr %i.o, align 4, !tbaa !30
  %i.fc = sext i32 %i.em to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fc
  store i32 %.val225, ptr %i.fd, align 4, !tbaa !33
  %i.fe = icmp sgt i32 %i.ek, -1
  br i1 %i.fe, label %.critedge5.lr.ph, label %._crit_edge

.critedge5.lr.ph:                                 ; preds = %Vec_IntPush.exit306.thread, %Vec_IntPush.exit306
  %i.ff = phi ptr [ %i.el, %Vec_IntPush.exit306.thread ], [ %i.fa, %Vec_IntPush.exit306 ] ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ah, i64 8
  %invariant.op = add nsw i64 %i.en, -1
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.lr.ph, %bb.bc
  %indvars.iv387 = phi i64 [ 0, %.critedge5.lr.ph ], [ %indvars.iv.next388, %bb.bc ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv387 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !33
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !33
  %.val240 = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.val240, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33
  %.val251 = load ptr, ptr %i.fg, align 8, !tbaa !32
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %.val251, i64 %i.fp
  %i.fr = trunc nuw nsw i64 %indvars.iv387 to i32
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !33
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge5, %bb.bb
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 2
  %4 = icmp slt i64 %indvars.iv387, %invariant.op
  br i1 %4, label %.critedge5, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %bb.bc, %Vec_IntPush.exit306
  %i.fs = phi ptr [ %i.fa, %Vec_IntPush.exit306 ], [ %i.ff, %bb.bc ] ; 2 uses
  %i.ft = tail call ptr @Gia_ManStart(i32 noundef 10000) #34 ; 16 uses
  %i.fu = getelementptr i8, ptr %0, i64 8
  %.val239 = load ptr, ptr %i.fu, align 8, !tbaa !32
  %i.fv = getelementptr inbounds nuw i8, ptr %.val239, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !33
  %i.fx = tail call ptr @Abc_NamStr(ptr noundef %1, i32 noundef %i.fw) #34 ; 3 uses
  %.not.i307 = icmp eq ptr %i.fx, null
  br i1 %.not.i307, label %Abc_UtilStrsav.exit, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  %i.fy = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fx) #32
  %i.fz = add i64 %i.fy, 1
  %i.ga = tail call noalias ptr @malloc(i64 noundef %i.fz) #31 ; 2 uses
  %i.gb = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ga, ptr noundef nonnull readonly dereferenceable(1) %i.fx) #34 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %._crit_edge, %bb.bd
  %i.gc = phi ptr [ %i.ga, %bb.bd ], [ null, %._crit_edge ]
  store ptr %i.gc, ptr %i.ft, align 8, !tbaa !62
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 120
  store i32 1, ptr %i.gd, align 8, !tbaa !59
  %i.ge = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.7) #34 ; 2 uses
  %.not206 = icmp eq i32 %i.ge, 0
  br i1 %.not206, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %Abc_UtilStrsav.exit
  %i.gf = getelementptr i8, ptr %i.w, i64 8
  %.val250 = load ptr, ptr %i.gf, align 8, !tbaa !32
  %i.gg = sext i32 %i.ge to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %.val250, i64 %i.gg
  store i32 0, ptr %i.gh, align 4, !tbaa !33
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %Abc_UtilStrsav.exit
  %i.gi = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.8) #34 ; 2 uses
  %.not207 = icmp eq i32 %i.gi, 0
  br i1 %.not207, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gj = getelementptr i8, ptr %i.w, i64 8
  %.val249 = load ptr, ptr %i.gj, align 8, !tbaa !32
  %i.gk = sext i32 %i.gi to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %.val249, i64 %i.gk
  store i32 1, ptr %i.gl, align 4, !tbaa !33
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gm = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.9) #34 ; 2 uses
  %.not208 = icmp eq i32 %i.gm, 0
  br i1 %.not208, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gn = getelementptr i8, ptr %i.w, i64 8
  %.val248 = load ptr, ptr %i.gn, align 8, !tbaa !32
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %.val248, i64 %i.go
  store i32 0, ptr %i.gp, align 4, !tbaa !33
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gq = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.10) #34 ; 2 uses
  %.not209 = icmp eq i32 %i.gq, 0
  br i1 %.not209, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gr = getelementptr i8, ptr %i.w, i64 8
  %.val247 = load ptr, ptr %i.gr, align 8, !tbaa !32
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.val247, i64 %i.gs
  store i32 0, ptr %i.gt, align 4, !tbaa !33
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.val223 = load i32, ptr %i.c, align 4, !tbaa !30 ; 6 uses
  %i.gu = icmp sgt i32 %.val223, 0                ; 2 uses
  br i1 %i.gu, label %.lr.ph369, label %.critedge9.preheader

.lr.ph371:                                        ; preds = %.lr.ph369
  %.val237 = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.gv = getelementptr i8, ptr %i.ft, i64 32
  %i.gw = getelementptr i8, ptr %i.ft, i64 64
  %i.gx = getelementptr i8, ptr %i.w, i64 8
  %wide.trip.count = zext nneg i32 %.val223 to i64
  br label %.critedge7

.lr.ph369:                                        ; preds = %bb.bl, %.lr.ph369
  %.2367 = phi i32 [ %i.gz, %.lr.ph369 ], [ 0, %bb.bl ]
  %i.gy = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.ft) ; 0 uses
  %i.gz = add nuw nsw i32 %.2367, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gz, %.val223
  br i1 %exitcond.not, label %.lr.ph371, label %.lr.ph369, !llvm.loop !170

.critedge9.preheader:                             ; preds = %.critedge7, %bb.bl
  %.val221 = load i32, ptr %i.g, align 4, !tbaa !30 ; 6 uses
  %i.ha = icmp sgt i32 %.val221, 0                ; 2 uses
  br i1 %i.ha, label %.lr.ph373, label %.critedge13

.lr.ph373:                                        ; preds = %.critedge9.preheader
  %.val236 = load ptr, ptr %i.i, align 8, !tbaa !32
  %wide.trip.count397 = zext nneg i32 %.val221 to i64
  br label %.critedge9

.critedge7:                                       ; preds = %.lr.ph371, %.critedge7
  %indvars.iv390 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next391, %.critedge7 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val237, i64 %indvars.iv390
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !33
  %.val254 = load ptr, ptr %i.gv, align 8, !tbaa !60 ; 2 uses
  %.val255 = load ptr, ptr %i.gw, align 8, !tbaa !63
  %i.hd = getelementptr i8, ptr %.val255, i64 8
  %.val255.val = load ptr, ptr %i.hd, align 8, !tbaa !32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.val255.val, i64 %indvars.iv390
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !33
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [12 x i8], ptr %.val254, i64 %i.hg
  %i.hi = ptrtoint ptr %i.hh to i64               ; 2 uses
  %i.hj = and i64 %i.hi, -2
  %i.hk = ptrtoint ptr %.val254 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = sdiv exact i64 %i.hl, 12
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = trunc i64 %i.hi to i32
  %i.hp = and i32 %i.ho, 1
  %i.hq = shl nsw i32 %i.hn, 1
  %i.hr = or disjoint i32 %i.hq, %i.hp            ; 2 uses
  %i.hs = tail call fastcc i32 @Gia_ManAppendAnd2(ptr noundef nonnull %i.ft, i32 noundef %i.hr, i32 noundef %i.hr)
  %.val246 = load ptr, ptr %i.gx, align 8, !tbaa !32
  %i.ht = sext i32 %i.hc to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.val246, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !33
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next391, %wide.trip.count
  br i1 %exitcond393.not, label %.critedge9.preheader, label %.critedge7, !llvm.loop !171

.lr.ph376:                                        ; preds = %.critedge9
  %.val235 = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.hv = getelementptr i8, ptr %i.w, i64 8
  %.val234 = load ptr, ptr %i.hv, align 8, !tbaa !32
  %wide.trip.count402 = zext nneg i32 %.val221 to i64
  br label %.critedge11

.critedge9:                                       ; preds = %.lr.ph373, %.critedge9
  %indvars.iv394 = phi i64 [ 0, %.lr.ph373 ], [ %indvars.iv.next395, %.critedge9 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.val236, i64 %indvars.iv394
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !33
  %i.hy = tail call i32 @Gia_FileSimpleParse_rec(ptr noundef nonnull %i.ft, i32 noundef %i.hx, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.n, ptr noundef nonnull %i.r, ptr noundef nonnull %i.w) ; 0 uses
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next395, %wide.trip.count397
  br i1 %exitcond398.not, label %.lr.ph376, label %.critedge9, !llvm.loop !172

.critedge11:                                      ; preds = %.lr.ph376, %.critedge11
  %indvars.iv399 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next400, %.critedge11 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.val235, i64 %indvars.iv399
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !33
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %.val234, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !33
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ft, i32 noundef %i.id)
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count402
  br i1 %exitcond403.not, label %.critedge13, label %.critedge11, !llvm.loop !173

.critedge13:                                      ; preds = %.critedge11, %.critedge9.preheader
  %i.ie = icmp ne i32 %2, 0                       ; 2 uses
  br i1 %i.ie, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %.critedge13
  %i.if = getelementptr i8, ptr %i.ft, i64 24     ; 2 uses
  %.val257 = load i32, ptr %i.if, align 8, !tbaa !64 ; 2 uses
  %i.ig = ashr i32 %.val257, 5
  %i.ih = and i32 %.val257, 31
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = zext i1 %i.ii to i32
  %i.ik = add nsw i32 %i.ig, %i.ij                ; 3 uses
  %i.il = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.im = shl nsw i32 %i.ik, 5                    ; 2 uses
  store i32 %i.im, ptr %i.il, align 8, !tbaa !66
  %.not.i.i308 = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i308, label %Vec_BitStart.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.in = sext i32 %i.ik to i64
  %i.io = shl nsw i64 %i.in, 2                    ; 2 uses
  %i.ip = tail call noalias ptr @malloc(i64 noundef %i.io) #31
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.bm, %bb.bn
  %.pre-phi8.i = phi i64 [ %i.io, %bb.bn ], [ 0, %bb.bm ]
  %i.iq = phi ptr [ %i.ip, %bb.bn ], [ null, %bb.bm ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.iq, ptr %i.is, align 8, !tbaa !67
  store i32 %i.im, ptr %i.ir, align 4, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iq, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %i.ft, i64 912 ; 2 uses
  store ptr %i.il, ptr %i.it, align 8, !tbaa !178
  %.val256 = load i32, ptr %i.if, align 8, !tbaa !64 ; 4 uses
  %i.iu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
end_hunk_1
