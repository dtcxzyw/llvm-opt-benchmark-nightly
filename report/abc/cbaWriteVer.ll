Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaWriteVer?download=true
inline.NumInlined: 517
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Cba_ObjAttrValue:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i15.i, i8 0, i64 %i.av, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i16.i

._crit_edge.i.i.i16.i:                            ; preds = %.lr.ph.i.i.i14.i, %Vec_IntGrow.exit.i.i.i12.i
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.af
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28
  br label %Cba_ObjAttr.exit22.i

Cba_ObjAttr.exit22.i:                             ; preds = %._crit_edge.i.i.i16.i, %bb.n
  %i.aw = phi ptr [ %i.ao, %._crit_edge.i.i.i16.i ], [ %.val.i.i.i, %bb.n ]
  %.val.i.i13.pr56 = phi i32 [ %i.d, %._crit_edge.i.i.i16.i ], [ %.val.i4.i, %bb.n ]
  %i.ax = phi i32 [ %.pre.i, %._crit_edge.i.i.i16.i ], [ %i.ah, %bb.n ]
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %0, i64 240
  %.val.i = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  br label %Cba_ObjAttrSize.exit

Cba_ObjAttrSize.exit:                             ; preds = %Cba_ObjAttr.exit22.i, %Cba_ObjAttr.exit.i
  %i.bc = phi ptr [ %.val.i.i.i, %Cba_ObjAttr.exit.i ], [ %i.aw, %Cba_ObjAttr.exit22.i ] ; 4 uses
  %.val.i.i13.pr = phi i32 [ %.val.i4.i, %Cba_ObjAttr.exit.i ], [ %.val.i.i13.pr56, %Cba_ObjAttr.exit22.i ] ; 4 uses
  %.ph = phi i32 [ 0, %Cba_ObjAttr.exit.i ], [ %i.bb, %Cba_ObjAttr.exit22.i ] ; 2 uses
  %.not.i.not.i.i.i14 = icmp slt i32 %1, %.val.i.i13.pr
  br i1 %.not.i.not.i.i.i14, label %Cba_ObjAttr.exit.i25, label %bb.r

bb.r:                                             ; preds = %Cba_ObjAttrSize.exit
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !42  ; 4 uses
  %i.be = shl nsw i32 %i.bd, 1                    ; 2 uses
  %.not.i.i.i15 = icmp slt i32 %1, %i.be
  br i1 %.not.i.i.i15, label %bb.s, label %Vec_IntGrow.exit.sink.split.i.i.i.i17

bb.s:                                             ; preds = %bb.r
  %.not.i.i.not.i.i.i46 = icmp sgt i32 %i.bd, %1
  br i1 %.not.i.i.not.i.i.i46, label %Vec_IntGrow.exit.i.i.i.i20, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = icmp slt i32 %i.bd, 1073741823
  %spec.select.i.i.i.i47 = select i1 %i.bf, i32 %i.be, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i.i48 = icmp slt i32 %i.bd, %spec.select.i.i.i.i47
  br i1 %.not.i22.i.i.i.i48, label %Vec_IntGrow.exit.sink.split.i.i.i.i17, label %Vec_IntGrow.exit.i.i.i.i20

Vec_IntGrow.exit.sink.split.i.i.i.i17:            ; preds = %bb.t, %bb.r
  %spec.select.i.i.i.i47.sink = phi i32 [ %i.d, %bb.r ], [ %spec.select.i.i.i.i47, %bb.t ] ; 2 uses
  %i.bg = zext nneg i32 %spec.select.i.i.i.i47.sink to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = tail call ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #18 ; 2 uses
  store ptr %i.bi, ptr %i.ae, align 8, !tbaa !27
  store i32 %spec.select.i.i.i.i47.sink, ptr %i.c, align 8, !tbaa !42
  %.pre.i.i.i19 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i.i20

Vec_IntGrow.exit.i.i.i.i20:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i17, %bb.t, %bb.s
  %i.bj = phi ptr [ %i.bi, %Vec_IntGrow.exit.sink.split.i.i.i.i17 ], [ %i.bc, %bb.t ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bk = phi i32 [ %.pre.i.i.i19, %Vec_IntGrow.exit.sink.split.i.i.i.i17 ], [ %.val.i.i13.pr, %bb.t ], [ %.val.i.i13.pr, %bb.s ] ; 3 uses
  %.not3.i.i.i21 = icmp sgt i32 %i.bk, %1
  br i1 %.not3.i.i.i21, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i20
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 2
  %scevgep.i.i.i.i23 = getelementptr i8, ptr %i.bj, i64 %i.bm
  %i.bn = sub i32 %1, %i.bk
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i23, i8 0, i64 %i.bq, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i24

._crit_edge.i.i.i.i24:                            ; preds = %.lr.ph.i.i.i.i22, %Vec_IntGrow.exit.i.i.i.i20
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  br label %Cba_ObjAttr.exit.i25

Cba_ObjAttr.exit.i25:                             ; preds = %._crit_edge.i.i.i.i24, %Cba_ObjAttrSize.exit
  %.val.i.i.i27 = phi ptr [ %i.bc, %Cba_ObjAttrSize.exit ], [ %i.bj, %._crit_edge.i.i.i.i24 ] ; 4 uses
  %.val.i4.i26 = phi i32 [ %.val.i.i13.pr, %Cba_ObjAttrSize.exit ], [ %i.d, %._crit_edge.i.i.i.i24 ] ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.val.i.i.i27, i64 %i.af
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !28 ; 2 uses
  %.not.i28 = icmp eq i32 %i.bs, 0
  br i1 %.not.i28, label %Cba_ObjAttrArray.exit, label %bb.u

bb.u:                                             ; preds = %Cba_ObjAttr.exit.i25
  %.not.i.not.i.i5.i29 = icmp slt i32 %1, %.val.i4.i26
  br i1 %.not.i.not.i.i5.i29, label %Cba_ObjAttr.exit22.i41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = load i32, ptr %i.c, align 8, !tbaa !42  ; 4 uses
  %i.bu = shl nsw i32 %i.bt, 1                    ; 2 uses
  %.not.i.i6.i30 = icmp slt i32 %1, %i.bu
  br i1 %.not.i.i6.i30, label %bb.w, label %Vec_IntGrow.exit.sink.split.i.i.i9.i31

bb.w:                                             ; preds = %bb.v
  %.not.i.i.not.i.i7.i43 = icmp sgt i32 %i.bt, %1
  br i1 %.not.i.i.not.i.i7.i43, label %Vec_IntGrow.exit.i.i.i12.i34, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = icmp slt i32 %i.bt, 1073741823
  %spec.select.i.i.i19.i44 = select i1 %i.bv, i32 %i.bu, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i20.i45 = icmp slt i32 %i.bt, %spec.select.i.i.i19.i44
  br i1 %.not.i22.i.i.i20.i45, label %Vec_IntGrow.exit.sink.split.i.i.i9.i31, label %Vec_IntGrow.exit.i.i.i12.i34

Vec_IntGrow.exit.sink.split.i.i.i9.i31:           ; preds = %bb.x, %bb.v
  %spec.select.i.i.i19.sink.i32 = phi i32 [ %i.d, %bb.v ], [ %spec.select.i.i.i19.i44, %bb.x ] ; 2 uses
  %i.bw = zext nneg i32 %spec.select.i.i.i19.sink.i32 to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = tail call ptr @realloc(ptr noundef nonnull %.val.i.i.i27, i64 noundef %i.bx) #18 ; 2 uses
  store ptr %i.by, ptr %i.ae, align 8, !tbaa !27
  store i32 %spec.select.i.i.i19.sink.i32, ptr %i.c, align 8, !tbaa !42
  %.pre.i.i11.i33 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i12.i34

Vec_IntGrow.exit.i.i.i12.i34:                     ; preds = %Vec_IntGrow.exit.sink.split.i.i.i9.i31, %bb.x, %bb.w
  %i.bz = phi ptr [ %i.by, %Vec_IntGrow.exit.sink.split.i.i.i9.i31 ], [ %.val.i.i.i27, %bb.x ], [ %.val.i.i.i27, %bb.w ] ; 2 uses
  %i.ca = phi i32 [ %.pre.i.i11.i33, %Vec_IntGrow.exit.sink.split.i.i.i9.i31 ], [ %.val.i4.i26, %bb.x ], [ %.val.i4.i26, %bb.w ] ; 3 uses
  %.not3.i.i13.i35 = icmp sgt i32 %i.ca, %1
  br i1 %.not3.i.i13.i35, label %._crit_edge.i.i.i16.i38, label %.lr.ph.i.i.i14.i36

.lr.ph.i.i.i14.i36:                               ; preds = %Vec_IntGrow.exit.i.i.i12.i34
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 2
  %scevgep.i.i.i15.i37 = getelementptr i8, ptr %i.bz, i64 %i.cc
  %i.cd = sub i32 %1, %i.ca
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i15.i37, i8 0, i64 %i.cg, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i16.i38

._crit_edge.i.i.i16.i38:                          ; preds = %.lr.ph.i.i.i14.i36, %Vec_IntGrow.exit.i.i.i12.i34
  store i32 %i.d, ptr %i.a, align 4, !tbaa !26
  %.phi.trans.insert.i39 = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.af
  %.pre.i40 = load i32, ptr %.phi.trans.insert.i39, align 4, !tbaa !28
  br label %Cba_ObjAttr.exit22.i41

Cba_ObjAttr.exit22.i41:                           ; preds = %._crit_edge.i.i.i16.i38, %bb.u
  %i.ch = phi i32 [ %.pre.i40, %._crit_edge.i.i.i16.i38 ], [ %i.bs, %bb.u ]
  %i.ci = getelementptr i8, ptr %0, i64 240
  %.val.i42 = load ptr, ptr %i.ci, align 8, !tbaa !27
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr [4 x i8], ptr %.val.i42, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  br label %Cba_ObjAttrArray.exit

Cba_ObjAttrArray.exit:                            ; preds = %Cba_ObjAttr.exit.i25, %Cba_ObjAttr.exit22.i41
  %i.cm = phi ptr [ %i.cl, %Cba_ObjAttr.exit22.i41 ], [ null, %Cba_ObjAttr.exit.i25 ] ; 2 uses
  %i.cn = icmp sgt i32 %.ph, 0
  br i1 %i.cn, label %.lr.ph, label %.loopexit

bb.y:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv.next to i32
  %i.cp = icmp sgt i32 %.ph, %i.co
  br i1 %i.cp, label %.lr.ph, label %.loopexit, !llvm.loop !70

.lr.ph:                                           ; preds = %Cba_ObjAttrArray.exit, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %Cba_ObjAttrArray.exit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !28
  %i.cs = icmp eq i32 %i.cr, %2
  br i1 %i.cs, label %bb.z, label %bb.y

bb.z:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.a, %Cba_ObjAttrArray.exit, %bb.z
  %.012 = phi i32 [ %i.cv, %bb.z ], [ 0, %Cba_ObjAttrArray.exit ], [ 0, %bb.a ], [ 0, %bb.y ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define void @Cba_ManWriteVerilogNtk(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1584 ; 480 uses
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val866.val = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.d = tail call i32 @Abc_NamStrFind(ptr noundef %.val866.val, ptr noundef nonnull @.str.70) #17 ; 4 uses
  %.val865 = load ptr, ptr %0, align 8, !tbaa !46
  %i.e = getelementptr i8, ptr %.val865, i64 16
  %.val865.val = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.f = tail call i32 @Abc_NamStrFind(ptr noundef %.val865.val, ptr noundef nonnull @.str.71) #17 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 28
  %.val869 = load i32, ptr %i.g, align 4, !tbaa !26
  %i.h = getelementptr i8, ptr %0, i64 44         ; 4 uses
  %.val870 = load i32, ptr %i.h, align 4, !tbaa !26 ; 2 uses
  %i.i = add nsw i32 %.val870, %.val869
  %i.j = icmp sgt i32 %i.i, 5                     ; 6 uses
  %i.k = getelementptr i8, ptr %0, i64 156
  %.val871 = load i32, ptr %i.k, align 4, !tbaa !26 ; 2 uses
  %i.l = ashr i32 %.val871, 5
  %i.m = and i32 %.val871, 31
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = add nsw i32 %i.l, %i.o                   ; 3 uses
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.r = shl nsw i32 %i.p, 5                      ; 2 uses
  store i32 %i.r, ptr %i.q, align 8, !tbaa !92
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sext i32 %i.p to i64
  %i.t = shl nsw i64 %i.s, 2                      ; 2 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #19
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !93
  store i32 %i.r, ptr %i.w, align 4, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.y = icmp sgt i32 %.val870, 0
  br i1 %i.y, label %.critedge.lr.ph, label %.lr.ph.i

.critedge.lr.ph:                                  ; preds = %Vec_BitStart.exit
  %i.z = getelementptr i8, ptr %0, i64 48
  %i.aa = getelementptr i8, ptr %0, i64 112
  %i.ab = getelementptr i8, ptr %0, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 272       ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 208       ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.val874 = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val874, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !28 ; 7 uses
  %.val941 = load ptr, ptr %i.aa, align 8, !tbaa !27
  %.val942 = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val941, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !28
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val942, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28 ; 10 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.ar = add nuw nsw i32 %i.ap, 1                ; 4 uses
  %i.as = load i32, ptr %i.ad, align 4, !tbaa !26 ; 3 uses
  %.not.i.not.i.i = icmp slt i32 %i.ap, %i.as
  br i1 %.not.i.not.i.i, label %Cba_FonName.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.ac, align 8, !tbaa !42 ; 4 uses
  %i.au = shl nsw i32 %i.at, 1                    ; 2 uses
  %.not.i.i999 = icmp slt i32 %i.ap, %i.au
  br i1 %.not.i.i999, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.av, null
  %i.aw = zext nneg i32 %i.ar to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.ax) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ax) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.d
  %.not.i.i.not.i.i = icmp sgt i32 %i.at, %i.ap
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp slt i32 %i.at, 1073741823
  %spec.select.i.i.i = select i1 %i.ba, i32 %i.au, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.at, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.bb, null
  %i.bc = zext nneg i32 %spec.select.i.i.i to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = tail call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %i.bd) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.bd) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.k, %bb.l, %bb.f, %bb.g
  %storemerge3919 = phi ptr [ %i.az, %bb.g ], [ %i.ay, %bb.f ], [ %i.be, %bb.k ], [ %i.bf, %bb.l ]
  %spec.select.sink.i.i.i = phi i32 [ %i.ar, %bb.g ], [ %i.ar, %bb.f ], [ %spec.select.i.i.i, %bb.k ], [ %spec.select.i.i.i, %bb.l ]
  store ptr %storemerge3919, ptr %i.ae, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i.i, ptr %i.ac, align 8, !tbaa !42
  %.pre.i.i = load i32, ptr %i.ad, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h
  %i.bg = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.as, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.bg, %i.ap
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.bi = sext i32 %i.bg to i64
  %i.bj = shl nsw i64 %i.bi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.bh, i64 %i.bj
  %i.bk = sub i32 %i.ap, %i.bg
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.bn, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.ar, ptr %i.ad, align 4, !tbaa !26
  br label %Cba_FonName.exit

Cba_FonName.exit:                                 ; preds = %bb.c, %._crit_edge.i.i.i
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.bo = zext nneg i32 %i.ap to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !28
  %i.br = add nsw i32 %i.aj, 1                    ; 4 uses
  %i.bs = load i32, ptr %i.ag, align 4, !tbaa !26 ; 4 uses
  %.not.i.not.i.i1000 = icmp slt i32 %i.aj, %i.bs
  br i1 %.not.i.not.i.i1000, label %Cba_ObjName.exit, label %bb.m

bb.m:                                             ; preds = %Cba_FonName.exit
  %i.bt = load i32, ptr %i.af, align 8, !tbaa !42 ; 4 uses
  %i.bu = shl nsw i32 %i.bt, 1                    ; 2 uses
  %.not.i.i1001 = icmp slt i32 %i.aj, %i.bu
  %.not.i.i.not.i.i1002 = icmp sgt i32 %i.bt, %i.aj ; 2 uses
  br i1 %.not.i.i1001, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i.i.not.i.i1002, label %Vec_IntGrow.exit.i.i.i1007, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i1003 = icmp eq ptr %i.bv, null
  %i.bw = sext i32 %i.br to i64
  %i.bx = shl nsw i64 %i.bw, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i1003, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = tail call ptr @realloc(ptr noundef nonnull %i.bv, i64 noundef %i.bx) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i1004

bb.q:                                             ; preds = %bb.o
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.bx) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i1004

bb.r:                                             ; preds = %bb.m
  br i1 %.not.i.i.not.i.i1002, label %Vec_IntGrow.exit.i.i.i1007, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp slt i32 %i.bt, 1073741823
  %spec.select.i.i.i1013 = select i1 %i.ca, i32 %i.bu, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i1014 = icmp slt i32 %i.bt, %spec.select.i.i.i1013
  br i1 %.not.i22.i.i.i1014, label %bb.t, label %Vec_IntGrow.exit.i.i.i1007

bb.t:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i1015 = icmp eq ptr %i.cb, null
  %i.cc = sext i32 %spec.select.i.i.i1013 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i1015, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = tail call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %i.cd) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i1004

bb.v:                                             ; preds = %bb.t
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.cd) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i1004

Vec_IntGrow.exit.sink.split.i.i.i1004:            ; preds = %bb.u, %bb.v, %bb.p, %bb.q
  %storemerge3920 = phi ptr [ %i.bz, %bb.q ], [ %i.by, %bb.p ], [ %i.ce, %bb.u ], [ %i.cf, %bb.v ]
  %spec.select.sink.i.i.i1005 = phi i32 [ %i.br, %bb.q ], [ %i.br, %bb.p ], [ %spec.select.i.i.i1013, %bb.u ], [ %spec.select.i.i.i1013, %bb.v ]
  store ptr %storemerge3920, ptr %i.ah, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i.i1005, ptr %i.af, align 8, !tbaa !42
  %.pre.i.i1006 = load i32, ptr %i.ag, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i1007

Vec_IntGrow.exit.i.i.i1007:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i1004, %bb.s, %bb.r, %bb.n
  %i.cg = phi i32 [ %.pre.i.i1006, %Vec_IntGrow.exit.sink.split.i.i.i1004 ], [ %i.bs, %bb.s ], [ %i.bs, %bb.r ], [ %i.bs, %bb.n ] ; 3 uses
  %.not3.i.i1008 = icmp sgt i32 %i.cg, %i.aj
  br i1 %.not3.i.i1008, label %._crit_edge.i.i.i1011, label %.lr.ph.i.i.i1009

.lr.ph.i.i.i1009:                                 ; preds = %Vec_IntGrow.exit.i.i.i1007
  %i.ch = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ci = sext i32 %i.cg to i64
  %i.cj = shl nsw i64 %i.ci, 2
  %scevgep.i.i.i1010 = getelementptr i8, ptr %i.ch, i64 %i.cj
  %i.ck = sub i32 %i.aj, %i.cg
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i1010, i8 0, i64 %i.cn, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i1011

._crit_edge.i.i.i1011:                            ; preds = %.lr.ph.i.i.i1009, %Vec_IntGrow.exit.i.i.i1007
  store i32 %i.br, ptr %i.ag, align 4, !tbaa !26
  br label %Cba_ObjName.exit

Cba_ObjName.exit:                                 ; preds = %Cba_FonName.exit, %._crit_edge.i.i.i1011
  %.val.i.i1012 = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.co = getelementptr inbounds [4 x i8], ptr %.val.i.i1012, i64 %i.ak
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !28
  %i.cq = icmp eq i32 %i.bq, %i.cp
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %Cba_ObjName.exit
  %i.cr = and i32 %i.ap, 31
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = lshr i32 %i.ap, 5
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !28
  %i.cx = or i32 %i.cw, %i.cs
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %.critedge, %Cba_ObjName.exit, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val868 = load i32, ptr %i.h, align 4, !tbaa !26
  %i.cy = sext i32 %.val868 to i64
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %.critedge, label %.lr.ph.i, !llvm.loop !71

.lr.ph.i:                                         ; preds = %bb.x, %Vec_BitStart.exit
  %i.da = getelementptr i8, ptr %i.a, i64 1588    ; 612 uses
  %i.db = getelementptr i8, ptr %i.a, i64 1592    ; 838 uses
  br label %bb.y

bb.y:                                             ; preds = %Vec_StrPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_StrPush.exit.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @.str.72, i64 %indvars.iv.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.de = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.df = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dg = icmp eq i32 %i.de, %i.df
  br i1 %i.dg, label %bb.z, label %.Vec_StrPush.exit_crit_edge.i

.Vec_StrPush.exit_crit_edge.i:                    ; preds = %bb.y
  %.pre.i = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dh = icmp slt i32 %i.de, 16
  br i1 %i.dh, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not9.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.di, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ad:                                            ; preds = %bb.z
  %i.dl = icmp samesign ult i32 %i.de, 1073741823
  %i.dm = shl nuw nsw i32 %i.de, 1
  %spec.select.i.i = select i1 %i.dl, i32 %i.dm, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.de, %spec.select.i.i
  %.pre8.i = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.ae, label %Vec_StrPush.exit.i

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i.i = icmp eq ptr %.pre8.i, null
  %i.dn = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = tail call ptr @realloc(ptr noundef nonnull %.pre8.i, i64 noundef %i.dn) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.dn) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab
  %i.dq = phi ptr [ %i.dk, %bb.ac ], [ %i.dj, %bb.ab ], [ %i.do, %bb.af ], [ %i.dp, %bb.ag ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i.i, %bb.af ], [ %spec.select.i.i, %bb.ag ]
  store ptr %i.dq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i, ptr %i.b, align 8, !tbaa !24
  %.pre9.i = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %Vec_StrGrow.exit11.sink.split.i.i, %bb.ad, %.Vec_StrPush.exit_crit_edge.i
  %i.dr = phi i32 [ %i.de, %.Vec_StrPush.exit_crit_edge.i ], [ %i.de, %bb.ad ], [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ds = phi ptr [ %.pre.i, %.Vec_StrPush.exit_crit_edge.i ], [ %.pre8.i, %bb.ad ], [ %i.dq, %Vec_StrGrow.exit11.sink.split.i.i ]
  %i.dt = add nsw i32 %i.dr, 1
  store i32 %i.dt, ptr %i.da, align 4, !tbaa !23
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du
  store i8 %i.dd, ptr %i.dv, align 1, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 7
  br i1 %exitcond.not.i, label %Vec_StrPrintStr.exit, label %bb.y, !llvm.loop !2

Vec_StrPrintStr.exit:                             ; preds = %Vec_StrPush.exit.i
  %.val948 = load ptr, ptr %0, align 8, !tbaa !46
  %i.dw = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %.val949 = load i32, ptr %i.dw, align 4, !tbaa !95
  %i.dx = getelementptr i8, ptr %.val948, i64 16
  %.val948.val = load ptr, ptr %i.dx, align 8, !tbaa !48
  %i.dy = tail call ptr @Abc_NamStr(ptr noundef %.val948.val, i32 noundef %.val949) #17 ; 2 uses
  %i.dz = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dy) #20 ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.i1016, label %Vec_StrPrintStr.exit1032

.lr.ph.i1016:                                     ; preds = %Vec_StrPrintStr.exit
  %wide.trip.count.i1017 = and i64 %i.dz, 2147483647
  br label %bb.ah

bb.ah:                                            ; preds = %Vec_StrPush.exit.i1021, %.lr.ph.i1016
  %indvars.iv.i1018 = phi i64 [ 0, %.lr.ph.i1016 ], [ %indvars.iv.next.i1022, %Vec_StrPush.exit.i1021 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.i1018
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !20
  %i.ee = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ef = load i32, ptr %i.b, align 8, !tbaa !24
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ai, label %.Vec_StrPush.exit_crit_edge.i1019

.Vec_StrPush.exit_crit_edge.i1019:                ; preds = %bb.ah
  %.pre.i1020 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1021

bb.ai:                                            ; preds = %bb.ah
  %i.eh = icmp slt i32 %i.ee, 16
  br i1 %i.eh, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1031 = icmp eq ptr %i.ei, null
  br i1 %.not9.i.i.i1031, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ei, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

bb.al:                                            ; preds = %bb.aj
  %i.ek = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

bb.am:                                            ; preds = %bb.ai
  %i.el = icmp samesign ult i32 %i.ee, 1073741823
  %i.em = shl nuw nsw i32 %i.ee, 1
  %spec.select.i.i1024 = select i1 %i.el, i32 %i.em, i32 2147483647 ; 4 uses
  %.not.i9.i.i1025 = icmp samesign ult i32 %i.ee, %spec.select.i.i1024
  %.pre8.i1026 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1025, label %bb.an, label %Vec_StrPush.exit.i1021

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i.i1027 = icmp eq ptr %.pre8.i1026, null
  %i.en = zext nneg i32 %spec.select.i.i1024 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1027, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1026, i64 noundef %i.en) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

bb.ap:                                            ; preds = %bb.an
  %i.ep = tail call noalias ptr @malloc(i64 noundef %i.en) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

Vec_StrGrow.exit11.sink.split.i.i1028:            ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak
  %i.eq = phi ptr [ %i.ek, %bb.al ], [ %i.ej, %bb.ak ], [ %i.eo, %bb.ao ], [ %i.ep, %bb.ap ] ; 2 uses
  %spec.select.sink.i.i1029 = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i.i1024, %bb.ao ], [ %spec.select.i.i1024, %bb.ap ]
  store ptr %i.eq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1029, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1030 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1021

Vec_StrPush.exit.i1021:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1028, %bb.am, %.Vec_StrPush.exit_crit_edge.i1019
  %i.er = phi i32 [ %i.ee, %.Vec_StrPush.exit_crit_edge.i1019 ], [ %i.ee, %bb.am ], [ %.pre9.i1030, %Vec_StrGrow.exit11.sink.split.i.i1028 ] ; 2 uses
  %i.es = phi ptr [ %.pre.i1020, %.Vec_StrPush.exit_crit_edge.i1019 ], [ %.pre8.i1026, %bb.am ], [ %i.eq, %Vec_StrGrow.exit11.sink.split.i.i1028 ]
  %i.et = add nsw i32 %i.er, 1
  store i32 %i.et, ptr %i.da, align 4, !tbaa !23
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %i.eu
  store i8 %i.ed, ptr %i.ev, align 1, !tbaa !20
  %indvars.iv.next.i1022 = add nuw nsw i64 %indvars.iv.i1018, 1 ; 2 uses
  %exitcond.not.i1023 = icmp eq i64 %indvars.iv.next.i1022, %wide.trip.count.i1017
  br i1 %exitcond.not.i1023, label %Vec_StrPrintStr.exit1032, label %bb.ah, !llvm.loop !2

Vec_StrPrintStr.exit1032:                         ; preds = %Vec_StrPush.exit.i1021, %Vec_StrPrintStr.exit
  %i.ew = select i1 %i.j, ptr @.str.73, ptr @.str.74
  %i.ex = select i1 %i.j, i64 7, i64 3
  br label %bb.aq

bb.aq:                                            ; preds = %Vec_StrPush.exit.i1038, %Vec_StrPrintStr.exit1032
  %indvars.iv.i1035 = phi i64 [ 0, %Vec_StrPrintStr.exit1032 ], [ %indvars.iv.next.i1039, %Vec_StrPush.exit.i1038 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.i1035
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !20
  %i.fa = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fb = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ar, label %.Vec_StrPush.exit_crit_edge.i1036

.Vec_StrPush.exit_crit_edge.i1036:                ; preds = %bb.aq
  %.pre.i1037 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1038

bb.ar:                                            ; preds = %bb.aq
  %i.fd = icmp slt i32 %i.fa, 16
  br i1 %i.fd, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fe = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1048 = icmp eq ptr %i.fe, null
  br i1 %.not9.i.i.i1048, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fe, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

bb.au:                                            ; preds = %bb.as
  %i.fg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

bb.av:                                            ; preds = %bb.ar
  %i.fh = icmp samesign ult i32 %i.fa, 1073741823
  %i.fi = shl nuw nsw i32 %i.fa, 1
  %spec.select.i.i1041 = select i1 %i.fh, i32 %i.fi, i32 2147483647 ; 4 uses
  %.not.i9.i.i1042 = icmp samesign ult i32 %i.fa, %spec.select.i.i1041
  %.pre8.i1043 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1042, label %bb.aw, label %Vec_StrPush.exit.i1038

bb.aw:                                            ; preds = %bb.av
  %.not9.i10.i.i1044 = icmp eq ptr %.pre8.i1043, null
  %i.fj = zext nneg i32 %spec.select.i.i1041 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1044, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1043, i64 noundef %i.fj) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

bb.ay:                                            ; preds = %bb.aw
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fj) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

Vec_StrGrow.exit11.sink.split.i.i1045:            ; preds = %bb.ay, %bb.ax, %bb.au, %bb.at
  %i.fm = phi ptr [ %i.fg, %bb.au ], [ %i.ff, %bb.at ], [ %i.fk, %bb.ax ], [ %i.fl, %bb.ay ] ; 2 uses
  %spec.select.sink.i.i1046 = phi i32 [ 16, %bb.au ], [ 16, %bb.at ], [ %spec.select.i.i1041, %bb.ax ], [ %spec.select.i.i1041, %bb.ay ]
  store ptr %i.fm, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1046, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1047 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1038

Vec_StrPush.exit.i1038:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1045, %bb.av, %.Vec_StrPush.exit_crit_edge.i1036
  %i.fn = phi i32 [ %i.fa, %.Vec_StrPush.exit_crit_edge.i1036 ], [ %i.fa, %bb.av ], [ %.pre9.i1047, %Vec_StrGrow.exit11.sink.split.i.i1045 ] ; 2 uses
  %i.fo = phi ptr [ %.pre.i1037, %.Vec_StrPush.exit_crit_edge.i1036 ], [ %.pre8.i1043, %bb.av ], [ %i.fm, %Vec_StrGrow.exit11.sink.split.i.i1045 ]
  %i.fp = add nsw i32 %i.fn, 1
  store i32 %i.fp, ptr %i.da, align 4, !tbaa !23
  %i.fq = sext i32 %i.fn to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq
  store i8 %i.ez, ptr %i.fr, align 1, !tbaa !20
  %indvars.iv.next.i1039 = add nuw nsw i64 %indvars.iv.i1035, 1 ; 2 uses
  %exitcond.not.i1040 = icmp eq i64 %indvars.iv.next.i1039, %i.ex
  br i1 %exitcond.not.i1040, label %Vec_StrPrintStr.exit1049, label %bb.aq, !llvm.loop !2

Vec_StrPrintStr.exit1049:                         ; preds = %Vec_StrPush.exit.i1038
  %i.fs = getelementptr i8, ptr %0, i64 60        ; 4 uses
  %.val9513016 = load i32, ptr %i.fs, align 4, !tbaa !26
  %i.ft = icmp sgt i32 %.val9513016, 0
  br i1 %i.ft, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_StrPrintStr.exit1049
  %.val846 = load i32, ptr %i.da, align 4, !tbaa !23 ; 2 uses
  %i.fu = getelementptr i8, ptr %0, i64 64
  br label %bb.az

thread-pre-split:                                 ; preds = %Vec_StrPrintStr.exit1100
  %.val845.pre3117.pr = load i32, ptr %i.da, align 4, !tbaa !23
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split, %.lr.ph
  %.val845.pre3117 = phi i32 [ %.val845.pre3117.pr, %thread-pre-split ], [ %.val846, %.lr.ph ] ; 8 uses
  %indvars.iv3075 = phi i64 [ %indvars.iv.next3076, %thread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %.07733017 = phi i32 [ %.1774, %thread-pre-split ], [ %.val846, %.lr.ph ] ; 2 uses
  %.val953 = load ptr, ptr %i.fu, align 8, !tbaa !27
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val953, i64 %indvars.iv3075
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %.not831 = icmp eq i64 %indvars.iv3075, 0
  br i1 %.not831, label %Vec_StrPrintStr.exit1066, label %.lr.ph.i1050.preheader

.lr.ph.i1050.preheader:                           ; preds = %bb.az
  %i.fx = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fy = icmp eq i32 %.val845.pre3117, %i.fx
  br i1 %i.fy, label %bb.ba, label %.Vec_StrPush.exit_crit_edge.i1053

.Vec_StrPush.exit_crit_edge.i1053:                ; preds = %.lr.ph.i1050.preheader
  %.pre.i1054 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1055

bb.ba:                                            ; preds = %.lr.ph.i1050.preheader
  %i.fz = icmp slt i32 %.val845.pre3117, 16
  br i1 %i.fz, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.ga = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1065 = icmp eq ptr %i.ga, null
end_hunk_0
begin_hunk_1_@Cba_ManWriteVerilogNtk:bb.a
  store i32 %i.ti, ptr %i.da, align 4, !tbaa !23
  %i.tj = sext i32 %i.tg to i64
  %i.tk = getelementptr inbounds i8, ptr %i.th, i64 %i.tj
  store i8 10, ptr %i.tk, align 1, !tbaa !20
  %i.tl = getelementptr i8, ptr %0, i64 92        ; 2 uses
  %.val8413057 = load i32, ptr %i.tl, align 4, !tbaa !23 ; 2 uses
  %i.tm = icmp sgt i32 %.val8413057, 1
  br i1 %i.tm, label %.lr.ph3062, label %.preheader

.lr.ph3062:                                       ; preds = %Vec_StrPush.exit.i1197
  %i.tn = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %.not795 = icmp ne i32 %1, 0
  %i.to = getelementptr i8, ptr %0, i64 128       ; 12 uses
  %i.tp = getelementptr i8, ptr %0, i64 112       ; 42 uses
  %i.tq = getelementptr i8, ptr %0, i64 144       ; 33 uses
  %i.tr = getelementptr i8, ptr %0, i64 188       ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.tt = getelementptr i8, ptr %0, i64 192       ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 9 uses
  %i.tw = getelementptr i8, ptr %0, i64 208       ; 18 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 6 uses
  %i.tz = getelementptr i8, ptr %0, i64 272       ; 10 uses
  br label %bb.gk

.preheader:                                       ; preds = %Vec_StrPrintStr.exit1208, %Vec_StrPush.exit.i1197
  %.val8673063 = load i32, ptr %i.h, align 4, !tbaa !26
  %i.ua = icmp sgt i32 %.val8673063, 0
  br i1 %i.ua, label %.lr.ph3065, label %.lr.ph.i2953

.lr.ph3065:                                       ; preds = %.preheader
  %i.ub = getelementptr i8, ptr %0, i64 48
  %i.uc = getelementptr i8, ptr %0, i64 112
  %i.ud = getelementptr i8, ptr %0, i64 144
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.ug = getelementptr i8, ptr %0, i64 272       ; 5 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.uj = getelementptr i8, ptr %0, i64 208       ; 5 uses
  br label %bb.bpc

bb.gk:                                            ; preds = %.lr.ph3062, %Vec_StrPrintStr.exit1208
  %.val8413180 = phi i32 [ %.val8413057, %.lr.ph3062 ], [ %.val841, %Vec_StrPrintStr.exit1208 ]
  %indvars.iv3111 = phi i64 [ 1, %.lr.ph3062 ], [ %indvars.iv.next3112, %Vec_StrPrintStr.exit1208 ] ; 84 uses
  %.val972 = load ptr, ptr %i.tn, align 8, !tbaa !25
  %i.uk = getelementptr inbounds nuw i8, ptr %.val972, i64 %indvars.iv3111
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !20  ; 19 uses
  %i.um = add i8 %i.ul, -90
  %i.un = icmp ult i8 %i.um, -87
  %.not2990 = icmp eq i8 %i.ul, 88
  %or.cond = or i1 %.not2990, %i.un
  %.not2991 = icmp eq i8 %i.ul, 89
  %or.cond3004 = and i1 %.not795, %.not2991
  %or.cond3066 = or i1 %or.cond, %or.cond3004
  br i1 %or.cond3066, label %Vec_StrPrintStr.exit1208, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  switch i8 %i.ul, label %bb.oz [
    i8 3, label %bb.gm
    i8 82, label %bb.lw
    i8 79, label %bb.lw
    i8 77, label %bb.lw
  ]

bb.gm:                                            ; preds = %bb.gl
  %.val5.i.i = load i32, ptr %i.tr, align 4, !tbaa !26 ; 4 uses
  %i.uo = icmp slt i32 %.val5.i.i, 1
  %.pre3200.a = add nuw nsw i64 %indvars.iv3111, 1 ; 13 uses
  br i1 %i.uo, label %Cba_ObjNtk.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.up = zext nneg i32 %.val5.i.i to i64         ; 3 uses
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv3111, %i.up
  br i1 %.not.i.not.i.i.i.i, label %Cba_ObjNtkId.exit.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.uq = load i32, ptr %i.ts, align 8, !tbaa !42 ; 4 uses
  %i.ur = shl nsw i32 %i.uq, 1                    ; 2 uses
  %i.us = sext i32 %i.ur to i64
  %.not.i.i.i.i = icmp slt i64 %indvars.iv3111, %i.us
  br i1 %.not.i.i.i.i, label %bb.gt, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ut = load ptr, ptr %i.tt, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.ut, null
  %i.uu = shl nuw nsw i64 %.pre3200.a, 2          ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.uv = tail call ptr @realloc(ptr noundef nonnull %i.ut, i64 noundef %i.uu) #18
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.uw = tail call noalias ptr @malloc(i64 noundef %i.uu) #19
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ux = phi ptr [ %i.uv, %bb.gq ], [ %i.uw, %bb.gr ]
  store ptr %i.ux, ptr %i.tt, align 8, !tbaa !27
  %i.uy = trunc nuw nsw i64 %.pre3200.a to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.gt:                                            ; preds = %bb.go
  %i.uz = sext i32 %i.uq to i64
  %.not.i.i.not.i.i.i.i = icmp slt i64 %indvars.iv3111, %i.uz
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.va = icmp slt i32 %i.uq, 1073741823
  %spec.select.i.i.i.i.i = select i1 %i.va, i32 %i.ur, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.uq, %spec.select.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i, label %bb.gv, label %Vec_IntGrow.exit.i.i.i.i.i

bb.gv:                                            ; preds = %bb.gu
  %i.vb = load ptr, ptr %i.tt, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i.i.i = icmp eq ptr %i.vb, null
  %i.vc = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.vd = shl nuw nsw i64 %i.vc, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ve = tail call ptr @realloc(ptr noundef nonnull %i.vb, i64 noundef %i.vd) #18
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gv
  %i.vf = tail call noalias ptr @malloc(i64 noundef %i.vd) #19
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.vg = phi ptr [ %i.ve, %bb.gw ], [ %i.vf, %bb.gx ]
  store ptr %i.vg, ptr %i.tt, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.gy, %bb.gs
  %spec.select.sink.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.gy ], [ %i.uy, %bb.gs ]
  store i32 %spec.select.sink.i.i.i.i.i, ptr %i.ts, align 8, !tbaa !42
  %.pre.i.i.i.i = load i32, ptr %i.tr, align 4, !tbaa !26 ; 2 uses
  %.pre3198.a = sext i32 %.pre.i.i.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.gu, %bb.gt
  %.pre-phi3199.a = phi i64 [ %.pre3198.a, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %i.up, %bb.gu ], [ %i.up, %bb.gt ] ; 2 uses
  %i.vh = phi i32 [ %.pre.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %.val5.i.i, %bb.gu ], [ %.val5.i.i, %bb.gt ]
  %.not3.i.i.i.i = icmp sgt i64 %.pre-phi3199.a, %indvars.iv3111
  br i1 %.not3.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i.i
  %i.vi = load ptr, ptr %i.tt, align 8, !tbaa !27
  %i.vj = shl nsw i64 %.pre-phi3199.a, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.vi, i64 %i.vj
  %i.vk = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.vl = sub i32 %i.vk, %i.vh
  %i.vm = zext i32 %i.vl to i64
  %i.vn = shl nuw nsw i64 %i.vm, 2
  %i.vo = add nuw nsw i64 %i.vn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i, i8 0, i64 %i.vo, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  %i.vp = trunc nuw nsw i64 %.pre3200.a to i32
  store i32 %i.vp, ptr %i.tr, align 4, !tbaa !26
  br label %Cba_ObjNtkId.exit.i

Cba_ObjNtkId.exit.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.gn
  %.val.i.i.i.i = load ptr, ptr %i.tt, align 8, !tbaa !27
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %indvars.iv3111
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !28 ; 3 uses
  %.val.i1211 = load ptr, ptr %0, align 8, !tbaa !46 ; 2 uses
  %i.vs = icmp sgt i32 %i.vr, 0
  br i1 %i.vs, label %Cba_ManNtkIsOk.exit.i.i.i, label %Cba_ObjNtk.exit

Cba_ManNtkIsOk.exit.i.i.i:                        ; preds = %Cba_ObjNtkId.exit.i
  %i.vt = getelementptr i8, ptr %.val.i1211, i64 1564
  %.val.i.i.i2.i = load i32, ptr %i.vt, align 4, !tbaa !39
  %.not.i.i.i = icmp slt i32 %i.vr, %.val.i.i.i2.i
  br i1 %.not.i.i.i, label %bb.gz, label %Cba_ObjNtk.exit

bb.gz:                                            ; preds = %Cba_ManNtkIsOk.exit.i.i.i
  %i.vu = getelementptr i8, ptr %.val.i1211, i64 1568
  %.val.i.i.i = load ptr, ptr %i.vu, align 8, !tbaa !40
  %i.vv = zext nneg i32 %i.vr to i64
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.vv
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !41
  br label %Cba_ObjNtk.exit

Cba_ObjNtk.exit:                                  ; preds = %bb.gm, %Cba_ObjNtkId.exit.i, %Cba_ManNtkIsOk.exit.i.i.i, %bb.gz
  %i.vy = phi ptr [ %i.vx, %bb.gz ], [ null, %Cba_ObjNtkId.exit.i ], [ null, %Cba_ManNtkIsOk.exit.i.i.i ], [ null, %bb.gm ] ; 7 uses
  %.val970 = load ptr, ptr %i.to, align 8, !tbaa !27 ; 3 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.val970, i64 %indvars.iv3111
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !28 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.val970, i64 %.pre3200.a
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !28
  %i.wd = icmp slt i32 %i.wa, %i.wc
  br i1 %i.wd, label %.lr.ph3027, label %.lr.ph.i1246

.lr.ph3027:                                       ; preds = %Cba_ObjNtk.exit, %Vec_StrPrintStr.exit1245
  %.val9693130 = phi ptr [ %.val969, %Vec_StrPrintStr.exit1245 ], [ %.val970, %Cba_ObjNtk.exit ]
  %.07753026 = phi i32 [ %i.yp, %Vec_StrPrintStr.exit1245 ], [ %i.wa, %Cba_ObjNtk.exit ] ; 5 uses
  %.val985 = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.we = ashr i32 %.07753026, 5
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [4 x i8], ptr %.val985, i64 %i.wf
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !28
  %i.wi = and i32 %.07753026, 31
  %i.wj = shl nuw i32 1, %i.wi
  %i.wk = and i32 %i.wh, %i.wj
  %.not828 = icmp eq i32 %i.wk, 0
  br i1 %.not828, label %.lr.ph.i1212, label %Vec_StrPrintStr.exit1245

.lr.ph.i1212:                                     ; preds = %.lr.ph3027, %Vec_StrPush.exit.i1217
  %indvars.iv.i1214 = phi i64 [ %indvars.iv.next.i1218, %Vec_StrPush.exit.i1217 ], [ 0, %.lr.ph3027 ] ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr @.str.84, i64 %indvars.iv.i1214
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !20
  %i.wn = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.wo = load i32, ptr %i.b, align 8, !tbaa !24
  %i.wp = icmp eq i32 %i.wn, %i.wo
  br i1 %i.wp, label %bb.ha, label %.Vec_StrPush.exit_crit_edge.i1215

.Vec_StrPush.exit_crit_edge.i1215:                ; preds = %.lr.ph.i1212
  %.pre.i1216 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1217

bb.ha:                                            ; preds = %.lr.ph.i1212
  %i.wq = icmp slt i32 %i.wn, 16
  br i1 %i.wq, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.wr = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1227 = icmp eq ptr %i.wr, null
  br i1 %.not9.i.i.i1227, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ws = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.wr, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

bb.hd:                                            ; preds = %bb.hb
  %i.wt = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

bb.he:                                            ; preds = %bb.ha
  %i.wu = icmp samesign ult i32 %i.wn, 1073741823
  %i.wv = shl nuw nsw i32 %i.wn, 1
  %spec.select.i.i1220 = select i1 %i.wu, i32 %i.wv, i32 2147483647 ; 4 uses
  %.not.i9.i.i1221 = icmp samesign ult i32 %i.wn, %spec.select.i.i1220
  %.pre8.i1222 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1221, label %bb.hf, label %Vec_StrPush.exit.i1217

bb.hf:                                            ; preds = %bb.he
  %.not9.i10.i.i1223 = icmp eq ptr %.pre8.i1222, null
  %i.ww = zext nneg i32 %spec.select.i.i1220 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1223, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.wx = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1222, i64 noundef %i.ww) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

bb.hh:                                            ; preds = %bb.hf
  %i.wy = tail call noalias ptr @malloc(i64 noundef %i.ww) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

Vec_StrGrow.exit11.sink.split.i.i1224:            ; preds = %bb.hh, %bb.hg, %bb.hd, %bb.hc
  %i.wz = phi ptr [ %i.wt, %bb.hd ], [ %i.ws, %bb.hc ], [ %i.wx, %bb.hg ], [ %i.wy, %bb.hh ] ; 2 uses
  %spec.select.sink.i.i1225 = phi i32 [ 16, %bb.hd ], [ 16, %bb.hc ], [ %spec.select.i.i1220, %bb.hg ], [ %spec.select.i.i1220, %bb.hh ]
  store ptr %i.wz, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1225, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1226 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1217

Vec_StrPush.exit.i1217:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1224, %bb.he, %.Vec_StrPush.exit_crit_edge.i1215
  %i.xa = phi i32 [ %i.wn, %.Vec_StrPush.exit_crit_edge.i1215 ], [ %i.wn, %bb.he ], [ %.pre9.i1226, %Vec_StrGrow.exit11.sink.split.i.i1224 ] ; 2 uses
  %i.xb = phi ptr [ %.pre.i1216, %.Vec_StrPush.exit_crit_edge.i1215 ], [ %.pre8.i1222, %bb.he ], [ %i.wz, %Vec_StrGrow.exit11.sink.split.i.i1224 ]
  %i.xc = add nsw i32 %i.xa, 1
  store i32 %i.xc, ptr %i.da, align 4, !tbaa !23
  %i.xd = sext i32 %i.xa to i64
  %i.xe = getelementptr inbounds i8, ptr %i.xb, i64 %i.xd
  store i8 %i.wm, ptr %i.xe, align 1, !tbaa !20
  %indvars.iv.next.i1218 = add nuw nsw i64 %indvars.iv.i1214, 1 ; 2 uses
  %exitcond.not.i1219 = icmp eq i64 %indvars.iv.next.i1218, 7
  br i1 %exitcond.not.i1219, label %Vec_StrPrintStr.exit1228, label %.lr.ph.i1212, !llvm.loop !2

Vec_StrPrintStr.exit1228:                         ; preds = %Vec_StrPush.exit.i1217
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %.07753026)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %.07753026, i32 noundef 0, i32 noundef 0)
  %i.xf = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.xg = load i32, ptr %i.b, align 8, !tbaa !24
  %i.xh = icmp eq i32 %i.xf, %i.xg
  br i1 %i.xh, label %bb.hi, label %.Vec_StrPush.exit_crit_edge.i1232

.Vec_StrPush.exit_crit_edge.i1232:                ; preds = %Vec_StrPrintStr.exit1228
  %.pre.i1233 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1234

bb.hi:                                            ; preds = %Vec_StrPrintStr.exit1228
  %i.xi = icmp slt i32 %i.xf, 16
  br i1 %i.xi, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %bb.hi
  %i.xj = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1244 = icmp eq ptr %i.xj, null
  br i1 %.not9.i.i.i1244, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.xk = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.xj, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

bb.hl:                                            ; preds = %bb.hj
  %i.xl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

bb.hm:                                            ; preds = %bb.hi
  %i.xm = icmp samesign ult i32 %i.xf, 1073741823
  %i.xn = shl nuw nsw i32 %i.xf, 1
  %spec.select.i.i1237 = select i1 %i.xm, i32 %i.xn, i32 2147483647 ; 4 uses
  %.not.i9.i.i1238 = icmp samesign ult i32 %i.xf, %spec.select.i.i1237
  %.pre8.i1239 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1238, label %bb.hn, label %Vec_StrPush.exit.i1234

bb.hn:                                            ; preds = %bb.hm
  %.not9.i10.i.i1240 = icmp eq ptr %.pre8.i1239, null
  %i.xo = zext nneg i32 %spec.select.i.i1237 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1240, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.xp = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1239, i64 noundef %i.xo) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

bb.hp:                                            ; preds = %bb.hn
  %i.xq = tail call noalias ptr @malloc(i64 noundef %i.xo) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

Vec_StrGrow.exit11.sink.split.i.i1241:            ; preds = %bb.hp, %bb.ho, %bb.hl, %bb.hk
  %i.xr = phi ptr [ %i.xl, %bb.hl ], [ %i.xk, %bb.hk ], [ %i.xp, %bb.ho ], [ %i.xq, %bb.hp ] ; 2 uses
  %spec.select.sink.i.i1242 = phi i32 [ 16, %bb.hl ], [ 16, %bb.hk ], [ %spec.select.i.i1237, %bb.ho ], [ %spec.select.i.i1237, %bb.hp ]
  store ptr %i.xr, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1242, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1243 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1234

Vec_StrPush.exit.i1234:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1241, %bb.hm, %.Vec_StrPush.exit_crit_edge.i1232
  %i.xs = phi i32 [ %i.xf, %.Vec_StrPush.exit_crit_edge.i1232 ], [ %i.xf, %bb.hm ], [ %.pre9.i1243, %Vec_StrGrow.exit11.sink.split.i.i1241 ] ; 2 uses
  %i.xt = phi ptr [ %.pre.i1233, %.Vec_StrPush.exit_crit_edge.i1232 ], [ %.pre8.i1239, %bb.hm ], [ %i.xr, %Vec_StrGrow.exit11.sink.split.i.i1241 ]
  %i.xu = add nsw i32 %i.xs, 1
  store i32 %i.xu, ptr %i.da, align 4, !tbaa !23
  %i.xv = sext i32 %i.xs to i64
  %i.xw = getelementptr inbounds i8, ptr %i.xt, i64 %i.xv
  store i8 59, ptr %i.xw, align 1, !tbaa !20
  %i.xx = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.xy = load i32, ptr %i.b, align 8, !tbaa !24
  %i.xz = icmp eq i32 %i.xx, %i.xy
  br i1 %i.xz, label %bb.hq, label %.Vec_StrPush.exit_crit_edge.i1232.1

.Vec_StrPush.exit_crit_edge.i1232.1:              ; preds = %Vec_StrPush.exit.i1234
  %.pre.i1233.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1234.1

bb.hq:                                            ; preds = %Vec_StrPush.exit.i1234
  %i.ya = icmp slt i32 %i.xx, 16
  br i1 %i.ya, label %bb.hv, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.yb = icmp samesign ult i32 %i.xx, 1073741823
  %i.yc = shl nuw nsw i32 %i.xx, 1
  %spec.select.i.i1237.1 = select i1 %i.yb, i32 %i.yc, i32 2147483647 ; 4 uses
  %.not.i9.i.i1238.1 = icmp samesign ult i32 %i.xx, %spec.select.i.i1237.1
  %.pre8.i1239.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1238.1, label %bb.hs, label %Vec_StrPush.exit.i1234.1

bb.hs:                                            ; preds = %bb.hr
  %.not9.i10.i.i1240.1 = icmp eq ptr %.pre8.i1239.1, null
  %i.yd = zext nneg i32 %spec.select.i.i1237.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1240.1, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ye = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1239.1, i64 noundef %i.yd) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

bb.hu:                                            ; preds = %bb.hs
  %i.yf = tail call noalias ptr @malloc(i64 noundef %i.yd) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

bb.hv:                                            ; preds = %bb.hq
  %i.yg = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1244.1 = icmp eq ptr %i.yg, null
  br i1 %.not9.i.i.i1244.1, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.yh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.yg, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

bb.hx:                                            ; preds = %bb.hv
  %i.yi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

Vec_StrGrow.exit11.sink.split.i.i1241.1:          ; preds = %bb.hx, %bb.hw, %bb.hu, %bb.ht
  %i.yj = phi ptr [ %i.yi, %bb.hx ], [ %i.yh, %bb.hw ], [ %i.ye, %bb.ht ], [ %i.yf, %bb.hu ] ; 2 uses
  %spec.select.sink.i.i1242.1 = phi i32 [ 16, %bb.hx ], [ 16, %bb.hw ], [ %spec.select.i.i1237.1, %bb.ht ], [ %spec.select.i.i1237.1, %bb.hu ]
  store ptr %i.yj, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1242.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1243.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1234.1

Vec_StrPush.exit.i1234.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1241.1, %bb.hr, %.Vec_StrPush.exit_crit_edge.i1232.1
  %i.yk = phi i32 [ %i.xx, %.Vec_StrPush.exit_crit_edge.i1232.1 ], [ %i.xx, %bb.hr ], [ %.pre9.i1243.1, %Vec_StrGrow.exit11.sink.split.i.i1241.1 ] ; 2 uses
  %i.yl = phi ptr [ %.pre.i1233.1, %.Vec_StrPush.exit_crit_edge.i1232.1 ], [ %.pre8.i1239.1, %bb.hr ], [ %i.yj, %Vec_StrGrow.exit11.sink.split.i.i1241.1 ]
  %i.ym = add nsw i32 %i.yk, 1
  store i32 %i.ym, ptr %i.da, align 4, !tbaa !23
  %i.yn = sext i32 %i.yk to i64
  %i.yo = getelementptr inbounds i8, ptr %i.yl, i64 %i.yn
  store i8 10, ptr %i.yo, align 1, !tbaa !20
  %.val969.pre = load ptr, ptr %i.to, align 8, !tbaa !27
  br label %Vec_StrPrintStr.exit1245

Vec_StrPrintStr.exit1245:                         ; preds = %Vec_StrPush.exit.i1234.1, %.lr.ph3027
  %.val969 = phi ptr [ %.val969.pre, %Vec_StrPush.exit.i1234.1 ], [ %.val9693130, %.lr.ph3027 ] ; 2 uses
  %i.yp = add nsw i32 %.07753026, 1               ; 2 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.val969, i64 %.pre3200.a
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !28
  %i.ys = icmp slt i32 %i.yp, %i.yr
  br i1 %i.ys, label %.lr.ph3027, label %.lr.ph.i1246, !llvm.loop !74

.lr.ph.i1246:                                     ; preds = %Vec_StrPrintStr.exit1245, %Cba_ObjNtk.exit
  %i.yt = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.yu = load i32, ptr %i.b, align 8, !tbaa !24
  %i.yv = icmp eq i32 %i.yt, %i.yu
  br i1 %i.yv, label %bb.hy, label %.Vec_StrPush.exit_crit_edge.i1249

.Vec_StrPush.exit_crit_edge.i1249:                ; preds = %.lr.ph.i1246
  %.pre.i1250 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1251

bb.hy:                                            ; preds = %.lr.ph.i1246
  %i.yw = icmp slt i32 %i.yt, 16
  br i1 %i.yw, label %bb.hz, label %bb.ic

bb.hz:                                            ; preds = %bb.hy
  %i.yx = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1261 = icmp eq ptr %i.yx, null
  br i1 %.not9.i.i.i1261, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.yy = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.yx, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1258

bb.ib:                                            ; preds = %bb.hz
  %i.yz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1258

bb.ic:                                            ; preds = %bb.hy
  %i.za = icmp samesign ult i32 %i.yt, 1073741823
  %i.zb = shl nuw nsw i32 %i.yt, 1
  %spec.select.i.i1254 = select i1 %i.za, i32 %i.zb, i32 2147483647 ; 4 uses
  %.not.i9.i.i1255 = icmp samesign ult i32 %i.yt, %spec.select.i.i1254
  %.pre8.i1256 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1255, label %bb.id, label %Vec_StrPush.exit.i1251

bb.id:                                            ; preds = %bb.ic
  %.not9.i10.i.i1257 = icmp eq ptr %.pre8.i1256, null
  %i.zc = zext nneg i32 %spec.select.i.i1254 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1257, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.zd = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1256, i64 noundef %i.zc) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1258

bb.if:                                            ; preds = %bb.id
  %i.ze = tail call noalias ptr @malloc(i64 noundef %i.zc) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1258

Vec_StrGrow.exit11.sink.split.i.i1258:            ; preds = %bb.if, %bb.ie, %bb.ib, %bb.ia
  %i.zf = phi ptr [ %i.yz, %bb.ib ], [ %i.yy, %bb.ia ], [ %i.zd, %bb.ie ], [ %i.ze, %bb.if ] ; 2 uses
  %spec.select.sink.i.i1259 = phi i32 [ 16, %bb.ib ], [ 16, %bb.ia ], [ %spec.select.i.i1254, %bb.ie ], [ %spec.select.i.i1254, %bb.if ]
  store ptr %i.zf, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1259, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1260 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1251

Vec_StrPush.exit.i1251:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1258, %bb.ic, %.Vec_StrPush.exit_crit_edge.i1249
  %i.zg = phi i32 [ %i.yt, %.Vec_StrPush.exit_crit_edge.i1249 ], [ %i.yt, %bb.ic ], [ %.pre9.i1260, %Vec_StrGrow.exit11.sink.split.i.i1258 ] ; 2 uses
  %i.zh = phi ptr [ %.pre.i1250, %.Vec_StrPush.exit_crit_edge.i1249 ], [ %.pre8.i1256, %bb.ic ], [ %i.zf, %Vec_StrGrow.exit11.sink.split.i.i1258 ]
  %i.zi = add nsw i32 %i.zg, 1
  store i32 %i.zi, ptr %i.da, align 4, !tbaa !23
  %i.zj = sext i32 %i.zg to i64
  %i.zk = getelementptr inbounds i8, ptr %i.zh, i64 %i.zj
  store i8 32, ptr %i.zk, align 1, !tbaa !20
  %i.zl = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.zm = load i32, ptr %i.b, align 8, !tbaa !24
  %i.zn = icmp eq i32 %i.zl, %i.zm
  br i1 %i.zn, label %bb.ig, label %.Vec_StrPush.exit_crit_edge.i1249.1

.Vec_StrPush.exit_crit_edge.i1249.1:              ; preds = %Vec_StrPush.exit.i1251
  %.pre.i1250.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1251.1

bb.ig:                                            ; preds = %Vec_StrPush.exit.i1251
  %i.zo = icmp slt i32 %i.zl, 16
  br i1 %i.zo, label %bb.il, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.zp = icmp samesign ult i32 %i.zl, 1073741823
  %i.zq = shl nuw nsw i32 %i.zl, 1
  %spec.select.i.i1254.1 = select i1 %i.zp, i32 %i.zq, i32 2147483647 ; 4 uses
  %.not.i9.i.i1255.1 = icmp samesign ult i32 %i.zl, %spec.select.i.i1254.1
  %.pre8.i1256.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1255.1, label %bb.ii, label %Vec_StrPush.exit.i1251.1

bb.ii:                                            ; preds = %bb.ih
  %.not9.i10.i.i1257.1 = icmp eq ptr %.pre8.i1256.1, null
  %i.zr = zext nneg i32 %spec.select.i.i1254.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1257.1, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.zs = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1256.1, i64 noundef %i.zr) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1258.1

bb.ik:                                            ; preds = %bb.ii
  %i.zt = tail call noalias ptr @malloc(i64 noundef %i.zr) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1258.1

bb.il:                                            ; preds = %bb.ig
  %i.zu = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1261.1 = icmp eq ptr %i.zu, null
  br i1 %.not9.i.i.i1261.1, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.zv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.zu, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1258.1

bb.in:                                            ; preds = %bb.il
  %i.zw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1258.1

Vec_StrGrow.exit11.sink.split.i.i1258.1:          ; preds = %bb.in, %bb.im, %bb.ik, %bb.ij
  %i.zx = phi ptr [ %i.zw, %bb.in ], [ %i.zv, %bb.im ], [ %i.zs, %bb.ij ], [ %i.zt, %bb.ik ] ; 2 uses
  %spec.select.sink.i.i1259.1 = phi i32 [ 16, %bb.in ], [ 16, %bb.im ], [ %spec.select.i.i1254.1, %bb.ij ], [ %spec.select.i.i1254.1, %bb.ik ]
  store ptr %i.zx, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1259.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1260.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1251.1

Vec_StrPush.exit.i1251.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1258.1, %bb.ih, %.Vec_StrPush.exit_crit_edge.i1249.1
  %i.zy = phi i32 [ %i.zl, %.Vec_StrPush.exit_crit_edge.i1249.1 ], [ %i.zl, %bb.ih ], [ %.pre9.i1260.1, %Vec_StrGrow.exit11.sink.split.i.i1258.1 ] ; 2 uses
  %i.zz = phi ptr [ %.pre.i1250.1, %.Vec_StrPush.exit_crit_edge.i1249.1 ], [ %.pre8.i1256.1, %bb.ih ], [ %i.zx, %Vec_StrGrow.exit11.sink.split.i.i1258.1 ]
  %i.aaa = add nsw i32 %i.zy, 1
  store i32 %i.aaa, ptr %i.da, align 4, !tbaa !23
  %i.aab = sext i32 %i.zy to i64
  %i.aac = getelementptr inbounds i8, ptr %i.zz, i64 %i.aab
  store i8 32, ptr %i.aac, align 1, !tbaa !20
  %.val946 = load ptr, ptr %i.vy, align 8, !tbaa !46
  %i.aad = getelementptr i8, ptr %i.vy, i64 12
  %.val947 = load i32, ptr %i.aad, align 4, !tbaa !95
  %i.aae = getelementptr i8, ptr %.val946, i64 16
  %.val946.val = load ptr, ptr %i.aae, align 8, !tbaa !48
  %i.aaf = tail call ptr @Abc_NamStr(ptr noundef %.val946.val, i32 noundef %.val947) #17 ; 2 uses
  %i.aag = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aaf) #20 ; 2 uses
  %i.aah = trunc i64 %i.aag to i32
  %i.aai = icmp sgt i32 %i.aah, 0
  br i1 %i.aai, label %.lr.ph.i1263, label %Vec_StrPrintStr.exit1279

.lr.ph.i1263:                                     ; preds = %Vec_StrPush.exit.i1251.1
  %wide.trip.count.i1264 = and i64 %i.aag, 2147483647
  br label %bb.io

bb.io:                                            ; preds = %Vec_StrPush.exit.i1268, %.lr.ph.i1263
  %indvars.iv.i1265 = phi i64 [ 0, %.lr.ph.i1263 ], [ %indvars.iv.next.i1269, %Vec_StrPush.exit.i1268 ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %indvars.iv.i1265
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !20
  %i.aal = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.aam = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aan = icmp eq i32 %i.aal, %i.aam
  br i1 %i.aan, label %bb.ip, label %.Vec_StrPush.exit_crit_edge.i1266

.Vec_StrPush.exit_crit_edge.i1266:                ; preds = %bb.io
  %.pre.i1267 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1268

bb.ip:                                            ; preds = %bb.io
  %i.aao = icmp slt i32 %i.aal, 16
  br i1 %i.aao, label %bb.iq, label %bb.it

bb.iq:                                            ; preds = %bb.ip
  %i.aap = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1278 = icmp eq ptr %i.aap, null
  br i1 %.not9.i.i.i1278, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aaq = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.aap, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1275

bb.is:                                            ; preds = %bb.iq
  %i.aar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1275

bb.it:                                            ; preds = %bb.ip
  %i.aas = icmp samesign ult i32 %i.aal, 1073741823
  %i.aat = shl nuw nsw i32 %i.aal, 1
  %spec.select.i.i1271 = select i1 %i.aas, i32 %i.aat, i32 2147483647 ; 4 uses
  %.not.i9.i.i1272 = icmp samesign ult i32 %i.aal, %spec.select.i.i1271
  %.pre8.i1273 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1272, label %bb.iu, label %Vec_StrPush.exit.i1268

bb.iu:                                            ; preds = %bb.it
  %.not9.i10.i.i1274 = icmp eq ptr %.pre8.i1273, null
  %i.aau = zext nneg i32 %spec.select.i.i1271 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1274, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aav = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1273, i64 noundef %i.aau) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1275

bb.iw:                                            ; preds = %bb.iu
  %i.aaw = tail call noalias ptr @malloc(i64 noundef %i.aau) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1275

Vec_StrGrow.exit11.sink.split.i.i1275:            ; preds = %bb.iw, %bb.iv, %bb.is, %bb.ir
  %i.aax = phi ptr [ %i.aar, %bb.is ], [ %i.aaq, %bb.ir ], [ %i.aav, %bb.iv ], [ %i.aaw, %bb.iw ] ; 2 uses
  %spec.select.sink.i.i1276 = phi i32 [ 16, %bb.is ], [ 16, %bb.ir ], [ %spec.select.i.i1271, %bb.iv ], [ %spec.select.i.i1271, %bb.iw ]
  store ptr %i.aax, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1276, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1277 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1268

Vec_StrPush.exit.i1268:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1275, %bb.it, %.Vec_StrPush.exit_crit_edge.i1266
  %i.aay = phi i32 [ %i.aal, %.Vec_StrPush.exit_crit_edge.i1266 ], [ %i.aal, %bb.it ], [ %.pre9.i1277, %Vec_StrGrow.exit11.sink.split.i.i1275 ] ; 2 uses
  %i.aaz = phi ptr [ %.pre.i1267, %.Vec_StrPush.exit_crit_edge.i1266 ], [ %.pre8.i1273, %bb.it ], [ %i.aax, %Vec_StrGrow.exit11.sink.split.i.i1275 ]
  %i.aba = add nsw i32 %i.aay, 1
  store i32 %i.aba, ptr %i.da, align 4, !tbaa !23
  %i.abb = sext i32 %i.aay to i64
  %i.abc = getelementptr inbounds i8, ptr %i.aaz, i64 %i.abb
  store i8 %i.aak, ptr %i.abc, align 1, !tbaa !20
  %indvars.iv.next.i1269 = add nuw nsw i64 %indvars.iv.i1265, 1 ; 2 uses
  %exitcond.not.i1270 = icmp eq i64 %indvars.iv.next.i1269, %wide.trip.count.i1264
  br i1 %exitcond.not.i1270, label %Vec_StrPrintStr.exit1279, label %bb.io, !llvm.loop !2

Vec_StrPrintStr.exit1279:                         ; preds = %Vec_StrPush.exit.i1268, %Vec_StrPush.exit.i1251.1
  %i.abd = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.abe = load i32, ptr %i.b, align 8, !tbaa !24
  %i.abf = icmp eq i32 %i.abd, %i.abe
  br i1 %i.abf, label %bb.ix, label %Vec_StrPrintStr.exit1279.Vec_StrPush.exit1287_crit_edge

Vec_StrPrintStr.exit1279.Vec_StrPush.exit1287_crit_edge: ; preds = %Vec_StrPrintStr.exit1279
  %.pre3132 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit1287

bb.ix:                                            ; preds = %Vec_StrPrintStr.exit1279
  %i.abg = icmp slt i32 %i.abd, 16
  br i1 %i.abg, label %bb.iy, label %bb.jb

bb.iy:                                            ; preds = %bb.ix
  %i.abh = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i1285 = icmp eq ptr %i.abh, null
  br i1 %.not9.i.i1285, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.abi = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.abh, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i1283

bb.ja:                                            ; preds = %bb.iy
  %i.abj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i1283

bb.jb:                                            ; preds = %bb.ix
  %i.abk = icmp samesign ult i32 %i.abd, 1073741823
  %i.abl = shl nuw nsw i32 %i.abd, 1
  %spec.select.i1280 = select i1 %i.abk, i32 %i.abl, i32 2147483647 ; 4 uses
  %.not.i9.i1281 = icmp samesign ult i32 %i.abd, %spec.select.i1280
  %.pre3133 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i1281, label %bb.jc, label %Vec_StrPush.exit1287

bb.jc:                                            ; preds = %bb.jb
  %.not9.i10.i1282 = icmp eq ptr %.pre3133, null
  %i.abm = zext nneg i32 %spec.select.i1280 to i64 ; 2 uses
  br i1 %.not9.i10.i1282, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.abn = tail call ptr @realloc(ptr noundef nonnull %.pre3133, i64 noundef %i.abm) #18
  br label %Vec_StrGrow.exit11.sink.split.i1283

bb.je:                                            ; preds = %bb.jc
  %i.abo = tail call noalias ptr @malloc(i64 noundef %i.abm) #19
  br label %Vec_StrGrow.exit11.sink.split.i1283

Vec_StrGrow.exit11.sink.split.i1283:              ; preds = %bb.jd, %bb.je, %bb.iz, %bb.ja
  %i.abp = phi ptr [ %i.abj, %bb.ja ], [ %i.abi, %bb.iz ], [ %i.abn, %bb.jd ], [ %i.abo, %bb.je ] ; 2 uses
  %spec.select.sink.i1284 = phi i32 [ 16, %bb.ja ], [ 16, %bb.iz ], [ %spec.select.i1280, %bb.jd ], [ %spec.select.i1280, %bb.je ]
  store ptr %i.abp, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i1284, ptr %i.b, align 8, !tbaa !24
  %.pre3134 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit1287

Vec_StrPush.exit1287:                             ; preds = %Vec_StrPrintStr.exit1279.Vec_StrPush.exit1287_crit_edge, %bb.jb, %Vec_StrGrow.exit11.sink.split.i1283
  %i.abq = phi i32 [ %i.abd, %Vec_StrPrintStr.exit1279.Vec_StrPush.exit1287_crit_edge ], [ %i.abd, %bb.jb ], [ %.pre3134, %Vec_StrGrow.exit11.sink.split.i1283 ] ; 2 uses
  %i.abr = phi ptr [ %.pre3132, %Vec_StrPrintStr.exit1279.Vec_StrPush.exit1287_crit_edge ], [ %.pre3133, %bb.jb ], [ %i.abp, %Vec_StrGrow.exit11.sink.split.i1283 ]
  %i.abs = add nsw i32 %i.abq, 1
  store i32 %i.abs, ptr %i.da, align 4, !tbaa !23
  %i.abt = sext i32 %i.abq to i64
  %i.abu = getelementptr inbounds i8, ptr %i.abr, i64 %i.abt
  store i8 32, ptr %i.abu, align 1, !tbaa !20
  %i.abv = load i32, ptr %i.tv, align 4, !tbaa !26 ; 3 uses
  %i.abw = sext i32 %i.abv to i64                 ; 3 uses
  %.not.i.not.i.i1288 = icmp slt i64 %indvars.iv3111, %i.abw
  br i1 %.not.i.not.i.i1288, label %Cba_ObjName.exit1304, label %bb.jf

bb.jf:                                            ; preds = %Vec_StrPush.exit1287
  %i.abx = load i32, ptr %i.tu, align 8, !tbaa !42 ; 4 uses
  %i.aby = shl nsw i32 %i.abx, 1                  ; 2 uses
  %i.abz = sext i32 %i.aby to i64
  %.not.i.i1289 = icmp slt i64 %indvars.iv3111, %i.abz
  br i1 %.not.i.i1289, label %bb.jk, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aca = load ptr, ptr %i.tw, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i1291 = icmp eq ptr %i.aca, null
  %i.acb = shl nuw nsw i64 %.pre3200.a, 2         ; 2 uses
  br i1 %.not9.i.i.i.i1291, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.acc = tail call ptr @realloc(ptr noundef nonnull %i.aca, i64 noundef %i.acb) #18
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jg
  %i.acd = tail call noalias ptr @malloc(i64 noundef %i.acb) #19
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.ace = phi ptr [ %i.acc, %bb.jh ], [ %i.acd, %bb.ji ]
  store ptr %i.ace, ptr %i.tw, align 8, !tbaa !27
  %i.acf = trunc nuw nsw i64 %.pre3200.a to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i1292

bb.jk:                                            ; preds = %bb.jf
  %i.acg = sext i32 %i.abx to i64
  %.not.i.i.not.i.i1290 = icmp slt i64 %indvars.iv3111, %i.acg
  br i1 %.not.i.i.not.i.i1290, label %Vec_IntGrow.exit.i.i.i1295, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.ach = icmp slt i32 %i.abx, 1073741823
  %spec.select.i.i.i1301 = select i1 %i.ach, i32 %i.aby, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i1302 = icmp slt i32 %i.abx, %spec.select.i.i.i1301
  br i1 %.not.i22.i.i.i1302, label %bb.jm, label %Vec_IntGrow.exit.i.i.i1295

bb.jm:                                            ; preds = %bb.jl
  %i.aci = load ptr, ptr %i.tw, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i1303 = icmp eq ptr %i.aci, null
  %i.acj = sext i32 %spec.select.i.i.i1301 to i64
  %i.ack = shl nuw nsw i64 %i.acj, 2              ; 2 uses
  br i1 %.not9.i23.i.i.i1303, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.acl = tail call ptr @realloc(ptr noundef nonnull %i.aci, i64 noundef %i.ack) #18
  br label %bb.jp
end_hunk_1
begin_hunk_2_@Cba_ManWriteVerilogNtk:bb.a
  %.not826 = icmp eq i32 %i.ahf, %i.ahg
  %i.ahh = select i1 %.not826, ptr @.str.2, ptr @.str.58
  %.val873 = load ptr, ptr %i.agz, align 8, !tbaa !27
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %.val873, i64 %indvars.iv3099
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !28
  %i.ahk = tail call ptr @Cba_ObjGetName(ptr noundef nonnull %i.vy, i32 noundef %i.ahj)
  %i.ahl = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.ahh, ptr noundef %i.ahk) ; 0 uses
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %.17763035, i32 noundef 0, i32 noundef 1)
  %i.ahm = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ahn = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aho = icmp eq i32 %i.ahm, %i.ahn
  br i1 %i.aho, label %bb.ky, label %.Vec_StrPush.exit1337_crit_edge

.Vec_StrPush.exit1337_crit_edge:                  ; preds = %bb.kx
  %.pre3141 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit1337

bb.ky:                                            ; preds = %bb.kx
  %i.ahp = icmp slt i32 %i.ahm, 16
  br i1 %i.ahp, label %bb.kz, label %bb.lc

bb.kz:                                            ; preds = %bb.ky
  %i.ahq = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i1335 = icmp eq ptr %i.ahq, null
  br i1 %.not9.i.i1335, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ahr = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ahq, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i1333

bb.lb:                                            ; preds = %bb.kz
  %i.ahs = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i1333

bb.lc:                                            ; preds = %bb.ky
  %i.aht = icmp samesign ult i32 %i.ahm, 1073741823
  %i.ahu = shl nuw nsw i32 %i.ahm, 1
  %spec.select.i1330 = select i1 %i.aht, i32 %i.ahu, i32 2147483647 ; 4 uses
  %.not.i9.i1331 = icmp samesign ult i32 %i.ahm, %spec.select.i1330
  %.pre3142 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i1331, label %bb.ld, label %Vec_StrPush.exit1337

bb.ld:                                            ; preds = %bb.lc
  %.not9.i10.i1332 = icmp eq ptr %.pre3142, null
  %i.ahv = zext nneg i32 %spec.select.i1330 to i64 ; 2 uses
  br i1 %.not9.i10.i1332, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ahw = tail call ptr @realloc(ptr noundef nonnull %.pre3142, i64 noundef %i.ahv) #18
  br label %Vec_StrGrow.exit11.sink.split.i1333

bb.lf:                                            ; preds = %bb.ld
  %i.ahx = tail call noalias ptr @malloc(i64 noundef %i.ahv) #19
  br label %Vec_StrGrow.exit11.sink.split.i1333

Vec_StrGrow.exit11.sink.split.i1333:              ; preds = %bb.le, %bb.lf, %bb.la, %bb.lb
  %storemerge2993 = phi ptr [ %i.ahs, %bb.lb ], [ %i.ahr, %bb.la ], [ %i.ahw, %bb.le ], [ %i.ahx, %bb.lf ] ; 2 uses
  %spec.select.sink.i1334 = phi i32 [ 16, %bb.lb ], [ 16, %bb.la ], [ %spec.select.i1330, %bb.le ], [ %spec.select.i1330, %bb.lf ]
  store ptr %storemerge2993, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i1334, ptr %i.b, align 8, !tbaa !24
  %.pre3143 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit1337

Vec_StrPush.exit1337:                             ; preds = %.Vec_StrPush.exit1337_crit_edge, %bb.lc, %Vec_StrGrow.exit11.sink.split.i1333
  %i.ahy = phi i32 [ %i.ahm, %.Vec_StrPush.exit1337_crit_edge ], [ %i.ahm, %bb.lc ], [ %.pre3143, %Vec_StrGrow.exit11.sink.split.i1333 ] ; 2 uses
  %i.ahz = phi ptr [ %.pre3141, %.Vec_StrPush.exit1337_crit_edge ], [ %.pre3142, %bb.lc ], [ %storemerge2993, %Vec_StrGrow.exit11.sink.split.i1333 ]
  %i.aia = add nsw i32 %i.ahy, 1
  store i32 %i.aia, ptr %i.da, align 4, !tbaa !23
  %i.aib = sext i32 %i.ahy to i64
  %i.aic = getelementptr inbounds i8, ptr %i.ahz, i64 %i.aib
  store i8 41, ptr %i.aic, align 1, !tbaa !20
  %i.aid = add nsw i32 %.17763035, 1              ; 2 uses
  %indvars.iv.next3100 = add nuw nsw i64 %indvars.iv3099, 1
  %.val967 = load ptr, ptr %i.to, align 8, !tbaa !27
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %.val967, i64 %.pre3200.a
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !28
  %i.aig = icmp slt i32 %i.aid, %i.aif
  br i1 %i.aig, label %bb.kx, label %.lr.ph.i1338.preheader, !llvm.loop !76

.Vec_StrPush.exit_crit_edge.i1341:                ; preds = %.lr.ph.i1338.preheader
  %.pre.i1342 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1343

bb.lg:                                            ; preds = %.lr.ph.i1338.preheader
  %i.aih = icmp slt i32 %i.aha, 16
  br i1 %i.aih, label %bb.lh, label %bb.lk

bb.lh:                                            ; preds = %bb.lg
  %i.aii = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1353 = icmp eq ptr %i.aii, null
  br i1 %.not9.i.i.i1353, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.aij = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.aii, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1350

bb.lj:                                            ; preds = %bb.lh
  %i.aik = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1350

bb.lk:                                            ; preds = %bb.lg
  %i.ail = icmp samesign ult i32 %i.aha, 1073741823
  %i.aim = shl nuw nsw i32 %i.aha, 1
  %spec.select.i.i1346 = select i1 %i.ail, i32 %i.aim, i32 2147483647 ; 4 uses
  %.not.i9.i.i1347 = icmp samesign ult i32 %i.aha, %spec.select.i.i1346
  %.pre8.i1348 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1347, label %bb.ll, label %Vec_StrPush.exit.i1343

bb.ll:                                            ; preds = %bb.lk
  %.not9.i10.i.i1349 = icmp eq ptr %.pre8.i1348, null
  %i.ain = zext nneg i32 %spec.select.i.i1346 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1349, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aio = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1348, i64 noundef %i.ain) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1350

bb.ln:                                            ; preds = %bb.ll
  %i.aip = tail call noalias ptr @malloc(i64 noundef %i.ain) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1350

Vec_StrGrow.exit11.sink.split.i.i1350:            ; preds = %bb.ln, %bb.lm, %bb.lj, %bb.li
  %i.aiq = phi ptr [ %i.aik, %bb.lj ], [ %i.aij, %bb.li ], [ %i.aio, %bb.lm ], [ %i.aip, %bb.ln ] ; 2 uses
  %spec.select.sink.i.i1351 = phi i32 [ 16, %bb.lj ], [ 16, %bb.li ], [ %spec.select.i.i1346, %bb.lm ], [ %spec.select.i.i1346, %bb.ln ]
  store ptr %i.aiq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1351, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1352 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1343

Vec_StrPush.exit.i1343:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1350, %bb.lk, %.Vec_StrPush.exit_crit_edge.i1341
  %i.air = phi i32 [ %i.aha, %.Vec_StrPush.exit_crit_edge.i1341 ], [ %i.aha, %bb.lk ], [ %.pre9.i1352, %Vec_StrGrow.exit11.sink.split.i.i1350 ] ; 2 uses
  %i.ais = phi ptr [ %.pre.i1342, %.Vec_StrPush.exit_crit_edge.i1341 ], [ %.pre8.i1348, %bb.lk ], [ %i.aiq, %Vec_StrGrow.exit11.sink.split.i.i1350 ]
  %i.ait = add nsw i32 %i.air, 1
  store i32 %i.ait, ptr %i.da, align 4, !tbaa !23
  %i.aiu = sext i32 %i.air to i64
  %i.aiv = getelementptr inbounds i8, ptr %i.ais, i64 %i.aiu
  store i8 41, ptr %i.aiv, align 1, !tbaa !20
  %i.aiw = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.aix = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aiy = icmp eq i32 %i.aiw, %i.aix
  br i1 %i.aiy, label %bb.lo, label %.Vec_StrPush.exit_crit_edge.i1341.1

.Vec_StrPush.exit_crit_edge.i1341.1:              ; preds = %Vec_StrPush.exit.i1343
  %.pre.i1342.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1354

bb.lo:                                            ; preds = %Vec_StrPush.exit.i1343
  %i.aiz = icmp slt i32 %i.aiw, 16
  br i1 %i.aiz, label %bb.lt, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aja = icmp samesign ult i32 %i.aiw, 1073741823
  %i.ajb = shl nuw nsw i32 %i.aiw, 1
  %spec.select.i.i1346.1 = select i1 %i.aja, i32 %i.ajb, i32 2147483647 ; 4 uses
  %.not.i9.i.i1347.1 = icmp samesign ult i32 %i.aiw, %spec.select.i.i1346.1
  %.pre8.i1348.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1347.1, label %bb.lq, label %Vec_StrPrintStr.exit1354

bb.lq:                                            ; preds = %bb.lp
  %.not9.i10.i.i1349.1 = icmp eq ptr %.pre8.i1348.1, null
  %i.ajc = zext nneg i32 %spec.select.i.i1346.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1349.1, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.ajd = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1348.1, i64 noundef %i.ajc) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1350.1

bb.ls:                                            ; preds = %bb.lq
  %i.aje = tail call noalias ptr @malloc(i64 noundef %i.ajc) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1350.1

bb.lt:                                            ; preds = %bb.lo
  %i.ajf = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1353.1 = icmp eq ptr %i.ajf, null
  br i1 %.not9.i.i.i1353.1, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.ajg = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ajf, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1350.1

bb.lv:                                            ; preds = %bb.lt
  %i.ajh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1350.1

Vec_StrGrow.exit11.sink.split.i.i1350.1:          ; preds = %bb.lv, %bb.lu, %bb.ls, %bb.lr
  %i.aji = phi ptr [ %i.ajh, %bb.lv ], [ %i.ajg, %bb.lu ], [ %i.ajd, %bb.lr ], [ %i.aje, %bb.ls ] ; 2 uses
  %spec.select.sink.i.i1351.1 = phi i32 [ 16, %bb.lv ], [ 16, %bb.lu ], [ %spec.select.i.i1346.1, %bb.lr ], [ %spec.select.i.i1346.1, %bb.ls ]
  store ptr %i.aji, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1351.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1352.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.lw:                                            ; preds = %bb.gl, %bb.gl, %bb.gl
  %i.ajj = icmp eq i8 %i.ul, 77
  %i.ajk = icmp eq i8 %i.ul, 79
  %i.ajl = select i1 %i.ajj, i64 1, i64 2
  %i.ajm = select i1 %i.ajk, i64 0, i64 %i.ajl    ; 3 uses
  %.val966 = load ptr, ptr %i.to, align 8, !tbaa !27
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.val966, i64 %indvars.iv3111
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !28 ; 5 uses
  %.val984 = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.ajp = ashr i32 %i.ajo, 5
  %i.ajq = sext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds [4 x i8], ptr %.val984, i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !28
  %i.ajt = and i32 %i.ajo, 31
  %i.aju = shl nuw i32 1, %i.ajt
  %i.ajv = and i32 %i.ajs, %i.aju
  %.not819 = icmp eq i32 %i.ajv, 0
  br i1 %.not819, label %.lr.ph.i1372, label %.lr.ph.i1355

.lr.ph.i1355:                                     ; preds = %bb.lw, %Vec_StrPush.exit.i1360
  %indvars.iv.i1357 = phi i64 [ %indvars.iv.next.i1361, %Vec_StrPush.exit.i1360 ], [ 0, %bb.lw ] ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr @.str.105, i64 %indvars.iv.i1357
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !20
  %i.ajy = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ajz = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aka = icmp eq i32 %i.ajy, %i.ajz
  br i1 %i.aka, label %bb.lx, label %.Vec_StrPush.exit_crit_edge.i1358

.Vec_StrPush.exit_crit_edge.i1358:                ; preds = %.lr.ph.i1355
  %.pre.i1359 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1360

bb.lx:                                            ; preds = %.lr.ph.i1355
  %i.akb = icmp slt i32 %i.ajy, 16
  br i1 %i.akb, label %bb.ly, label %bb.mb

bb.ly:                                            ; preds = %bb.lx
  %i.akc = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1370 = icmp eq ptr %i.akc, null
  br i1 %.not9.i.i.i1370, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.akd = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.akc, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1367

bb.ma:                                            ; preds = %bb.ly
  %i.ake = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1367

bb.mb:                                            ; preds = %bb.lx
  %i.akf = icmp samesign ult i32 %i.ajy, 1073741823
  %i.akg = shl nuw nsw i32 %i.ajy, 1
  %spec.select.i.i1363 = select i1 %i.akf, i32 %i.akg, i32 2147483647 ; 4 uses
  %.not.i9.i.i1364 = icmp samesign ult i32 %i.ajy, %spec.select.i.i1363
  %.pre8.i1365 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1364, label %bb.mc, label %Vec_StrPush.exit.i1360

bb.mc:                                            ; preds = %bb.mb
  %.not9.i10.i.i1366 = icmp eq ptr %.pre8.i1365, null
  %i.akh = zext nneg i32 %spec.select.i.i1363 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1366, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.aki = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1365, i64 noundef %i.akh) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1367

bb.me:                                            ; preds = %bb.mc
  %i.akj = tail call noalias ptr @malloc(i64 noundef %i.akh) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1367

Vec_StrGrow.exit11.sink.split.i.i1367:            ; preds = %bb.me, %bb.md, %bb.ma, %bb.lz
  %i.akk = phi ptr [ %i.ake, %bb.ma ], [ %i.akd, %bb.lz ], [ %i.aki, %bb.md ], [ %i.akj, %bb.me ] ; 2 uses
  %spec.select.sink.i.i1368 = phi i32 [ 16, %bb.ma ], [ 16, %bb.lz ], [ %spec.select.i.i1363, %bb.md ], [ %spec.select.i.i1363, %bb.me ]
  store ptr %i.akk, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1368, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1369 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1360

Vec_StrPush.exit.i1360:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1367, %bb.mb, %.Vec_StrPush.exit_crit_edge.i1358
  %i.akl = phi i32 [ %i.ajy, %.Vec_StrPush.exit_crit_edge.i1358 ], [ %i.ajy, %bb.mb ], [ %.pre9.i1369, %Vec_StrGrow.exit11.sink.split.i.i1367 ] ; 2 uses
  %i.akm = phi ptr [ %.pre.i1359, %.Vec_StrPush.exit_crit_edge.i1358 ], [ %.pre8.i1365, %bb.mb ], [ %i.akk, %Vec_StrGrow.exit11.sink.split.i.i1367 ]
  %i.akn = add nsw i32 %i.akl, 1
  store i32 %i.akn, ptr %i.da, align 4, !tbaa !23
  %i.ako = sext i32 %i.akl to i64
  %i.akp = getelementptr inbounds i8, ptr %i.akm, i64 %i.ako
  store i8 %i.ajx, ptr %i.akp, align 1, !tbaa !20
  %indvars.iv.next.i1361 = add nuw nsw i64 %indvars.iv.i1357, 1 ; 2 uses
  %exitcond.not.i1362 = icmp eq i64 %indvars.iv.next.i1361, 9
  br i1 %exitcond.not.i1362, label %Vec_StrPrintStr.exit1371, label %.lr.ph.i1355, !llvm.loop !2

.lr.ph.i1372:                                     ; preds = %bb.lw, %Vec_StrPush.exit.i1377
  %indvars.iv.i1374 = phi i64 [ %indvars.iv.next.i1378, %Vec_StrPush.exit.i1377 ], [ 0, %bb.lw ] ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr @.str.84, i64 %indvars.iv.i1374
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !20
  %i.aks = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.akt = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aku = icmp eq i32 %i.aks, %i.akt
  br i1 %i.aku, label %bb.mf, label %.Vec_StrPush.exit_crit_edge.i1375

.Vec_StrPush.exit_crit_edge.i1375:                ; preds = %.lr.ph.i1372
  %.pre.i1376 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1377

bb.mf:                                            ; preds = %.lr.ph.i1372
  %i.akv = icmp slt i32 %i.aks, 16
  br i1 %i.akv, label %bb.mg, label %bb.mj

bb.mg:                                            ; preds = %bb.mf
  %i.akw = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1387 = icmp eq ptr %i.akw, null
  br i1 %.not9.i.i.i1387, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.akx = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.akw, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1384

bb.mi:                                            ; preds = %bb.mg
  %i.aky = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1384

bb.mj:                                            ; preds = %bb.mf
  %i.akz = icmp samesign ult i32 %i.aks, 1073741823
  %i.ala = shl nuw nsw i32 %i.aks, 1
  %spec.select.i.i1380 = select i1 %i.akz, i32 %i.ala, i32 2147483647 ; 4 uses
  %.not.i9.i.i1381 = icmp samesign ult i32 %i.aks, %spec.select.i.i1380
  %.pre8.i1382 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1381, label %bb.mk, label %Vec_StrPush.exit.i1377

bb.mk:                                            ; preds = %bb.mj
  %.not9.i10.i.i1383 = icmp eq ptr %.pre8.i1382, null
  %i.alb = zext nneg i32 %spec.select.i.i1380 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1383, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.alc = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1382, i64 noundef %i.alb) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1384

bb.mm:                                            ; preds = %bb.mk
  %i.ald = tail call noalias ptr @malloc(i64 noundef %i.alb) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1384

Vec_StrGrow.exit11.sink.split.i.i1384:            ; preds = %bb.mm, %bb.ml, %bb.mi, %bb.mh
  %i.ale = phi ptr [ %i.aky, %bb.mi ], [ %i.akx, %bb.mh ], [ %i.alc, %bb.ml ], [ %i.ald, %bb.mm ] ; 2 uses
  %spec.select.sink.i.i1385 = phi i32 [ 16, %bb.mi ], [ 16, %bb.mh ], [ %spec.select.i.i1380, %bb.ml ], [ %spec.select.i.i1380, %bb.mm ]
  store ptr %i.ale, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1385, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1386 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1377

Vec_StrPush.exit.i1377:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1384, %bb.mj, %.Vec_StrPush.exit_crit_edge.i1375
  %i.alf = phi i32 [ %i.aks, %.Vec_StrPush.exit_crit_edge.i1375 ], [ %i.aks, %bb.mj ], [ %.pre9.i1386, %Vec_StrGrow.exit11.sink.split.i.i1384 ] ; 2 uses
  %i.alg = phi ptr [ %.pre.i1376, %.Vec_StrPush.exit_crit_edge.i1375 ], [ %.pre8.i1382, %bb.mj ], [ %i.ale, %Vec_StrGrow.exit11.sink.split.i.i1384 ]
  %i.alh = add nsw i32 %i.alf, 1
  store i32 %i.alh, ptr %i.da, align 4, !tbaa !23
  %i.ali = sext i32 %i.alf to i64
  %i.alj = getelementptr inbounds i8, ptr %i.alg, i64 %i.ali
  store i8 %i.akr, ptr %i.alj, align 1, !tbaa !20
  %indvars.iv.next.i1378 = add nuw nsw i64 %indvars.iv.i1374, 1 ; 2 uses
  %exitcond.not.i1379 = icmp eq i64 %indvars.iv.next.i1378, 7
  br i1 %exitcond.not.i1379, label %Vec_StrPrintStr.exit1388, label %.lr.ph.i1372, !llvm.loop !2

Vec_StrPrintStr.exit1388:                         ; preds = %Vec_StrPush.exit.i1377
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.ajo)
  br label %Vec_StrPrintStr.exit1371

Vec_StrPrintStr.exit1371:                         ; preds = %Vec_StrPush.exit.i1360, %Vec_StrPrintStr.exit1388
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.ajo, i32 noundef 0, i32 noundef 0)
  %i.alk = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.all = load i32, ptr %i.b, align 8, !tbaa !24
  %i.alm = icmp eq i32 %i.alk, %i.all
  br i1 %i.alm, label %bb.mn, label %.Vec_StrPush.exit_crit_edge.i1392

.Vec_StrPush.exit_crit_edge.i1392:                ; preds = %Vec_StrPrintStr.exit1371
  %.pre.i1393 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1394

bb.mn:                                            ; preds = %Vec_StrPrintStr.exit1371
  %i.aln = icmp slt i32 %i.alk, 16
  br i1 %i.aln, label %bb.mo, label %bb.mr

bb.mo:                                            ; preds = %bb.mn
  %i.alo = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1404 = icmp eq ptr %i.alo, null
  br i1 %.not9.i.i.i1404, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.alp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.alo, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1401

bb.mq:                                            ; preds = %bb.mo
  %i.alq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1401

bb.mr:                                            ; preds = %bb.mn
  %i.alr = icmp samesign ult i32 %i.alk, 1073741823
  %i.als = shl nuw nsw i32 %i.alk, 1
  %spec.select.i.i1397 = select i1 %i.alr, i32 %i.als, i32 2147483647 ; 4 uses
  %.not.i9.i.i1398 = icmp samesign ult i32 %i.alk, %spec.select.i.i1397
  %.pre8.i1399 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1398, label %bb.ms, label %Vec_StrPush.exit.i1394

bb.ms:                                            ; preds = %bb.mr
  %.not9.i10.i.i1400 = icmp eq ptr %.pre8.i1399, null
  %i.alt = zext nneg i32 %spec.select.i.i1397 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1400, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.alu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1399, i64 noundef %i.alt) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1401
end_hunk_2
begin_hunk_3_@Cba_ManWriteVerilogNtk:bb.a
  %i.aqb = phi ptr [ %.pre.i1418, %.Vec_StrPush.exit_crit_edge.i1417 ], [ %.pre8.i1424, %bb.nx ], [ %i.apz, %Vec_StrGrow.exit11.sink.split.i.i1426 ]
  %i.aqc = add nsw i32 %i.aqa, 1
  store i32 %i.aqc, ptr %i.da, align 4, !tbaa !23
  %i.aqd = sext i32 %i.aqa to i64
  %i.aqe = getelementptr inbounds i8, ptr %i.aqb, i64 %i.aqd
  store i8 41, ptr %i.aqe, align 1, !tbaa !20
  %i.aqf = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.aqg = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aqh = icmp eq i32 %i.aqf, %i.aqg
  br i1 %i.aqh, label %bb.ob, label %.Vec_StrPush.exit_crit_edge.i1417.1

.Vec_StrPush.exit_crit_edge.i1417.1:              ; preds = %Vec_StrPush.exit.i1419
  %.pre.i1418.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1419.1

bb.ob:                                            ; preds = %Vec_StrPush.exit.i1419
  %i.aqi = icmp slt i32 %i.aqf, 16
  br i1 %i.aqi, label %bb.og, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.aqj = icmp samesign ult i32 %i.aqf, 1073741823
  %i.aqk = shl nuw nsw i32 %i.aqf, 1
  %spec.select.i.i1422.1 = select i1 %i.aqj, i32 %i.aqk, i32 2147483647 ; 4 uses
  %.not.i9.i.i1423.1 = icmp samesign ult i32 %i.aqf, %spec.select.i.i1422.1
  %.pre8.i1424.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1423.1, label %bb.od, label %Vec_StrPush.exit.i1419.1

bb.od:                                            ; preds = %bb.oc
  %.not9.i10.i.i1425.1 = icmp eq ptr %.pre8.i1424.1, null
  %i.aql = zext nneg i32 %spec.select.i.i1422.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1425.1, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.aqm = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1424.1, i64 noundef %i.aql) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.1

bb.of:                                            ; preds = %bb.od
  %i.aqn = tail call noalias ptr @malloc(i64 noundef %i.aql) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.1

bb.og:                                            ; preds = %bb.ob
  %i.aqo = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1429.1 = icmp eq ptr %i.aqo, null
  br i1 %.not9.i.i.i1429.1, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.aqp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.aqo, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.1

bb.oi:                                            ; preds = %bb.og
  %i.aqq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.1

Vec_StrGrow.exit11.sink.split.i.i1426.1:          ; preds = %bb.oi, %bb.oh, %bb.of, %bb.oe
  %i.aqr = phi ptr [ %i.aqq, %bb.oi ], [ %i.aqp, %bb.oh ], [ %i.aqm, %bb.oe ], [ %i.aqn, %bb.of ] ; 2 uses
  %spec.select.sink.i.i1427.1 = phi i32 [ 16, %bb.oi ], [ 16, %bb.oh ], [ %spec.select.i.i1422.1, %bb.oe ], [ %spec.select.i.i1422.1, %bb.of ]
  store ptr %i.aqr, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1427.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1428.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1419.1

Vec_StrPush.exit.i1419.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1426.1, %bb.oc, %.Vec_StrPush.exit_crit_edge.i1417.1
  %i.aqs = phi i32 [ %i.aqf, %.Vec_StrPush.exit_crit_edge.i1417.1 ], [ %i.aqf, %bb.oc ], [ %.pre9.i1428.1, %Vec_StrGrow.exit11.sink.split.i.i1426.1 ] ; 2 uses
  %i.aqt = phi ptr [ %.pre.i1418.1, %.Vec_StrPush.exit_crit_edge.i1417.1 ], [ %.pre8.i1424.1, %bb.oc ], [ %i.aqr, %Vec_StrGrow.exit11.sink.split.i.i1426.1 ]
  %i.aqu = add nsw i32 %i.aqs, 1
  store i32 %i.aqu, ptr %i.da, align 4, !tbaa !23
  %i.aqv = sext i32 %i.aqs to i64
  %i.aqw = getelementptr inbounds i8, ptr %i.aqt, i64 %i.aqv
  store i8 32, ptr %i.aqw, align 1, !tbaa !20
  %i.aqx = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.aqy = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aqz = icmp eq i32 %i.aqx, %i.aqy
  br i1 %i.aqz, label %bb.oj, label %.Vec_StrPush.exit_crit_edge.i1417.2

.Vec_StrPush.exit_crit_edge.i1417.2:              ; preds = %Vec_StrPush.exit.i1419.1
  %.pre.i1418.2 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1419.2

bb.oj:                                            ; preds = %Vec_StrPush.exit.i1419.1
  %i.ara = icmp slt i32 %i.aqx, 16
  br i1 %i.ara, label %bb.oo, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.arb = icmp samesign ult i32 %i.aqx, 1073741823
  %i.arc = shl nuw nsw i32 %i.aqx, 1
  %spec.select.i.i1422.2 = select i1 %i.arb, i32 %i.arc, i32 2147483647 ; 4 uses
  %.not.i9.i.i1423.2 = icmp samesign ult i32 %i.aqx, %spec.select.i.i1422.2
  %.pre8.i1424.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1423.2, label %bb.ol, label %Vec_StrPush.exit.i1419.2

bb.ol:                                            ; preds = %bb.ok
  %.not9.i10.i.i1425.2 = icmp eq ptr %.pre8.i1424.2, null
  %i.ard = zext nneg i32 %spec.select.i.i1422.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1425.2, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.are = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1424.2, i64 noundef %i.ard) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.2

bb.on:                                            ; preds = %bb.ol
  %i.arf = tail call noalias ptr @malloc(i64 noundef %i.ard) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.2

bb.oo:                                            ; preds = %bb.oj
  %i.arg = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1429.2 = icmp eq ptr %i.arg, null
  br i1 %.not9.i.i.i1429.2, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.arh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.arg, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.2

bb.oq:                                            ; preds = %bb.oo
  %i.ari = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.2

Vec_StrGrow.exit11.sink.split.i.i1426.2:          ; preds = %bb.oq, %bb.op, %bb.on, %bb.om
  %i.arj = phi ptr [ %i.ari, %bb.oq ], [ %i.arh, %bb.op ], [ %i.are, %bb.om ], [ %i.arf, %bb.on ] ; 2 uses
  %spec.select.sink.i.i1427.2 = phi i32 [ 16, %bb.oq ], [ 16, %bb.op ], [ %spec.select.i.i1422.2, %bb.om ], [ %spec.select.i.i1422.2, %bb.on ]
  store ptr %i.arj, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1427.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1428.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1419.2

Vec_StrPush.exit.i1419.2:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1426.2, %bb.ok, %.Vec_StrPush.exit_crit_edge.i1417.2
  %i.ark = phi i32 [ %i.aqx, %.Vec_StrPush.exit_crit_edge.i1417.2 ], [ %i.aqx, %bb.ok ], [ %.pre9.i1428.2, %Vec_StrGrow.exit11.sink.split.i.i1426.2 ] ; 2 uses
  %i.arl = phi ptr [ %.pre.i1418.2, %.Vec_StrPush.exit_crit_edge.i1417.2 ], [ %.pre8.i1424.2, %bb.ok ], [ %i.arj, %Vec_StrGrow.exit11.sink.split.i.i1426.2 ]
  %i.arm = add nsw i32 %i.ark, 1
  store i32 %i.arm, ptr %i.da, align 4, !tbaa !23
  %i.arn = sext i32 %i.ark to i64
  %i.aro = getelementptr inbounds i8, ptr %i.arl, i64 %i.arn
  store i8 41, ptr %i.aro, align 1, !tbaa !20
  %i.arp = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.arq = load i32, ptr %i.b, align 8, !tbaa !24
  %i.arr = icmp eq i32 %i.arp, %i.arq
  br i1 %i.arr, label %bb.or, label %.Vec_StrPush.exit_crit_edge.i1417.3

.Vec_StrPush.exit_crit_edge.i1417.3:              ; preds = %Vec_StrPush.exit.i1419.2
  %.pre.i1418.3 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1354

bb.or:                                            ; preds = %Vec_StrPush.exit.i1419.2
  %i.ars = icmp slt i32 %i.arp, 16
  br i1 %i.ars, label %bb.ow, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.art = icmp samesign ult i32 %i.arp, 1073741823
  %i.aru = shl nuw nsw i32 %i.arp, 1
  %spec.select.i.i1422.3 = select i1 %i.art, i32 %i.aru, i32 2147483647 ; 4 uses
  %.not.i9.i.i1423.3 = icmp samesign ult i32 %i.arp, %spec.select.i.i1422.3
  %.pre8.i1424.3 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1423.3, label %bb.ot, label %Vec_StrPrintStr.exit1354

bb.ot:                                            ; preds = %bb.os
  %.not9.i10.i.i1425.3 = icmp eq ptr %.pre8.i1424.3, null
  %i.arv = zext nneg i32 %spec.select.i.i1422.3 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1425.3, label %bb.ov, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.arw = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1424.3, i64 noundef %i.arv) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.3

bb.ov:                                            ; preds = %bb.ot
  %i.arx = tail call noalias ptr @malloc(i64 noundef %i.arv) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.3

bb.ow:                                            ; preds = %bb.or
  %i.ary = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1429.3 = icmp eq ptr %i.ary, null
  br i1 %.not9.i.i.i1429.3, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.arz = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ary, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.3

bb.oy:                                            ; preds = %bb.ow
  %i.asa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1426.3

Vec_StrGrow.exit11.sink.split.i.i1426.3:          ; preds = %bb.oy, %bb.ox, %bb.ov, %bb.ou
  %i.asb = phi ptr [ %i.asa, %bb.oy ], [ %i.arz, %bb.ox ], [ %i.arw, %bb.ou ], [ %i.arx, %bb.ov ] ; 2 uses
  %spec.select.sink.i.i1427.3 = phi i32 [ 16, %bb.oy ], [ 16, %bb.ox ], [ %spec.select.i.i1422.3, %bb.ou ], [ %spec.select.i.i1422.3, %bb.ov ]
  store ptr %i.asb, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1427.3, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1428.3 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.oz:                                            ; preds = %bb.gl
  %i.asc = icmp eq i8 %i.ul, 41                   ; 3 uses
  %i.asd = and i8 %i.ul, 126
  %or.cond13 = icmp eq i8 %i.asd, 40
  br i1 %or.cond13, label %bb.pa, label %bb.zy

bb.pa:                                            ; preds = %bb.oz
  %.val988 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %i.ase = getelementptr [4 x i8], ptr %.val988, i64 %indvars.iv3111 ; 2 uses
  %i.asf = getelementptr i8, ptr %i.ase, i64 4
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !28
  %i.ash = load i32, ptr %i.ase, align 4, !tbaa !28 ; 2 uses
  %i.asi = xor i32 %i.ash, -1
  %i.asj = add i32 %i.asg, %i.asi                 ; 3 uses
  %2 = icmp ult i32 %i.asj, 2
  %or.cond3941 = select i1 %i.asc, i1 true, i1 %2
  br i1 %or.cond3941, label %.lr.ph.i1431, label %3

3:                                                ; preds = %bb.pa
  %4 = add i32 %i.asj, -1
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pb, %3
  %.012.i = phi i32 [ 0, %3 ], [ %6, %bb.pb ]
  %.0811.i = phi i32 [ %4, %3 ], [ %5, %bb.pb ]
  %5 = lshr i32 %.0811.i, 1                       ; 2 uses
  %6 = add nuw nsw i32 %.012.i, 1                 ; 2 uses
  %.not.i1431 = icmp eq i32 %5, 0
  br i1 %.not.i1431, label %.lr.ph.i1431, label %bb.pb, !llvm.loop !78

.lr.ph.i1431:                                     ; preds = %bb.pb, %bb.pa
  %i.ask = phi i32 [ %i.asj, %bb.pa ], [ %6, %bb.pb ] ; 4 uses
  %.val938 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.asl = sext i32 %i.ash to i64
  %i.asm = getelementptr inbounds [4 x i8], ptr %.val938, i64 %i.asl
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !28
  %.val965 = load ptr, ptr %i.to, align 8, !tbaa !27
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %.val965, i64 %indvars.iv3111
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !28 ; 9 uses
  br label %bb.pc

bb.pc:                                            ; preds = %Vec_StrPush.exit.i1436, %.lr.ph.i1431
  %indvars.iv.i1433 = phi i64 [ 0, %.lr.ph.i1431 ], [ %indvars.iv.next.i1437, %Vec_StrPush.exit.i1436 ] ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr @.str.108, i64 %indvars.iv.i1433
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !20
  %i.ass = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ast = load i32, ptr %i.b, align 8, !tbaa !24
  %i.asu = icmp eq i32 %i.ass, %i.ast
  br i1 %i.asu, label %bb.pd, label %.Vec_StrPush.exit_crit_edge.i1434

.Vec_StrPush.exit_crit_edge.i1434:                ; preds = %bb.pc
  %.pre.i1435 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1436

bb.pd:                                            ; preds = %bb.pc
  %i.asv = icmp slt i32 %i.ass, 16
  br i1 %i.asv, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.asw = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1446 = icmp eq ptr %i.asw, null
  br i1 %.not9.i.i.i1446, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.asx = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.asw, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1443

bb.pg:                                            ; preds = %bb.pe
  %i.asy = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1443

bb.ph:                                            ; preds = %bb.pd
  %i.asz = icmp samesign ult i32 %i.ass, 1073741823
  %i.ata = shl nuw nsw i32 %i.ass, 1
  %spec.select.i.i1439 = select i1 %i.asz, i32 %i.ata, i32 2147483647 ; 4 uses
  %.not.i9.i.i1440 = icmp samesign ult i32 %i.ass, %spec.select.i.i1439
  %.pre8.i1441 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1440, label %bb.pi, label %Vec_StrPush.exit.i1436

bb.pi:                                            ; preds = %bb.ph
  %.not9.i10.i.i1442 = icmp eq ptr %.pre8.i1441, null
  %i.atb = zext nneg i32 %spec.select.i.i1439 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1442, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.atc = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1441, i64 noundef %i.atb) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1443

bb.pk:                                            ; preds = %bb.pi
  %i.atd = tail call noalias ptr @malloc(i64 noundef %i.atb) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1443

Vec_StrGrow.exit11.sink.split.i.i1443:            ; preds = %bb.pk, %bb.pj, %bb.pg, %bb.pf
  %i.ate = phi ptr [ %i.asy, %bb.pg ], [ %i.asx, %bb.pf ], [ %i.atc, %bb.pj ], [ %i.atd, %bb.pk ] ; 2 uses
  %spec.select.sink.i.i1444 = phi i32 [ 16, %bb.pg ], [ 16, %bb.pf ], [ %spec.select.i.i1439, %bb.pj ], [ %spec.select.i.i1439, %bb.pk ]
  store ptr %i.ate, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1444, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1445 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1436

Vec_StrPush.exit.i1436:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1443, %bb.ph, %.Vec_StrPush.exit_crit_edge.i1434
  %i.atf = phi i32 [ %i.ass, %.Vec_StrPush.exit_crit_edge.i1434 ], [ %i.ass, %bb.ph ], [ %.pre9.i1445, %Vec_StrGrow.exit11.sink.split.i.i1443 ] ; 2 uses
  %i.atg = phi ptr [ %.pre.i1435, %.Vec_StrPush.exit_crit_edge.i1434 ], [ %.pre8.i1441, %bb.ph ], [ %i.ate, %Vec_StrGrow.exit11.sink.split.i.i1443 ]
  %i.ath = add nsw i32 %i.atf, 1
  store i32 %i.ath, ptr %i.da, align 4, !tbaa !23
  %i.ati = sext i32 %i.atf to i64
  %i.atj = getelementptr inbounds i8, ptr %i.atg, i64 %i.ati
  store i8 %i.asr, ptr %i.atj, align 1, !tbaa !20
  %indvars.iv.next.i1437 = add nuw nsw i64 %indvars.iv.i1433, 1 ; 2 uses
  %exitcond.not.i1438 = icmp eq i64 %indvars.iv.next.i1437, 11
  br i1 %exitcond.not.i1438, label %Vec_StrPrintStr.exit1447, label %bb.pc, !llvm.loop !2

Vec_StrPrintStr.exit1447:                         ; preds = %Vec_StrPush.exit.i1436
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.asp)
  %i.atk = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.atl = load i32, ptr %i.b, align 8, !tbaa !24
  %i.atm = icmp eq i32 %i.atk, %i.atl
  br i1 %i.atm, label %bb.pl, label %.Vec_StrPush.exit_crit_edge.i1451

.Vec_StrPush.exit_crit_edge.i1451:                ; preds = %Vec_StrPrintStr.exit1447
  %.pre.i1452 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1453

bb.pl:                                            ; preds = %Vec_StrPrintStr.exit1447
  %i.atn = icmp slt i32 %i.atk, 16
  br i1 %i.atn, label %bb.pm, label %bb.pp

bb.pm:                                            ; preds = %bb.pl
  %i.ato = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1463 = icmp eq ptr %i.ato, null
  br i1 %.not9.i.i.i1463, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.atp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ato, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1460

bb.po:                                            ; preds = %bb.pm
  %i.atq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1460

bb.pp:                                            ; preds = %bb.pl
  %i.atr = icmp samesign ult i32 %i.atk, 1073741823
  %i.ats = shl nuw nsw i32 %i.atk, 1
  %spec.select.i.i1456 = select i1 %i.atr, i32 %i.ats, i32 2147483647 ; 4 uses
  %.not.i9.i.i1457 = icmp samesign ult i32 %i.atk, %spec.select.i.i1456
  %.pre8.i1458 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1457, label %bb.pq, label %Vec_StrPush.exit.i1453

bb.pq:                                            ; preds = %bb.pp
  %.not9.i10.i.i1459 = icmp eq ptr %.pre8.i1458, null
  %i.att = zext nneg i32 %spec.select.i.i1456 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1459, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.atu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1458, i64 noundef %i.att) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1460

bb.ps:                                            ; preds = %bb.pq
  %i.atv = tail call noalias ptr @malloc(i64 noundef %i.att) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1460

Vec_StrGrow.exit11.sink.split.i.i1460:            ; preds = %bb.ps, %bb.pr, %bb.po, %bb.pn
  %i.atw = phi ptr [ %i.atq, %bb.po ], [ %i.atp, %bb.pn ], [ %i.atu, %bb.pr ], [ %i.atv, %bb.ps ] ; 2 uses
  %spec.select.sink.i.i1461 = phi i32 [ 16, %bb.po ], [ 16, %bb.pn ], [ %spec.select.i.i1456, %bb.pr ], [ %spec.select.i.i1456, %bb.ps ]
  store ptr %i.atw, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1461, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1462 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1453

Vec_StrPush.exit.i1453:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1460, %bb.pp, %.Vec_StrPush.exit_crit_edge.i1451
  %i.atx = phi i32 [ %i.atk, %.Vec_StrPush.exit_crit_edge.i1451 ], [ %i.atk, %bb.pp ], [ %.pre9.i1462, %Vec_StrGrow.exit11.sink.split.i.i1460 ] ; 2 uses
  %i.aty = phi ptr [ %.pre.i1452, %.Vec_StrPush.exit_crit_edge.i1451 ], [ %.pre8.i1458, %bb.pp ], [ %i.atw, %Vec_StrGrow.exit11.sink.split.i.i1460 ]
  %i.atz = add nsw i32 %i.atx, 1
  store i32 %i.atz, ptr %i.da, align 4, !tbaa !23
  %i.aua = sext i32 %i.atx to i64
  %i.aub = getelementptr inbounds i8, ptr %i.aty, i64 %i.aua
  store i8 95, ptr %i.aub, align 1, !tbaa !20
  %i.auc = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.aud = load i32, ptr %i.b, align 8, !tbaa !24
  %i.aue = icmp eq i32 %i.auc, %i.aud
  br i1 %i.aue, label %bb.pt, label %.Vec_StrPush.exit_crit_edge.i1451.1

.Vec_StrPush.exit_crit_edge.i1451.1:              ; preds = %Vec_StrPush.exit.i1453
  %.pre.i1452.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1453.1

bb.pt:                                            ; preds = %Vec_StrPush.exit.i1453
  %i.auf = icmp slt i32 %i.auc, 16
  br i1 %i.auf, label %bb.py, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.aug = icmp samesign ult i32 %i.auc, 1073741823
  %i.auh = shl nuw nsw i32 %i.auc, 1
  %spec.select.i.i1456.1 = select i1 %i.aug, i32 %i.auh, i32 2147483647 ; 4 uses
  %.not.i9.i.i1457.1 = icmp samesign ult i32 %i.auc, %spec.select.i.i1456.1
  %.pre8.i1458.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1457.1, label %bb.pv, label %Vec_StrPush.exit.i1453.1

bb.pv:                                            ; preds = %bb.pu
  %.not9.i10.i.i1459.1 = icmp eq ptr %.pre8.i1458.1, null
  %i.aui = zext nneg i32 %spec.select.i.i1456.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1459.1, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.auj = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1458.1, i64 noundef %i.aui) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1460.1

bb.px:                                            ; preds = %bb.pv
  %i.auk = tail call noalias ptr @malloc(i64 noundef %i.aui) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1460.1

bb.py:                                            ; preds = %bb.pt
  %i.aul = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1463.1 = icmp eq ptr %i.aul, null
  br i1 %.not9.i.i.i1463.1, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.aum = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.aul, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1460.1

bb.qa:                                            ; preds = %bb.py
  %i.aun = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1460.1

Vec_StrGrow.exit11.sink.split.i.i1460.1:          ; preds = %bb.qa, %bb.pz, %bb.px, %bb.pw
  %i.auo = phi ptr [ %i.aun, %bb.qa ], [ %i.aum, %bb.pz ], [ %i.auj, %bb.pw ], [ %i.auk, %bb.px ] ; 2 uses
  %spec.select.sink.i.i1461.1 = phi i32 [ 16, %bb.qa ], [ 16, %bb.pz ], [ %spec.select.i.i1456.1, %bb.pw ], [ %spec.select.i.i1456.1, %bb.px ]
  store ptr %i.auo, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1461.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1462.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1453.1

end_hunk_3
begin_hunk_4_@Cba_ManWriteVerilogNtk:bb.a

bb.ss:                                            ; preds = %bb.sn
  %i.bat = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1514.1 = icmp eq ptr %i.bat, null
  br i1 %.not9.i.i.i1514.1, label %bb.su, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bau = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bat, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1511.1

bb.su:                                            ; preds = %bb.ss
  %i.bav = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1511.1

Vec_StrGrow.exit11.sink.split.i.i1511.1:          ; preds = %bb.su, %bb.st, %bb.sr, %bb.sq
  %i.baw = phi ptr [ %i.bav, %bb.su ], [ %i.bau, %bb.st ], [ %i.bar, %bb.sq ], [ %i.bas, %bb.sr ] ; 2 uses
  %spec.select.sink.i.i1512.1 = phi i32 [ 16, %bb.su ], [ 16, %bb.st ], [ %spec.select.i.i1507.1, %bb.sq ], [ %spec.select.i.i1507.1, %bb.sr ]
  store ptr %i.baw, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1512.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1513.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1504.1

Vec_StrPush.exit.i1504.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1511.1, %bb.so, %.Vec_StrPush.exit_crit_edge.i1502.1
  %i.bax = phi i32 [ %i.bak, %.Vec_StrPush.exit_crit_edge.i1502.1 ], [ %i.bak, %bb.so ], [ %.pre9.i1513.1, %Vec_StrGrow.exit11.sink.split.i.i1511.1 ] ; 2 uses
  %i.bay = phi ptr [ %.pre.i1503.1, %.Vec_StrPush.exit_crit_edge.i1502.1 ], [ %.pre8.i1509.1, %bb.so ], [ %i.baw, %Vec_StrGrow.exit11.sink.split.i.i1511.1 ]
  %i.baz = add nsw i32 %i.bax, 1
  store i32 %i.baz, ptr %i.da, align 4, !tbaa !23
  %i.bba = sext i32 %i.bax to i64
  %i.bbb = getelementptr inbounds i8, ptr %i.bay, i64 %i.bba
  store i8 59, ptr %i.bbb, align 1, !tbaa !20
  %i.bbc = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bbd = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bbe = icmp eq i32 %i.bbc, %i.bbd
  br i1 %i.bbe, label %bb.sv, label %.Vec_StrPush.exit_crit_edge.i1502.2

.Vec_StrPush.exit_crit_edge.i1502.2:              ; preds = %Vec_StrPush.exit.i1504.1
  %.pre.i1503.2 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1504.2

bb.sv:                                            ; preds = %Vec_StrPush.exit.i1504.1
  %i.bbf = icmp slt i32 %i.bbc, 16
  br i1 %i.bbf, label %bb.ta, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.bbg = icmp samesign ult i32 %i.bbc, 1073741823
  %i.bbh = shl nuw nsw i32 %i.bbc, 1
  %spec.select.i.i1507.2 = select i1 %i.bbg, i32 %i.bbh, i32 2147483647 ; 4 uses
  %.not.i9.i.i1508.2 = icmp samesign ult i32 %i.bbc, %spec.select.i.i1507.2
  %.pre8.i1509.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1508.2, label %bb.sx, label %Vec_StrPush.exit.i1504.2

bb.sx:                                            ; preds = %bb.sw
  %.not9.i10.i.i1510.2 = icmp eq ptr %.pre8.i1509.2, null
  %i.bbi = zext nneg i32 %spec.select.i.i1507.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1510.2, label %bb.sz, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.bbj = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1509.2, i64 noundef %i.bbi) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1511.2

bb.sz:                                            ; preds = %bb.sx
  %i.bbk = tail call noalias ptr @malloc(i64 noundef %i.bbi) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1511.2

bb.ta:                                            ; preds = %bb.sv
  %i.bbl = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1514.2 = icmp eq ptr %i.bbl, null
  br i1 %.not9.i.i.i1514.2, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bbm = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bbl, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1511.2

bb.tc:                                            ; preds = %bb.ta
  %i.bbn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1511.2

Vec_StrGrow.exit11.sink.split.i.i1511.2:          ; preds = %bb.tc, %bb.tb, %bb.sz, %bb.sy
  %i.bbo = phi ptr [ %i.bbn, %bb.tc ], [ %i.bbm, %bb.tb ], [ %i.bbj, %bb.sy ], [ %i.bbk, %bb.sz ] ; 2 uses
  %spec.select.sink.i.i1512.2 = phi i32 [ 16, %bb.tc ], [ 16, %bb.tb ], [ %spec.select.i.i1507.2, %bb.sy ], [ %spec.select.i.i1507.2, %bb.sz ]
  store ptr %i.bbo, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1512.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1513.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1504.2

Vec_StrPush.exit.i1504.2:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1511.2, %bb.sw, %.Vec_StrPush.exit_crit_edge.i1502.2
  %i.bbp = phi i32 [ %i.bbc, %.Vec_StrPush.exit_crit_edge.i1502.2 ], [ %i.bbc, %bb.sw ], [ %.pre9.i1513.2, %Vec_StrGrow.exit11.sink.split.i.i1511.2 ] ; 2 uses
  %i.bbq = phi ptr [ %.pre.i1503.2, %.Vec_StrPush.exit_crit_edge.i1502.2 ], [ %.pre8.i1509.2, %bb.sw ], [ %i.bbo, %Vec_StrGrow.exit11.sink.split.i.i1511.2 ]
  %i.bbr = add nsw i32 %i.bbp, 1
  store i32 %i.bbr, ptr %i.da, align 4, !tbaa !23
  %i.bbs = sext i32 %i.bbp to i64
  %i.bbt = getelementptr inbounds i8, ptr %i.bbq, i64 %i.bbs
  store i8 10, ptr %i.bbt, align 1, !tbaa !20
  br label %.lr.ph.i1516

.lr.ph.i1516:                                     ; preds = %Vec_StrPush.exit.i1504.2, %Vec_StrPush.exit.i1521
  %indvars.iv.i1518 = phi i64 [ %indvars.iv.next.i1522, %Vec_StrPush.exit.i1521 ], [ 0, %Vec_StrPush.exit.i1504.2 ] ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr @.str.110, i64 %indvars.iv.i1518
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !20
  %i.bbw = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bbx = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bby = icmp eq i32 %i.bbw, %i.bbx
  br i1 %i.bby, label %bb.td, label %.Vec_StrPush.exit_crit_edge.i1519

.Vec_StrPush.exit_crit_edge.i1519:                ; preds = %.lr.ph.i1516
  %.pre.i1520 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1521

bb.td:                                            ; preds = %.lr.ph.i1516
  %i.bbz = icmp slt i32 %i.bbw, 16
  br i1 %i.bbz, label %bb.te, label %bb.th

bb.te:                                            ; preds = %bb.td
  %i.bca = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1531 = icmp eq ptr %i.bca, null
  br i1 %.not9.i.i.i1531, label %bb.tg, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.bcb = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bca, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1528

bb.tg:                                            ; preds = %bb.te
  %i.bcc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1528

bb.th:                                            ; preds = %bb.td
  %i.bcd = icmp samesign ult i32 %i.bbw, 1073741823
  %i.bce = shl nuw nsw i32 %i.bbw, 1
  %spec.select.i.i1524 = select i1 %i.bcd, i32 %i.bce, i32 2147483647 ; 4 uses
  %.not.i9.i.i1525 = icmp samesign ult i32 %i.bbw, %spec.select.i.i1524
  %.pre8.i1526 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1525, label %bb.ti, label %Vec_StrPush.exit.i1521

bb.ti:                                            ; preds = %bb.th
  %.not9.i10.i.i1527 = icmp eq ptr %.pre8.i1526, null
  %i.bcf = zext nneg i32 %spec.select.i.i1524 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1527, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.bcg = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1526, i64 noundef %i.bcf) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1528

bb.tk:                                            ; preds = %bb.ti
  %i.bch = tail call noalias ptr @malloc(i64 noundef %i.bcf) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1528

Vec_StrGrow.exit11.sink.split.i.i1528:            ; preds = %bb.tk, %bb.tj, %bb.tg, %bb.tf
  %i.bci = phi ptr [ %i.bcc, %bb.tg ], [ %i.bcb, %bb.tf ], [ %i.bcg, %bb.tj ], [ %i.bch, %bb.tk ] ; 2 uses
  %spec.select.sink.i.i1529 = phi i32 [ 16, %bb.tg ], [ 16, %bb.tf ], [ %spec.select.i.i1524, %bb.tj ], [ %spec.select.i.i1524, %bb.tk ]
  store ptr %i.bci, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1529, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1530 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1521

Vec_StrPush.exit.i1521:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1528, %bb.th, %.Vec_StrPush.exit_crit_edge.i1519
  %i.bcj = phi i32 [ %i.bbw, %.Vec_StrPush.exit_crit_edge.i1519 ], [ %i.bbw, %bb.th ], [ %.pre9.i1530, %Vec_StrGrow.exit11.sink.split.i.i1528 ] ; 2 uses
  %i.bck = phi ptr [ %.pre.i1520, %.Vec_StrPush.exit_crit_edge.i1519 ], [ %.pre8.i1526, %bb.th ], [ %i.bci, %Vec_StrGrow.exit11.sink.split.i.i1528 ]
  %i.bcl = add nsw i32 %i.bcj, 1
  store i32 %i.bcl, ptr %i.da, align 4, !tbaa !23
  %i.bcm = sext i32 %i.bcj to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.bck, i64 %i.bcm
  store i8 %i.bbv, ptr %i.bcn, align 1, !tbaa !20
  %indvars.iv.next.i1522 = add nuw nsw i64 %indvars.iv.i1518, 1 ; 2 uses
  %exitcond.not.i1523 = icmp eq i64 %indvars.iv.next.i1522, 10
  br i1 %exitcond.not.i1523, label %Vec_StrPrintStr.exit1532, label %.lr.ph.i1516, !llvm.loop !2

Vec_StrPrintStr.exit1532:                         ; preds = %Vec_StrPush.exit.i1521
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.asp)
  %.val855 = load ptr, ptr %i.tp, align 8, !tbaa !27 ; 2 uses
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %.val855, i64 %indvars.iv3111
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !28 ; 3 uses
  %i.bcq = add nuw nsw i64 %indvars.iv3111, 1     ; 8 uses
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %.val855, i64 %i.bcq
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !28 ; 2 uses
  %i.bct = icmp slt i32 %i.bcp, %i.bcs
  %i.bcu = add nsw i32 %i.bcp, 1
  %i.bcv = icmp slt i32 %i.bcu, %i.bcs
  %or.cond3937 = select i1 %i.bct, i1 %i.bcv, i1 false
  br i1 %or.cond3937, label %bb.tl, label %.lr.ph.i1533

bb.tl:                                            ; preds = %Vec_StrPrintStr.exit1532
  %i.bcw = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.2, i32 noundef 0) ; 0 uses
  %.val854.peel3105.pre = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.phi.trans.insert3167 = getelementptr inbounds nuw [4 x i8], ptr %.val854.peel3105.pre, i64 %i.bcq
  %.pre3168 = load i32, ptr %.phi.trans.insert3167, align 4, !tbaa !28
  %i.bcx = add nsw i32 %i.bcp, 2                  ; 2 uses
  %i.bcy = icmp slt i32 %i.bcx, %.pre3168
  br i1 %i.bcy, label %.lr.ph3045.peel.next3102, label %.lr.ph.i1533

.lr.ph3045.peel.next3102:                         ; preds = %bb.tl, %.lr.ph3045.peel.next3102
  %.73044 = phi i32 [ %i.bdc, %.lr.ph3045.peel.next3102 ], [ 2, %bb.tl ] ; 2 uses
  %.27793043 = phi i32 [ %i.bdb, %.lr.ph3045.peel.next3102 ], [ %i.bcx, %bb.tl ]
  %i.bcz = add nsw i32 %.73044, -1
  %i.bda = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.58, i32 noundef %i.bcz) ; 0 uses
  %.val854.pre = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.phi.trans.insert3171 = getelementptr inbounds nuw [4 x i8], ptr %.val854.pre, i64 %i.bcq
  %.pre3172 = load i32, ptr %.phi.trans.insert3171, align 4, !tbaa !28
  %i.bdb = add nsw i32 %.27793043, 1              ; 2 uses
  %i.bdc = add nuw nsw i32 %.73044, 1
  %i.bdd = icmp slt i32 %i.bdb, %.pre3172
  br i1 %i.bdd, label %.lr.ph3045.peel.next3102, label %.lr.ph.i1533, !llvm.loop !79

.lr.ph.i1533:                                     ; preds = %.lr.ph3045.peel.next3102, %bb.tl, %Vec_StrPrintStr.exit1532
  %i.bde = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bdf = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bdg = icmp eq i32 %i.bde, %i.bdf
  br i1 %i.bdg, label %bb.tm, label %.Vec_StrPush.exit_crit_edge.i1536

.Vec_StrPush.exit_crit_edge.i1536:                ; preds = %.lr.ph.i1533
  %.pre.i1537 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1538

bb.tm:                                            ; preds = %.lr.ph.i1533
  %i.bdh = icmp slt i32 %i.bde, 16
  br i1 %i.bdh, label %bb.tn, label %bb.tq

bb.tn:                                            ; preds = %bb.tm
  %i.bdi = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1548 = icmp eq ptr %i.bdi, null
  br i1 %.not9.i.i.i1548, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.bdj = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bdi, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1545

bb.tp:                                            ; preds = %bb.tn
  %i.bdk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1545

bb.tq:                                            ; preds = %bb.tm
  %i.bdl = icmp samesign ult i32 %i.bde, 1073741823
  %i.bdm = shl nuw nsw i32 %i.bde, 1
  %spec.select.i.i1541 = select i1 %i.bdl, i32 %i.bdm, i32 2147483647 ; 4 uses
  %.not.i9.i.i1542 = icmp samesign ult i32 %i.bde, %spec.select.i.i1541
  %.pre8.i1543 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1542, label %bb.tr, label %Vec_StrPush.exit.i1538

bb.tr:                                            ; preds = %bb.tq
  %.not9.i10.i.i1544 = icmp eq ptr %.pre8.i1543, null
  %i.bdn = zext nneg i32 %spec.select.i.i1541 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1544, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.bdo = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1543, i64 noundef %i.bdn) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1545

bb.tt:                                            ; preds = %bb.tr
  %i.bdp = tail call noalias ptr @malloc(i64 noundef %i.bdn) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1545

Vec_StrGrow.exit11.sink.split.i.i1545:            ; preds = %bb.tt, %bb.ts, %bb.tp, %bb.to
  %i.bdq = phi ptr [ %i.bdk, %bb.tp ], [ %i.bdj, %bb.to ], [ %i.bdo, %bb.ts ], [ %i.bdp, %bb.tt ] ; 2 uses
  %spec.select.sink.i.i1546 = phi i32 [ 16, %bb.tp ], [ 16, %bb.to ], [ %spec.select.i.i1541, %bb.ts ], [ %spec.select.i.i1541, %bb.tt ]
  store ptr %i.bdq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1546, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1547 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1538

Vec_StrPush.exit.i1538:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1545, %bb.tq, %.Vec_StrPush.exit_crit_edge.i1536
  %i.bdr = phi i32 [ %i.bde, %.Vec_StrPush.exit_crit_edge.i1536 ], [ %i.bde, %bb.tq ], [ %.pre9.i1547, %Vec_StrGrow.exit11.sink.split.i.i1545 ] ; 2 uses
  %i.bds = phi ptr [ %.pre.i1537, %.Vec_StrPush.exit_crit_edge.i1536 ], [ %.pre8.i1543, %bb.tq ], [ %i.bdq, %Vec_StrGrow.exit11.sink.split.i.i1545 ]
  %i.bdt = add nsw i32 %i.bdr, 1
  store i32 %i.bdt, ptr %i.da, align 4, !tbaa !23
  %i.bdu = sext i32 %i.bdr to i64
  %i.bdv = getelementptr inbounds i8, ptr %i.bds, i64 %i.bdu
  store i8 59, ptr %i.bdv, align 1, !tbaa !20
  %i.bdw = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bdx = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bdy = icmp eq i32 %i.bdw, %i.bdx
  br i1 %i.bdy, label %bb.tu, label %.Vec_StrPush.exit_crit_edge.i1536.1

.Vec_StrPush.exit_crit_edge.i1536.1:              ; preds = %Vec_StrPush.exit.i1538
  %.pre.i1537.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1538.1

bb.tu:                                            ; preds = %Vec_StrPush.exit.i1538
  %i.bdz = icmp slt i32 %i.bdw, 16
  br i1 %i.bdz, label %bb.tz, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.bea = icmp samesign ult i32 %i.bdw, 1073741823
  %i.beb = shl nuw nsw i32 %i.bdw, 1
  %spec.select.i.i1541.1 = select i1 %i.bea, i32 %i.beb, i32 2147483647 ; 4 uses
  %.not.i9.i.i1542.1 = icmp samesign ult i32 %i.bdw, %spec.select.i.i1541.1
  %.pre8.i1543.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1542.1, label %bb.tw, label %Vec_StrPush.exit.i1538.1

bb.tw:                                            ; preds = %bb.tv
  %.not9.i10.i.i1544.1 = icmp eq ptr %.pre8.i1543.1, null
  %i.bec = zext nneg i32 %spec.select.i.i1541.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1544.1, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.bed = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1543.1, i64 noundef %i.bec) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1545.1

bb.ty:                                            ; preds = %bb.tw
  %i.bee = tail call noalias ptr @malloc(i64 noundef %i.bec) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1545.1

bb.tz:                                            ; preds = %bb.tu
  %i.bef = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1548.1 = icmp eq ptr %i.bef, null
  br i1 %.not9.i.i.i1548.1, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.beg = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bef, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1545.1

bb.ub:                                            ; preds = %bb.tz
  %i.beh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1545.1

Vec_StrGrow.exit11.sink.split.i.i1545.1:          ; preds = %bb.ub, %bb.ua, %bb.ty, %bb.tx
  %i.bei = phi ptr [ %i.beh, %bb.ub ], [ %i.beg, %bb.ua ], [ %i.bed, %bb.tx ], [ %i.bee, %bb.ty ] ; 2 uses
  %spec.select.sink.i.i1546.1 = phi i32 [ 16, %bb.ub ], [ 16, %bb.ua ], [ %spec.select.i.i1541.1, %bb.tx ], [ %spec.select.i.i1541.1, %bb.ty ]
  store ptr %i.bei, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1546.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1547.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1538.1

Vec_StrPush.exit.i1538.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1545.1, %bb.tv, %.Vec_StrPush.exit_crit_edge.i1536.1
  %i.bej = phi i32 [ %i.bdw, %.Vec_StrPush.exit_crit_edge.i1536.1 ], [ %i.bdw, %bb.tv ], [ %.pre9.i1547.1, %Vec_StrGrow.exit11.sink.split.i.i1545.1 ] ; 2 uses
  %i.bek = phi ptr [ %.pre.i1537.1, %.Vec_StrPush.exit_crit_edge.i1536.1 ], [ %.pre8.i1543.1, %bb.tv ], [ %i.bei, %Vec_StrGrow.exit11.sink.split.i.i1545.1 ]
  %i.bel = add nsw i32 %i.bej, 1
  store i32 %i.bel, ptr %i.da, align 4, !tbaa !23
  %i.bem = sext i32 %i.bej to i64
  %i.ben = getelementptr inbounds i8, ptr %i.bek, i64 %i.bem
  store i8 10, ptr %i.ben, align 1, !tbaa !20
  br label %.lr.ph.i1550

.lr.ph.i1550:                                     ; preds = %Vec_StrPush.exit.i1538.1, %Vec_StrPush.exit.i1555
  %indvars.iv.i1552 = phi i64 [ %indvars.iv.next.i1556, %Vec_StrPush.exit.i1555 ], [ 0, %Vec_StrPush.exit.i1538.1 ] ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr @.str.113, i64 %indvars.iv.i1552
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !20
  %i.beq = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ber = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bes = icmp eq i32 %i.beq, %i.ber
  br i1 %i.bes, label %bb.uc, label %.Vec_StrPush.exit_crit_edge.i1553

.Vec_StrPush.exit_crit_edge.i1553:                ; preds = %.lr.ph.i1550
  %.pre.i1554 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1555

bb.uc:                                            ; preds = %.lr.ph.i1550
  %i.bet = icmp slt i32 %i.beq, 16
  br i1 %i.bet, label %bb.ud, label %bb.ug

bb.ud:                                            ; preds = %bb.uc
  %i.beu = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1565 = icmp eq ptr %i.beu, null
  br i1 %.not9.i.i.i1565, label %bb.uf, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.bev = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.beu, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1562

bb.uf:                                            ; preds = %bb.ud
  %i.bew = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1562

bb.ug:                                            ; preds = %bb.uc
  %i.bex = icmp samesign ult i32 %i.beq, 1073741823
  %i.bey = shl nuw nsw i32 %i.beq, 1
  %spec.select.i.i1558 = select i1 %i.bex, i32 %i.bey, i32 2147483647 ; 4 uses
  %.not.i9.i.i1559 = icmp samesign ult i32 %i.beq, %spec.select.i.i1558
  %.pre8.i1560 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1559, label %bb.uh, label %Vec_StrPush.exit.i1555

bb.uh:                                            ; preds = %bb.ug
  %.not9.i10.i.i1561 = icmp eq ptr %.pre8.i1560, null
  %i.bez = zext nneg i32 %spec.select.i.i1558 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1561, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.bfa = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1560, i64 noundef %i.bez) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1562

bb.uj:                                            ; preds = %bb.uh
  %i.bfb = tail call noalias ptr @malloc(i64 noundef %i.bez) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1562

Vec_StrGrow.exit11.sink.split.i.i1562:            ; preds = %bb.uj, %bb.ui, %bb.uf, %bb.ue
  %i.bfc = phi ptr [ %i.bew, %bb.uf ], [ %i.bev, %bb.ue ], [ %i.bfa, %bb.ui ], [ %i.bfb, %bb.uj ] ; 2 uses
  %spec.select.sink.i.i1563 = phi i32 [ 16, %bb.uf ], [ 16, %bb.ue ], [ %spec.select.i.i1558, %bb.ui ], [ %spec.select.i.i1558, %bb.uj ]
  store ptr %i.bfc, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1563, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1564 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1555

Vec_StrPush.exit.i1555:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1562, %bb.ug, %.Vec_StrPush.exit_crit_edge.i1553
  %i.bfd = phi i32 [ %i.beq, %.Vec_StrPush.exit_crit_edge.i1553 ], [ %i.beq, %bb.ug ], [ %.pre9.i1564, %Vec_StrGrow.exit11.sink.split.i.i1562 ] ; 2 uses
  %i.bfe = phi ptr [ %.pre.i1554, %.Vec_StrPush.exit_crit_edge.i1553 ], [ %.pre8.i1560, %bb.ug ], [ %i.bfc, %Vec_StrGrow.exit11.sink.split.i.i1562 ]
  %i.bff = add nsw i32 %i.bfd, 1
  store i32 %i.bff, ptr %i.da, align 4, !tbaa !23
  %i.bfg = sext i32 %i.bfd to i64
  %i.bfh = getelementptr inbounds i8, ptr %i.bfe, i64 %i.bfg
  store i8 %i.bep, ptr %i.bfh, align 1, !tbaa !20
  %indvars.iv.next.i1556 = add nuw nsw i64 %indvars.iv.i1552, 1 ; 2 uses
  %exitcond.not.i1557 = icmp eq i64 %indvars.iv.next.i1556, 12
  br i1 %exitcond.not.i1557, label %Vec_StrPrintStr.exit1566, label %.lr.ph.i1550, !llvm.loop !2
end_hunk_4
begin_hunk_5_@Cba_ManWriteVerilogNtk:bb.a
bb.ur:                                            ; preds = %bb.up
  %i.bfv = tail call noalias ptr @malloc(i64 noundef %i.bft) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1579

Vec_StrGrow.exit11.sink.split.i.i1579:            ; preds = %bb.ur, %bb.uq, %bb.un, %bb.um
  %i.bfw = phi ptr [ %i.bfq, %bb.un ], [ %i.bfp, %bb.um ], [ %i.bfu, %bb.uq ], [ %i.bfv, %bb.ur ] ; 2 uses
  %spec.select.sink.i.i1580 = phi i32 [ 16, %bb.un ], [ 16, %bb.um ], [ %spec.select.i.i1575, %bb.uq ], [ %spec.select.i.i1575, %bb.ur ]
  store ptr %i.bfw, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1580, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1581 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1572

Vec_StrPush.exit.i1572:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1579, %bb.uo, %.Vec_StrPush.exit_crit_edge.i1570
  %i.bfx = phi i32 [ %i.bfk, %.Vec_StrPush.exit_crit_edge.i1570 ], [ %i.bfk, %bb.uo ], [ %.pre9.i1581, %Vec_StrGrow.exit11.sink.split.i.i1579 ] ; 2 uses
  %i.bfy = phi ptr [ %.pre.i1571, %.Vec_StrPush.exit_crit_edge.i1570 ], [ %.pre8.i1577, %bb.uo ], [ %i.bfw, %Vec_StrGrow.exit11.sink.split.i.i1579 ]
  %i.bfz = add nsw i32 %i.bfx, 1
  store i32 %i.bfz, ptr %i.da, align 4, !tbaa !23
  %i.bga = sext i32 %i.bfx to i64
  %i.bgb = getelementptr inbounds i8, ptr %i.bfy, i64 %i.bga
  store i8 %i.bfj, ptr %i.bgb, align 1, !tbaa !20
  %indvars.iv.next.i1573 = add nuw nsw i64 %indvars.iv.i1569, 1 ; 2 uses
  %exitcond.not.i1574 = icmp eq i64 %indvars.iv.next.i1573, 37
  br i1 %exitcond.not.i1574, label %.lr.ph.i1584, label %.lr.ph.i1567, !llvm.loop !2

.lr.ph.i1584:                                     ; preds = %Vec_StrPush.exit.i1572, %Vec_StrPrintStr.exit1566
  %i.bgc = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bgd = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bge = icmp eq i32 %i.bgc, %i.bgd
  br i1 %i.bge, label %bb.us, label %.Vec_StrPush.exit_crit_edge.i1587

.Vec_StrPush.exit_crit_edge.i1587:                ; preds = %.lr.ph.i1584
  %.pre.i1588 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1589

bb.us:                                            ; preds = %.lr.ph.i1584
  %i.bgf = icmp slt i32 %i.bgc, 16
  br i1 %i.bgf, label %bb.ut, label %bb.uw

bb.ut:                                            ; preds = %bb.us
  %i.bgg = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1599 = icmp eq ptr %i.bgg, null
  br i1 %.not9.i.i.i1599, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.bgh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bgg, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1596

bb.uv:                                            ; preds = %bb.ut
  %i.bgi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1596

bb.uw:                                            ; preds = %bb.us
  %i.bgj = icmp samesign ult i32 %i.bgc, 1073741823
  %i.bgk = shl nuw nsw i32 %i.bgc, 1
  %spec.select.i.i1592 = select i1 %i.bgj, i32 %i.bgk, i32 2147483647 ; 4 uses
  %.not.i9.i.i1593 = icmp samesign ult i32 %i.bgc, %spec.select.i.i1592
  %.pre8.i1594 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1593, label %bb.ux, label %Vec_StrPush.exit.i1589

bb.ux:                                            ; preds = %bb.uw
  %.not9.i10.i.i1595 = icmp eq ptr %.pre8.i1594, null
  %i.bgl = zext nneg i32 %spec.select.i.i1592 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1595, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.bgm = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1594, i64 noundef %i.bgl) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1596

bb.uz:                                            ; preds = %bb.ux
  %i.bgn = tail call noalias ptr @malloc(i64 noundef %i.bgl) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1596

Vec_StrGrow.exit11.sink.split.i.i1596:            ; preds = %bb.uz, %bb.uy, %bb.uv, %bb.uu
  %i.bgo = phi ptr [ %i.bgi, %bb.uv ], [ %i.bgh, %bb.uu ], [ %i.bgm, %bb.uy ], [ %i.bgn, %bb.uz ] ; 2 uses
  %spec.select.sink.i.i1597 = phi i32 [ 16, %bb.uv ], [ 16, %bb.uu ], [ %spec.select.i.i1592, %bb.uy ], [ %spec.select.i.i1592, %bb.uz ]
  store ptr %i.bgo, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1597, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1598 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1589

Vec_StrPush.exit.i1589:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1596, %bb.uw, %.Vec_StrPush.exit_crit_edge.i1587
  %i.bgp = phi i32 [ %i.bgc, %.Vec_StrPush.exit_crit_edge.i1587 ], [ %i.bgc, %bb.uw ], [ %.pre9.i1598, %Vec_StrGrow.exit11.sink.split.i.i1596 ] ; 2 uses
  %i.bgq = phi ptr [ %.pre.i1588, %.Vec_StrPush.exit_crit_edge.i1587 ], [ %.pre8.i1594, %bb.uw ], [ %i.bgo, %Vec_StrGrow.exit11.sink.split.i.i1596 ]
  %i.bgr = add nsw i32 %i.bgp, 1
  store i32 %i.bgr, ptr %i.da, align 4, !tbaa !23
  %i.bgs = sext i32 %i.bgp to i64
  %i.bgt = getelementptr inbounds i8, ptr %i.bgq, i64 %i.bgs
  store i8 10, ptr %i.bgt, align 1, !tbaa !20
  %.val853 = load ptr, ptr %i.tp, align 8, !tbaa !27 ; 3 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %.val853, i64 %indvars.iv3111
  %i.bgv = load i32, ptr %i.bgu, align 4, !tbaa !28 ; 2 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %.val853, i64 %i.bcq
  %i.bgx = load i32, ptr %i.bgw, align 4, !tbaa !28
  %i.bgy = icmp slt i32 %i.bgv, %i.bgx
  br i1 %i.bgy, label %.lr.ph3052, label %.lr.ph.i1631.preheader

.lr.ph3052:                                       ; preds = %Vec_StrPush.exit.i1589
  %i.bgz = icmp sgt i32 %i.ask, 0                 ; 2 uses
  br label %bb.va

bb.va:                                            ; preds = %.lr.ph3052, %bb.vw
  %.val8523175 = phi ptr [ %.val853, %.lr.ph3052 ], [ %.val852, %bb.vw ]
  %.83051 = phi i32 [ 0, %.lr.ph3052 ], [ %i.bjm, %bb.vw ] ; 5 uses
  %.37803050 = phi i32 [ %i.bgv, %.lr.ph3052 ], [ %i.bjl, %bb.vw ]
  %i.bha = icmp eq i32 %.83051, 0
  br i1 %i.bha, label %bb.vw, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.bhb = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.115, i32 noundef %i.ask) ; 0 uses
  br i1 %i.asc, label %bb.vc, label %.preheader3005

.preheader3005:                                   ; preds = %bb.vb
  br i1 %i.bgz, label %.lr.ph3048, label %.lr.ph.i1613.preheader

.lr.ph3048:                                       ; preds = %.preheader3005
  %i.bhc = add nsw i32 %.83051, -1
  br label %bb.vn

bb.vc:                                            ; preds = %bb.vb
  %.val840 = load i32, ptr %i.da, align 4, !tbaa !23 ; 5 uses
  %i.bhd = add nsw i32 %.val840, %i.ask           ; 9 uses
  br i1 %i.bgz, label %bb.vd, label %Vec_StrFillExtra.exit

bb.vd:                                            ; preds = %bb.vc
  %i.bhe = load i32, ptr %i.b, align 8, !tbaa !24 ; 4 uses
  %i.bhf = shl nsw i32 %i.bhe, 1                  ; 2 uses
  %i.bhg = icmp sgt i32 %i.bhd, %i.bhf
  %.not.i.i1602 = icmp slt i32 %i.bhe, %i.bhd     ; 2 uses
  br i1 %i.bhg, label %bb.ve, label %bb.vi

bb.ve:                                            ; preds = %bb.vd
  br i1 %.not.i.i1602, label %bb.vf, label %Vec_StrGrow.exit.i1603

bb.vf:                                            ; preds = %bb.ve
  %i.bhh = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i1611 = icmp eq ptr %i.bhh, null
  %i.bhi = sext i32 %i.bhd to i64                 ; 2 uses
  br i1 %.not9.i.i1611, label %bb.vh, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.bhj = tail call ptr @realloc(ptr noundef nonnull %i.bhh, i64 noundef %i.bhi) #18
  br label %Vec_StrGrow.exit.sink.split.i

bb.vh:                                            ; preds = %bb.vf
  %i.bhk = tail call noalias ptr @malloc(i64 noundef %i.bhi) #19
  br label %Vec_StrGrow.exit.sink.split.i

bb.vi:                                            ; preds = %bb.vd
  br i1 %.not.i.i1602, label %bb.vj, label %Vec_StrGrow.exit.i1603

bb.vj:                                            ; preds = %bb.vi
  %i.bhl = icmp slt i32 %i.bhe, 1073741823
  %spec.select.i1609 = select i1 %i.bhl, i32 %i.bhf, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.bhe, %spec.select.i1609
  br i1 %.not.i22.i, label %bb.vk, label %Vec_StrGrow.exit.i1603

bb.vk:                                            ; preds = %bb.vj
  %i.bhm = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.bhm, null
  %i.bhn = sext i32 %spec.select.i1609 to i64     ; 2 uses
  br i1 %.not9.i23.i, label %bb.vm, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.bho = tail call ptr @realloc(ptr noundef nonnull %i.bhm, i64 noundef %i.bhn) #18
  br label %Vec_StrGrow.exit.sink.split.i

bb.vm:                                            ; preds = %bb.vk
  %i.bhp = tail call noalias ptr @malloc(i64 noundef %i.bhn) #19
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.vl, %bb.vm, %bb.vg, %bb.vh
  %storemerge3931.a = phi ptr [ %i.bhk, %bb.vh ], [ %i.bhj, %bb.vg ], [ %i.bho, %bb.vl ], [ %i.bhp, %bb.vm ]
  %spec.select.sink.i1610 = phi i32 [ %i.bhd, %bb.vh ], [ %i.bhd, %bb.vg ], [ %spec.select.i1609, %bb.vl ], [ %spec.select.i1609, %bb.vm ]
  store ptr %storemerge3931.a, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i1610, ptr %i.b, align 8, !tbaa !24
  %.pre3173 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrGrow.exit.i1603

Vec_StrGrow.exit.i1603:                           ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.vj, %bb.vi, %bb.ve
  %i.bhq = phi i32 [ %.pre3173, %Vec_StrGrow.exit.sink.split.i ], [ %.val840, %bb.vj ], [ %.val840, %bb.vi ], [ %.val840, %bb.ve ] ; 2 uses
  %i.bhr = icmp slt i32 %i.bhq, %i.bhd
  br i1 %i.bhr, label %.lr.ph.i1604, label %._crit_edge.i

.lr.ph.i1604:                                     ; preds = %Vec_StrGrow.exit.i1603
  %i.bhs = sext i32 %i.bhq to i64                 ; 4 uses
  %wide.trip.count.i1605 = sext i32 %i.bhd to i64 ; 3 uses
  %i.bht = sub nsw i64 %wide.trip.count.i1605, %i.bhs
  %xtraiter3951 = and i64 %i.bht, 3               ; 2 uses
  %lcmp.mod3952.not = icmp eq i64 %xtraiter3951, 0
  br i1 %lcmp.mod3952.not, label %.prol.loopexit3950, label %.prol.preheader3949

.prol.preheader3949:                              ; preds = %.lr.ph.i1604, %.prol.preheader3949
  %indvars.iv.i1606.prol = phi i64 [ %indvars.iv.next.i1607.prol, %.prol.preheader3949 ], [ %i.bhs, %.lr.ph.i1604 ] ; 2 uses
  %prol.iter3953 = phi i64 [ %prol.iter3953.next, %.prol.preheader3949 ], [ 0, %.lr.ph.i1604 ]
  %i.bhu = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.bhv = getelementptr inbounds i8, ptr %i.bhu, i64 %indvars.iv.i1606.prol
  store i8 63, ptr %i.bhv, align 1, !tbaa !20
  %indvars.iv.next.i1607.prol = add nsw i64 %indvars.iv.i1606.prol, 1 ; 2 uses
  %prol.iter3953.next = add i64 %prol.iter3953, 1 ; 2 uses
  %prol.iter3953.cmp.not = icmp eq i64 %prol.iter3953.next, %xtraiter3951
  br i1 %prol.iter3953.cmp.not, label %.prol.loopexit3950, label %.prol.preheader3949, !llvm.loop !80

.prol.loopexit3950:                               ; preds = %.prol.preheader3949, %.lr.ph.i1604
  %indvars.iv.i1606.unr = phi i64 [ %i.bhs, %.lr.ph.i1604 ], [ %indvars.iv.next.i1607.prol, %.prol.preheader3949 ]
  %i.bhw = sub nsw i64 %i.bhs, %wide.trip.count.i1605
  %i.bhx = icmp ugt i64 %i.bhw, -4
  br i1 %i.bhx, label %._crit_edge.i, label %.lr.ph.i1604.new

.lr.ph.i1604.new:                                 ; preds = %.prol.loopexit3950, %.lr.ph.i1604.new
  %indvars.iv.i1606 = phi i64 [ %indvars.iv.next.i1607.3, %.lr.ph.i1604.new ], [ %indvars.iv.i1606.unr, %.prol.loopexit3950 ] ; 5 uses
  %i.bhy = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.bhz = getelementptr inbounds i8, ptr %i.bhy, i64 %indvars.iv.i1606
  store i8 63, ptr %i.bhz, align 1, !tbaa !20
  %i.bia = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.bib = getelementptr i8, ptr %i.bia, i64 %indvars.iv.i1606
  %i.bic = getelementptr i8, ptr %i.bib, i64 1
  store i8 63, ptr %i.bic, align 1, !tbaa !20
  %i.bid = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.bie = getelementptr i8, ptr %i.bid, i64 %indvars.iv.i1606
  %i.bif = getelementptr i8, ptr %i.bie, i64 2
  store i8 63, ptr %i.bif, align 1, !tbaa !20
  %i.big = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.bih = getelementptr i8, ptr %i.big, i64 %indvars.iv.i1606
  %i.bii = getelementptr i8, ptr %i.bih, i64 3
  store i8 63, ptr %i.bii, align 1, !tbaa !20
  %indvars.iv.next.i1607.3 = add nsw i64 %indvars.iv.i1606, 4 ; 2 uses
  %exitcond.not.i1608.3 = icmp eq i64 %indvars.iv.next.i1607.3, %wide.trip.count.i1605
  br i1 %exitcond.not.i1608.3, label %._crit_edge.i, label %.lr.ph.i1604.new, !llvm.loop !81

._crit_edge.i:                                    ; preds = %.prol.loopexit3950, %.lr.ph.i1604.new, %Vec_StrGrow.exit.i1603
  store i32 %i.bhd, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.vc, %._crit_edge.i
  %.val839 = phi i32 [ %.val840, %bb.vc ], [ %i.bhd, %._crit_edge.i ]
  %i.bij = sub nsw i32 %.val839, %.83051
  %.val992 = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.bik = sext i32 %i.bij to i64
  %i.bil = getelementptr inbounds i8, ptr %.val992, i64 %i.bik
  store i8 49, ptr %i.bil, align 1, !tbaa !20
  br label %.lr.ph.i1613.preheader

bb.vn:                                            ; preds = %.lr.ph3048, %bb.vn
  %.0783.in3047 = phi i32 [ %i.ask, %.lr.ph3048 ], [ %.0783, %bb.vn ] ; 2 uses
  %.0783 = add nsw i32 %.0783.in3047, -1          ; 2 uses
  %i.bim = lshr i32 %i.bhc, %.0783
  %i.bin = and i32 %i.bim, 1
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.b, i32 noundef %i.bin)
  %i.bio = icmp samesign ugt i32 %.0783.in3047, 1
  br i1 %i.bio, label %bb.vn, label %.lr.ph.i1613.preheader, !llvm.loop !82

.lr.ph.i1613.preheader:                           ; preds = %bb.vn, %.preheader3005, %Vec_StrFillExtra.exit
  br label %.lr.ph.i1613

.lr.ph.i1613:                                     ; preds = %.lr.ph.i1613.preheader, %Vec_StrPush.exit.i1618
  %indvars.iv.i1615 = phi i64 [ %indvars.iv.next.i1619, %Vec_StrPush.exit.i1618 ], [ 0, %.lr.ph.i1613.preheader ] ; 2 uses
  %i.bip = getelementptr inbounds nuw i8, ptr @.str.116, i64 %indvars.iv.i1615
  %i.biq = load i8, ptr %i.bip, align 1, !tbaa !20
  %i.bir = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bis = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bit = icmp eq i32 %i.bir, %i.bis
  br i1 %i.bit, label %bb.vo, label %.Vec_StrPush.exit_crit_edge.i1616

.Vec_StrPush.exit_crit_edge.i1616:                ; preds = %.lr.ph.i1613
  %.pre.i1617 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1618

bb.vo:                                            ; preds = %.lr.ph.i1613
  %i.biu = icmp slt i32 %i.bir, 16
  br i1 %i.biu, label %bb.vp, label %bb.vs

bb.vp:                                            ; preds = %bb.vo
  %i.biv = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1628 = icmp eq ptr %i.biv, null
  br i1 %.not9.i.i.i1628, label %bb.vr, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.biw = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.biv, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1625

bb.vr:                                            ; preds = %bb.vp
  %i.bix = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1625

bb.vs:                                            ; preds = %bb.vo
  %i.biy = icmp samesign ult i32 %i.bir, 1073741823
  %i.biz = shl nuw nsw i32 %i.bir, 1
  %spec.select.i.i1621 = select i1 %i.biy, i32 %i.biz, i32 2147483647 ; 4 uses
  %.not.i9.i.i1622 = icmp samesign ult i32 %i.bir, %spec.select.i.i1621
  %.pre8.i1623 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1622, label %bb.vt, label %Vec_StrPush.exit.i1618

bb.vt:                                            ; preds = %bb.vs
  %.not9.i10.i.i1624 = icmp eq ptr %.pre8.i1623, null
  %i.bja = zext nneg i32 %spec.select.i.i1621 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1624, label %bb.vv, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.bjb = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1623, i64 noundef %i.bja) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1625

bb.vv:                                            ; preds = %bb.vt
  %i.bjc = tail call noalias ptr @malloc(i64 noundef %i.bja) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1625

Vec_StrGrow.exit11.sink.split.i.i1625:            ; preds = %bb.vv, %bb.vu, %bb.vr, %bb.vq
  %i.bjd = phi ptr [ %i.bix, %bb.vr ], [ %i.biw, %bb.vq ], [ %i.bjb, %bb.vu ], [ %i.bjc, %bb.vv ] ; 2 uses
  %spec.select.sink.i.i1626 = phi i32 [ 16, %bb.vr ], [ 16, %bb.vq ], [ %spec.select.i.i1621, %bb.vu ], [ %spec.select.i.i1621, %bb.vv ]
  store ptr %i.bjd, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1626, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1627 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1618

Vec_StrPush.exit.i1618:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1625, %bb.vs, %.Vec_StrPush.exit_crit_edge.i1616
  %i.bje = phi i32 [ %i.bir, %.Vec_StrPush.exit_crit_edge.i1616 ], [ %i.bir, %bb.vs ], [ %.pre9.i1627, %Vec_StrGrow.exit11.sink.split.i.i1625 ] ; 2 uses
  %i.bjf = phi ptr [ %.pre.i1617, %.Vec_StrPush.exit_crit_edge.i1616 ], [ %.pre8.i1623, %bb.vs ], [ %i.bjd, %Vec_StrGrow.exit11.sink.split.i.i1625 ]
  %i.bjg = add nsw i32 %i.bje, 1
  store i32 %i.bjg, ptr %i.da, align 4, !tbaa !23
  %i.bjh = sext i32 %i.bje to i64
  %i.bji = getelementptr inbounds i8, ptr %i.bjf, i64 %i.bjh
  store i8 %i.biq, ptr %i.bji, align 1, !tbaa !20
  %indvars.iv.next.i1619 = add nuw nsw i64 %indvars.iv.i1615, 1 ; 2 uses
  %exitcond.not.i1620 = icmp eq i64 %indvars.iv.next.i1619, 8
  br i1 %exitcond.not.i1620, label %Vec_StrPrintStr.exit1629, label %.lr.ph.i1613, !llvm.loop !2

Vec_StrPrintStr.exit1629:                         ; preds = %Vec_StrPush.exit.i1618
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.asp, i32 noundef 0, i32 noundef 0)
  %i.bjj = add nsw i32 %.83051, -1
  %i.bjk = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.117, i32 noundef %i.bjj) ; 0 uses
  %.val852.pre = load ptr, ptr %i.tp, align 8, !tbaa !27
  br label %bb.vw

bb.vw:                                            ; preds = %bb.va, %Vec_StrPrintStr.exit1629
  %.val852 = phi ptr [ %.val8523175, %bb.va ], [ %.val852.pre, %Vec_StrPrintStr.exit1629 ] ; 2 uses
  %i.bjl = add nsw i32 %.37803050, 1              ; 2 uses
  %i.bjm = add nuw nsw i32 %.83051, 1
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %.val852, i64 %i.bcq
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !28
  %i.bjp = icmp slt i32 %i.bjl, %i.bjo
  br i1 %i.bjp, label %bb.va, label %.lr.ph.i1631.preheader, !llvm.loop !83

.lr.ph.i1631.preheader:                           ; preds = %bb.vw, %Vec_StrPush.exit.i1589
  br label %.lr.ph.i1631

.lr.ph.i1631:                                     ; preds = %.lr.ph.i1631.preheader, %Vec_StrPush.exit.i1636
  %indvars.iv.i1633 = phi i64 [ %indvars.iv.next.i1637, %Vec_StrPush.exit.i1636 ], [ 0, %.lr.ph.i1631.preheader ] ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr @.str.118, i64 %indvars.iv.i1633
  %i.bjr = load i8, ptr %i.bjq, align 1, !tbaa !20
  %i.bjs = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bjt = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bju = icmp eq i32 %i.bjs, %i.bjt
  br i1 %i.bju, label %bb.vx, label %.Vec_StrPush.exit_crit_edge.i1634

.Vec_StrPush.exit_crit_edge.i1634:                ; preds = %.lr.ph.i1631
  %.pre.i1635 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1636

bb.vx:                                            ; preds = %.lr.ph.i1631
  %i.bjv = icmp slt i32 %i.bjs, 16
  br i1 %i.bjv, label %bb.vy, label %bb.wb

bb.vy:                                            ; preds = %bb.vx
  %i.bjw = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1646 = icmp eq ptr %i.bjw, null
  br i1 %.not9.i.i.i1646, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.bjx = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bjw, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1643

bb.wa:                                            ; preds = %bb.vy
  %i.bjy = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1643

bb.wb:                                            ; preds = %bb.vx
  %i.bjz = icmp samesign ult i32 %i.bjs, 1073741823
  %i.bka = shl nuw nsw i32 %i.bjs, 1
  %spec.select.i.i1639 = select i1 %i.bjz, i32 %i.bka, i32 2147483647 ; 4 uses
  %.not.i9.i.i1640 = icmp samesign ult i32 %i.bjs, %spec.select.i.i1639
  %.pre8.i1641 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1640, label %bb.wc, label %Vec_StrPush.exit.i1636

bb.wc:                                            ; preds = %bb.wb
  %.not9.i10.i.i1642 = icmp eq ptr %.pre8.i1641, null
  %i.bkb = zext nneg i32 %spec.select.i.i1639 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1642, label %bb.we, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.bkc = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1641, i64 noundef %i.bkb) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1643

bb.we:                                            ; preds = %bb.wc
  %i.bkd = tail call noalias ptr @malloc(i64 noundef %i.bkb) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1643

Vec_StrGrow.exit11.sink.split.i.i1643:            ; preds = %bb.we, %bb.wd, %bb.wa, %bb.vz
  %i.bke = phi ptr [ %i.bjy, %bb.wa ], [ %i.bjx, %bb.vz ], [ %i.bkc, %bb.wd ], [ %i.bkd, %bb.we ] ; 2 uses
  %spec.select.sink.i.i1644 = phi i32 [ 16, %bb.wa ], [ 16, %bb.vz ], [ %spec.select.i.i1639, %bb.wd ], [ %spec.select.i.i1639, %bb.we ]
  store ptr %i.bke, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1644, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1645 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1636

Vec_StrPush.exit.i1636:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1643, %bb.wb, %.Vec_StrPush.exit_crit_edge.i1634
  %i.bkf = phi i32 [ %i.bjs, %.Vec_StrPush.exit_crit_edge.i1634 ], [ %i.bjs, %bb.wb ], [ %.pre9.i1645, %Vec_StrGrow.exit11.sink.split.i.i1643 ] ; 2 uses
  %i.bkg = phi ptr [ %.pre.i1635, %.Vec_StrPush.exit_crit_edge.i1634 ], [ %.pre8.i1641, %bb.wb ], [ %i.bke, %Vec_StrGrow.exit11.sink.split.i.i1643 ]
  %i.bkh = add nsw i32 %i.bkf, 1
  store i32 %i.bkh, ptr %i.da, align 4, !tbaa !23
  %i.bki = sext i32 %i.bkf to i64
  %i.bkj = getelementptr inbounds i8, ptr %i.bkg, i64 %i.bki
  store i8 %i.bjr, ptr %i.bkj, align 1, !tbaa !20
  %indvars.iv.next.i1637 = add nuw nsw i64 %indvars.iv.i1633, 1 ; 2 uses
  %exitcond.not.i1638 = icmp eq i64 %indvars.iv.next.i1637, 12
  br i1 %exitcond.not.i1638, label %.lr.ph.i1649, label %.lr.ph.i1631, !llvm.loop !2

.lr.ph.i1649:                                     ; preds = %Vec_StrPush.exit.i1636, %Vec_StrPush.exit.i1654
  %indvars.iv.i1651 = phi i64 [ %indvars.iv.next.i1655, %Vec_StrPush.exit.i1654 ], [ 0, %Vec_StrPush.exit.i1636 ] ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr @.str.119, i64 %indvars.iv.i1651
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !20
  %i.bkm = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bkn = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bko = icmp eq i32 %i.bkm, %i.bkn
  br i1 %i.bko, label %bb.wf, label %.Vec_StrPush.exit_crit_edge.i1652

.Vec_StrPush.exit_crit_edge.i1652:                ; preds = %.lr.ph.i1649
  %.pre.i1653 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1654

bb.wf:                                            ; preds = %.lr.ph.i1649
  %i.bkp = icmp slt i32 %i.bkm, 16
  br i1 %i.bkp, label %bb.wg, label %bb.wj

bb.wg:                                            ; preds = %bb.wf
  %i.bkq = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1664 = icmp eq ptr %i.bkq, null
  br i1 %.not9.i.i.i1664, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %i.bkr = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bkq, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1661

bb.wi:                                            ; preds = %bb.wg
  %i.bks = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1661

bb.wj:                                            ; preds = %bb.wf
  %i.bkt = icmp samesign ult i32 %i.bkm, 1073741823
  %i.bku = shl nuw nsw i32 %i.bkm, 1
  %spec.select.i.i1657 = select i1 %i.bkt, i32 %i.bku, i32 2147483647 ; 4 uses
  %.not.i9.i.i1658 = icmp samesign ult i32 %i.bkm, %spec.select.i.i1657
  %.pre8.i1659 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1658, label %bb.wk, label %Vec_StrPush.exit.i1654

bb.wk:                                            ; preds = %bb.wj
  %.not9.i10.i.i1660 = icmp eq ptr %.pre8.i1659, null
  %i.bkv = zext nneg i32 %spec.select.i.i1657 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1660, label %bb.wm, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  %i.bkw = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1659, i64 noundef %i.bkv) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1661

bb.wm:                                            ; preds = %bb.wk
  %i.bkx = tail call noalias ptr @malloc(i64 noundef %i.bkv) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1661

Vec_StrGrow.exit11.sink.split.i.i1661:            ; preds = %bb.wm, %bb.wl, %bb.wi, %bb.wh
  %i.bky = phi ptr [ %i.bks, %bb.wi ], [ %i.bkr, %bb.wh ], [ %i.bkw, %bb.wl ], [ %i.bkx, %bb.wm ] ; 2 uses
  %spec.select.sink.i.i1662 = phi i32 [ 16, %bb.wi ], [ 16, %bb.wh ], [ %spec.select.i.i1657, %bb.wl ], [ %spec.select.i.i1657, %bb.wm ]
  store ptr %i.bky, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1662, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1663 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1654

Vec_StrPush.exit.i1654:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1661, %bb.wj, %.Vec_StrPush.exit_crit_edge.i1652
  %i.bkz = phi i32 [ %i.bkm, %.Vec_StrPush.exit_crit_edge.i1652 ], [ %i.bkm, %bb.wj ], [ %.pre9.i1663, %Vec_StrGrow.exit11.sink.split.i.i1661 ] ; 2 uses
  %i.bla = phi ptr [ %.pre.i1653, %.Vec_StrPush.exit_crit_edge.i1652 ], [ %.pre8.i1659, %bb.wj ], [ %i.bky, %Vec_StrGrow.exit11.sink.split.i.i1661 ]
  %i.blb = add nsw i32 %i.bkz, 1
  store i32 %i.blb, ptr %i.da, align 4, !tbaa !23
  %i.blc = sext i32 %i.bkz to i64
  %i.bld = getelementptr inbounds i8, ptr %i.bla, i64 %i.blc
  store i8 %i.bkl, ptr %i.bld, align 1, !tbaa !20
  %indvars.iv.next.i1655 = add nuw nsw i64 %indvars.iv.i1651, 1 ; 2 uses
  %exitcond.not.i1656 = icmp eq i64 %indvars.iv.next.i1655, 14
  br i1 %exitcond.not.i1656, label %Vec_StrPrintStr.exit1665, label %.lr.ph.i1649, !llvm.loop !2

Vec_StrPrintStr.exit1665:                         ; preds = %Vec_StrPush.exit.i1654
  %.val983 = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.ble = ashr i32 %i.asp, 5
  %i.blf = sext i32 %i.ble to i64
  %i.blg = getelementptr inbounds [4 x i8], ptr %.val983, i64 %i.blf
  %i.blh = load i32, ptr %i.blg, align 4, !tbaa !28
  %i.bli = and i32 %i.asp, 31
  %i.blj = shl nuw i32 1, %i.bli
  %i.blk = and i32 %i.blh, %i.blj
  %.not816 = icmp eq i32 %i.blk, 0
  br i1 %.not816, label %.lr.ph.i1685, label %.lr.ph.i1667

.lr.ph.i1667:                                     ; preds = %Vec_StrPrintStr.exit1665, %Vec_StrPush.exit.i1672
  %indvars.iv.i1669 = phi i64 [ %indvars.iv.next.i1673, %Vec_StrPush.exit.i1672 ], [ 0, %Vec_StrPrintStr.exit1665 ] ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr @.str.105, i64 %indvars.iv.i1669
  %i.blm = load i8, ptr %i.bll, align 1, !tbaa !20
  %i.bln = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.blo = load i32, ptr %i.b, align 8, !tbaa !24
  %i.blp = icmp eq i32 %i.bln, %i.blo
  br i1 %i.blp, label %bb.wn, label %.Vec_StrPush.exit_crit_edge.i1670

.Vec_StrPush.exit_crit_edge.i1670:                ; preds = %.lr.ph.i1667
  %.pre.i1671 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1672

bb.wn:                                            ; preds = %.lr.ph.i1667
  %i.blq = icmp slt i32 %i.bln, 16
  br i1 %i.blq, label %bb.wo, label %bb.wr

bb.wo:                                            ; preds = %bb.wn
  %i.blr = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1682 = icmp eq ptr %i.blr, null
  br i1 %.not9.i.i.i1682, label %bb.wq, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.bls = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.blr, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1679

bb.wq:                                            ; preds = %bb.wo
  %i.blt = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1679

bb.wr:                                            ; preds = %bb.wn
  %i.blu = icmp samesign ult i32 %i.bln, 1073741823
  %i.blv = shl nuw nsw i32 %i.bln, 1
  %spec.select.i.i1675 = select i1 %i.blu, i32 %i.blv, i32 2147483647 ; 4 uses
  %.not.i9.i.i1676 = icmp samesign ult i32 %i.bln, %spec.select.i.i1675
  %.pre8.i1677 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1676, label %bb.ws, label %Vec_StrPush.exit.i1672

bb.ws:                                            ; preds = %bb.wr
  %.not9.i10.i.i1678 = icmp eq ptr %.pre8.i1677, null
  %i.blw = zext nneg i32 %spec.select.i.i1675 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1678, label %bb.wu, label %bb.wt

bb.wt:                                            ; preds = %bb.ws
  %i.blx = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1677, i64 noundef %i.blw) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1679

bb.wu:                                            ; preds = %bb.ws
  %i.bly = tail call noalias ptr @malloc(i64 noundef %i.blw) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1679

Vec_StrGrow.exit11.sink.split.i.i1679:            ; preds = %bb.wu, %bb.wt, %bb.wq, %bb.wp
  %i.blz = phi ptr [ %i.blt, %bb.wq ], [ %i.bls, %bb.wp ], [ %i.blx, %bb.wt ], [ %i.bly, %bb.wu ] ; 2 uses
  %spec.select.sink.i.i1680 = phi i32 [ 16, %bb.wq ], [ 16, %bb.wp ], [ %spec.select.i.i1675, %bb.wt ], [ %spec.select.i.i1675, %bb.wu ]
  store ptr %i.blz, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1680, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1681 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1672

Vec_StrPush.exit.i1672:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1679, %bb.wr, %.Vec_StrPush.exit_crit_edge.i1670
  %i.bma = phi i32 [ %i.bln, %.Vec_StrPush.exit_crit_edge.i1670 ], [ %i.bln, %bb.wr ], [ %.pre9.i1681, %Vec_StrGrow.exit11.sink.split.i.i1679 ] ; 2 uses
  %i.bmb = phi ptr [ %.pre.i1671, %.Vec_StrPush.exit_crit_edge.i1670 ], [ %.pre8.i1677, %bb.wr ], [ %i.blz, %Vec_StrGrow.exit11.sink.split.i.i1679 ]
  %i.bmc = add nsw i32 %i.bma, 1
  store i32 %i.bmc, ptr %i.da, align 4, !tbaa !23
  %i.bmd = sext i32 %i.bma to i64
  %i.bme = getelementptr inbounds i8, ptr %i.bmb, i64 %i.bmd
  store i8 %i.blm, ptr %i.bme, align 1, !tbaa !20
  %indvars.iv.next.i1673 = add nuw nsw i64 %indvars.iv.i1669, 1 ; 2 uses
  %exitcond.not.i1674 = icmp eq i64 %indvars.iv.next.i1673, 9
  br i1 %exitcond.not.i1674, label %Vec_StrPrintStr.exit1683, label %.lr.ph.i1667, !llvm.loop !2

.lr.ph.i1685:                                     ; preds = %Vec_StrPrintStr.exit1665, %Vec_StrPush.exit.i1690
  %indvars.iv.i1687 = phi i64 [ %indvars.iv.next.i1691, %Vec_StrPush.exit.i1690 ], [ 0, %Vec_StrPrintStr.exit1665 ] ; 2 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr @.str.84, i64 %indvars.iv.i1687
  %i.bmg = load i8, ptr %i.bmf, align 1, !tbaa !20
  %i.bmh = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bmi = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bmj = icmp eq i32 %i.bmh, %i.bmi
  br i1 %i.bmj, label %bb.wv, label %.Vec_StrPush.exit_crit_edge.i1688

.Vec_StrPush.exit_crit_edge.i1688:                ; preds = %.lr.ph.i1685
  %.pre.i1689 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1690

bb.wv:                                            ; preds = %.lr.ph.i1685
  %i.bmk = icmp slt i32 %i.bmh, 16
  br i1 %i.bmk, label %bb.ww, label %bb.wz

bb.ww:                                            ; preds = %bb.wv
  %i.bml = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1700 = icmp eq ptr %i.bml, null
  br i1 %.not9.i.i.i1700, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bmm = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bml, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1697

bb.wy:                                            ; preds = %bb.ww
  %i.bmn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1697

bb.wz:                                            ; preds = %bb.wv
  %i.bmo = icmp samesign ult i32 %i.bmh, 1073741823
  %i.bmp = shl nuw nsw i32 %i.bmh, 1
  %spec.select.i.i1693 = select i1 %i.bmo, i32 %i.bmp, i32 2147483647 ; 4 uses
  %.not.i9.i.i1694 = icmp samesign ult i32 %i.bmh, %spec.select.i.i1693
  %.pre8.i1695 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1694, label %bb.xa, label %Vec_StrPush.exit.i1690

bb.xa:                                            ; preds = %bb.wz
  %.not9.i10.i.i1696 = icmp eq ptr %.pre8.i1695, null
  %i.bmq = zext nneg i32 %spec.select.i.i1693 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1696, label %bb.xc, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.bmr = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1695, i64 noundef %i.bmq) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1697

bb.xc:                                            ; preds = %bb.xa
  %i.bms = tail call noalias ptr @malloc(i64 noundef %i.bmq) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1697

Vec_StrGrow.exit11.sink.split.i.i1697:            ; preds = %bb.xc, %bb.xb, %bb.wy, %bb.wx
  %i.bmt = phi ptr [ %i.bmn, %bb.wy ], [ %i.bmm, %bb.wx ], [ %i.bmr, %bb.xb ], [ %i.bms, %bb.xc ] ; 2 uses
  %spec.select.sink.i.i1698 = phi i32 [ 16, %bb.wy ], [ 16, %bb.wx ], [ %spec.select.i.i1693, %bb.xb ], [ %spec.select.i.i1693, %bb.xc ]
  store ptr %i.bmt, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1698, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1699 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1690

Vec_StrPush.exit.i1690:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1697, %bb.wz, %.Vec_StrPush.exit_crit_edge.i1688
  %i.bmu = phi i32 [ %i.bmh, %.Vec_StrPush.exit_crit_edge.i1688 ], [ %i.bmh, %bb.wz ], [ %.pre9.i1699, %Vec_StrGrow.exit11.sink.split.i.i1697 ] ; 2 uses
  %i.bmv = phi ptr [ %.pre.i1689, %.Vec_StrPush.exit_crit_edge.i1688 ], [ %.pre8.i1695, %bb.wz ], [ %i.bmt, %Vec_StrGrow.exit11.sink.split.i.i1697 ]
  %i.bmw = add nsw i32 %i.bmu, 1
  store i32 %i.bmw, ptr %i.da, align 4, !tbaa !23
  %i.bmx = sext i32 %i.bmu to i64
  %i.bmy = getelementptr inbounds i8, ptr %i.bmv, i64 %i.bmx
  store i8 %i.bmg, ptr %i.bmy, align 1, !tbaa !20
  %indvars.iv.next.i1691 = add nuw nsw i64 %indvars.iv.i1687, 1 ; 2 uses
  %exitcond.not.i1692 = icmp eq i64 %indvars.iv.next.i1691, 7
  br i1 %exitcond.not.i1692, label %Vec_StrPrintStr.exit1701, label %.lr.ph.i1685, !llvm.loop !2

Vec_StrPrintStr.exit1701:                         ; preds = %Vec_StrPush.exit.i1690
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.asp)
  br label %Vec_StrPrintStr.exit1683

Vec_StrPrintStr.exit1683:                         ; preds = %Vec_StrPush.exit.i1672, %Vec_StrPrintStr.exit1701
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.asp, i32 noundef %1, i32 noundef 0)
  br label %bb.xd

bb.xd:                                            ; preds = %Vec_StrPush.exit.i1708, %Vec_StrPrintStr.exit1683
  %indvars.iv.i1705 = phi i64 [ 0, %Vec_StrPrintStr.exit1683 ], [ %indvars.iv.next.i1709, %Vec_StrPush.exit.i1708 ] ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr @.str.120, i64 %indvars.iv.i1705
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !20
  %i.bnb = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bnc = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bnd = icmp eq i32 %i.bnb, %i.bnc
  br i1 %i.bnd, label %bb.xe, label %.Vec_StrPush.exit_crit_edge.i1706

.Vec_StrPush.exit_crit_edge.i1706:                ; preds = %bb.xd
  %.pre.i1707 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1708

bb.xe:                                            ; preds = %bb.xd
  %i.bne = icmp slt i32 %i.bnb, 16
  br i1 %i.bne, label %bb.xf, label %bb.xi

bb.xf:                                            ; preds = %bb.xe
  %i.bnf = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1718 = icmp eq ptr %i.bnf, null
  br i1 %.not9.i.i.i1718, label %bb.xh, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.bng = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bnf, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1715

bb.xh:                                            ; preds = %bb.xf
  %i.bnh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1715

bb.xi:                                            ; preds = %bb.xe
  %i.bni = icmp samesign ult i32 %i.bnb, 1073741823
  %i.bnj = shl nuw nsw i32 %i.bnb, 1
  %spec.select.i.i1711 = select i1 %i.bni, i32 %i.bnj, i32 2147483647 ; 4 uses
  %.not.i9.i.i1712 = icmp samesign ult i32 %i.bnb, %spec.select.i.i1711
  %.pre8.i1713 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1712, label %bb.xj, label %Vec_StrPush.exit.i1708

bb.xj:                                            ; preds = %bb.xi
  %.not9.i10.i.i1714 = icmp eq ptr %.pre8.i1713, null
end_hunk_5
begin_hunk_6_@Cba_ManWriteVerilogNtk:bb.a
  %i.bpj = zext nneg i32 %spec.select.i.i1729.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1732.2, label %bb.yg, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.bpk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1731.2, i64 noundef %i.bpj) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1733.2

bb.yg:                                            ; preds = %bb.ye
  %i.bpl = tail call noalias ptr @malloc(i64 noundef %i.bpj) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1733.2

bb.yh:                                            ; preds = %bb.yc
  %i.bpm = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1736.2 = icmp eq ptr %i.bpm, null
  br i1 %.not9.i.i.i1736.2, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.bpn = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bpm, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1733.2

bb.yj:                                            ; preds = %bb.yh
  %i.bpo = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1733.2

Vec_StrGrow.exit11.sink.split.i.i1733.2:          ; preds = %bb.yj, %bb.yi, %bb.yg, %bb.yf
  %i.bpp = phi ptr [ %i.bpo, %bb.yj ], [ %i.bpn, %bb.yi ], [ %i.bpk, %bb.yf ], [ %i.bpl, %bb.yg ] ; 2 uses
  %spec.select.sink.i.i1734.2 = phi i32 [ 16, %bb.yj ], [ 16, %bb.yi ], [ %spec.select.i.i1729.2, %bb.yf ], [ %spec.select.i.i1729.2, %bb.yg ]
  store ptr %i.bpp, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1734.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1735.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1726.2

Vec_StrPush.exit.i1726.2:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1733.2, %bb.yd, %.Vec_StrPush.exit_crit_edge.i1724.2
  %i.bpq = phi i32 [ %i.bpd, %.Vec_StrPush.exit_crit_edge.i1724.2 ], [ %i.bpd, %bb.yd ], [ %.pre9.i1735.2, %Vec_StrGrow.exit11.sink.split.i.i1733.2 ] ; 2 uses
  %i.bpr = phi ptr [ %.pre.i1725.2, %.Vec_StrPush.exit_crit_edge.i1724.2 ], [ %.pre8.i1731.2, %bb.yd ], [ %i.bpp, %Vec_StrGrow.exit11.sink.split.i.i1733.2 ]
  %i.bps = add nsw i32 %i.bpq, 1
  store i32 %i.bps, ptr %i.da, align 4, !tbaa !23
  %i.bpt = sext i32 %i.bpq to i64
  %i.bpu = getelementptr inbounds i8, ptr %i.bpr, i64 %i.bpt
  store i8 32, ptr %i.bpu, align 1, !tbaa !20
  %.val851 = load ptr, ptr %i.tp, align 8, !tbaa !27 ; 2 uses
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %.val851, i64 %indvars.iv3111
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !28 ; 2 uses
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %.val851, i64 %i.bcq
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !28
  %i.bpz = icmp slt i32 %i.bpw, %i.bpy
  br i1 %i.bpz, label %Vec_StrPrintStr.exit1755.peel, label %.lr.ph.i1757

Vec_StrPrintStr.exit1755.peel:                    ; preds = %Vec_StrPush.exit.i1726.2
  %.val860.peel = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.bqa = sext i32 %i.bpw to i64                 ; 2 uses
  %i.bqb = getelementptr inbounds [4 x i8], ptr %.val860.peel, i64 %i.bqa
  %i.bqc = load i32, ptr %i.bqb, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.bqc, i32 noundef %1, i32 noundef 0)
  %indvars.iv.next3108.peel = add nsw i64 %i.bqa, 1 ; 2 uses
  %.val850.peel = load ptr, ptr %i.tp, align 8, !tbaa !27
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.val850.peel, i64 %i.bcq
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !28
  %i.bqf = sext i32 %i.bqe to i64
  %i.bqg = icmp slt i64 %indvars.iv.next3108.peel, %i.bqf
  br i1 %i.bqg, label %.lr.ph.i1739.preheader, label %.lr.ph.i1757

.lr.ph.i1739.preheader:                           ; preds = %Vec_StrPrintStr.exit1755.peel, %Vec_StrPrintStr.exit1755
  %indvars.iv3107 = phi i64 [ %indvars.iv.next3108, %Vec_StrPrintStr.exit1755 ], [ %indvars.iv.next3108.peel, %Vec_StrPrintStr.exit1755.peel ] ; 2 uses
  %.val860 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.bqh = getelementptr inbounds [4 x i8], ptr %.val860, i64 %indvars.iv3107
  %i.bqi = load i32, ptr %i.bqh, align 4, !tbaa !28
  %i.bqj = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bqk = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bql = icmp eq i32 %i.bqj, %i.bqk
  br i1 %i.bql, label %bb.yk, label %.Vec_StrPush.exit_crit_edge.i1742

.Vec_StrPush.exit_crit_edge.i1742:                ; preds = %.lr.ph.i1739.preheader
  %.pre.i1743 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1744

bb.yk:                                            ; preds = %.lr.ph.i1739.preheader
  %i.bqm = icmp slt i32 %i.bqj, 16
  br i1 %i.bqm, label %bb.yl, label %bb.yo

bb.yl:                                            ; preds = %bb.yk
  %i.bqn = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1754 = icmp eq ptr %i.bqn, null
  br i1 %.not9.i.i.i1754, label %bb.yn, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.bqo = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bqn, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1751

bb.yn:                                            ; preds = %bb.yl
  %i.bqp = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1751

bb.yo:                                            ; preds = %bb.yk
  %i.bqq = icmp samesign ult i32 %i.bqj, 1073741823
  %i.bqr = shl nuw nsw i32 %i.bqj, 1
  %spec.select.i.i1747 = select i1 %i.bqq, i32 %i.bqr, i32 2147483647 ; 4 uses
  %.not.i9.i.i1748 = icmp samesign ult i32 %i.bqj, %spec.select.i.i1747
  %.pre8.i1749 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1748, label %bb.yp, label %Vec_StrPush.exit.i1744

bb.yp:                                            ; preds = %bb.yo
  %.not9.i10.i.i1750 = icmp eq ptr %.pre8.i1749, null
  %i.bqs = zext nneg i32 %spec.select.i.i1747 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1750, label %bb.yr, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.bqt = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1749, i64 noundef %i.bqs) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1751

bb.yr:                                            ; preds = %bb.yp
  %i.bqu = tail call noalias ptr @malloc(i64 noundef %i.bqs) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1751

Vec_StrGrow.exit11.sink.split.i.i1751:            ; preds = %bb.yr, %bb.yq, %bb.yn, %bb.ym
  %i.bqv = phi ptr [ %i.bqp, %bb.yn ], [ %i.bqo, %bb.ym ], [ %i.bqt, %bb.yq ], [ %i.bqu, %bb.yr ] ; 2 uses
  %spec.select.sink.i.i1752 = phi i32 [ 16, %bb.yn ], [ 16, %bb.ym ], [ %spec.select.i.i1747, %bb.yq ], [ %spec.select.i.i1747, %bb.yr ]
  store ptr %i.bqv, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1752, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1753 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1744

Vec_StrPush.exit.i1744:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1751, %bb.yo, %.Vec_StrPush.exit_crit_edge.i1742
  %i.bqw = phi i32 [ %i.bqj, %.Vec_StrPush.exit_crit_edge.i1742 ], [ %i.bqj, %bb.yo ], [ %.pre9.i1753, %Vec_StrGrow.exit11.sink.split.i.i1751 ] ; 2 uses
  %i.bqx = phi ptr [ %.pre.i1743, %.Vec_StrPush.exit_crit_edge.i1742 ], [ %.pre8.i1749, %bb.yo ], [ %i.bqv, %Vec_StrGrow.exit11.sink.split.i.i1751 ]
  %i.bqy = add nsw i32 %i.bqw, 1
  store i32 %i.bqy, ptr %i.da, align 4, !tbaa !23
  %i.bqz = sext i32 %i.bqw to i64
  %i.bra = getelementptr inbounds i8, ptr %i.bqx, i64 %i.bqz
  store i8 44, ptr %i.bra, align 1, !tbaa !20
  %i.brb = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.brc = load i32, ptr %i.b, align 8, !tbaa !24
  %i.brd = icmp eq i32 %i.brb, %i.brc
  br i1 %i.brd, label %bb.ys, label %.Vec_StrPush.exit_crit_edge.i1742.1

.Vec_StrPush.exit_crit_edge.i1742.1:              ; preds = %Vec_StrPush.exit.i1744
  %.pre.i1743.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1755

bb.ys:                                            ; preds = %Vec_StrPush.exit.i1744
  %i.bre = icmp slt i32 %i.brb, 16
  br i1 %i.bre, label %bb.yx, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.brf = icmp samesign ult i32 %i.brb, 1073741823
  %i.brg = shl nuw nsw i32 %i.brb, 1
  %spec.select.i.i1747.1 = select i1 %i.brf, i32 %i.brg, i32 2147483647 ; 4 uses
  %.not.i9.i.i1748.1 = icmp samesign ult i32 %i.brb, %spec.select.i.i1747.1
  %.pre8.i1749.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1748.1, label %bb.yu, label %Vec_StrPrintStr.exit1755

bb.yu:                                            ; preds = %bb.yt
  %.not9.i10.i.i1750.1 = icmp eq ptr %.pre8.i1749.1, null
  %i.brh = zext nneg i32 %spec.select.i.i1747.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1750.1, label %bb.yw, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %i.bri = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1749.1, i64 noundef %i.brh) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1751.1

bb.yw:                                            ; preds = %bb.yu
  %i.brj = tail call noalias ptr @malloc(i64 noundef %i.brh) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1751.1

bb.yx:                                            ; preds = %bb.ys
  %i.brk = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1754.1 = icmp eq ptr %i.brk, null
  br i1 %.not9.i.i.i1754.1, label %bb.yz, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.brl = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.brk, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1751.1

bb.yz:                                            ; preds = %bb.yx
  %i.brm = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1751.1

Vec_StrGrow.exit11.sink.split.i.i1751.1:          ; preds = %bb.yz, %bb.yy, %bb.yw, %bb.yv
  %i.brn = phi ptr [ %i.brm, %bb.yz ], [ %i.brl, %bb.yy ], [ %i.bri, %bb.yv ], [ %i.brj, %bb.yw ] ; 2 uses
  %spec.select.sink.i.i1752.1 = phi i32 [ 16, %bb.yz ], [ 16, %bb.yy ], [ %spec.select.i.i1747.1, %bb.yv ], [ %spec.select.i.i1747.1, %bb.yw ]
  store ptr %i.brn, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1752.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1753.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1755

Vec_StrPrintStr.exit1755:                         ; preds = %.Vec_StrPush.exit_crit_edge.i1742.1, %bb.yt, %Vec_StrGrow.exit11.sink.split.i.i1751.1
  %i.bro = phi i32 [ %i.brb, %.Vec_StrPush.exit_crit_edge.i1742.1 ], [ %i.brb, %bb.yt ], [ %.pre9.i1753.1, %Vec_StrGrow.exit11.sink.split.i.i1751.1 ] ; 2 uses
  %i.brp = phi ptr [ %.pre.i1743.1, %.Vec_StrPush.exit_crit_edge.i1742.1 ], [ %.pre8.i1749.1, %bb.yt ], [ %i.brn, %Vec_StrGrow.exit11.sink.split.i.i1751.1 ]
  %i.brq = add nsw i32 %i.bro, 1
  store i32 %i.brq, ptr %i.da, align 4, !tbaa !23
  %i.brr = sext i32 %i.bro to i64
  %i.brs = getelementptr inbounds i8, ptr %i.brp, i64 %i.brr
  store i8 32, ptr %i.brs, align 1, !tbaa !20
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.bqi, i32 noundef %1, i32 noundef 0)
  %indvars.iv.next3108 = add nsw i64 %indvars.iv3107, 1 ; 2 uses
  %.val850 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %.val850, i64 %i.bcq
  %i.bru = load i32, ptr %i.brt, align 4, !tbaa !28
  %i.brv = sext i32 %i.bru to i64
  %i.brw = icmp slt i64 %indvars.iv.next3108, %i.brv
  br i1 %i.brw, label %.lr.ph.i1739.preheader, label %.lr.ph.i1757, !llvm.loop !84

.lr.ph.i1757:                                     ; preds = %Vec_StrPrintStr.exit1755, %Vec_StrPrintStr.exit1755.peel, %Vec_StrPush.exit.i1726.2
  %i.brx = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bry = load i32, ptr %i.b, align 8, !tbaa !24
  %i.brz = icmp eq i32 %i.brx, %i.bry
  br i1 %i.brz, label %bb.za, label %.Vec_StrPush.exit_crit_edge.i1760

.Vec_StrPush.exit_crit_edge.i1760:                ; preds = %.lr.ph.i1757
  %.pre.i1761 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1762

bb.za:                                            ; preds = %.lr.ph.i1757
  %i.bsa = icmp slt i32 %i.brx, 16
  br i1 %i.bsa, label %bb.zb, label %bb.ze

bb.zb:                                            ; preds = %bb.za
  %i.bsb = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1772 = icmp eq ptr %i.bsb, null
  br i1 %.not9.i.i.i1772, label %bb.zd, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.bsc = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bsb, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1769

bb.zd:                                            ; preds = %bb.zb
  %i.bsd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1769

bb.ze:                                            ; preds = %bb.za
  %i.bse = icmp samesign ult i32 %i.brx, 1073741823
  %i.bsf = shl nuw nsw i32 %i.brx, 1
  %spec.select.i.i1765 = select i1 %i.bse, i32 %i.bsf, i32 2147483647 ; 4 uses
  %.not.i9.i.i1766 = icmp samesign ult i32 %i.brx, %spec.select.i.i1765
  %.pre8.i1767 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1766, label %bb.zf, label %Vec_StrPush.exit.i1762

bb.zf:                                            ; preds = %bb.ze
  %.not9.i10.i.i1768 = icmp eq ptr %.pre8.i1767, null
  %i.bsg = zext nneg i32 %spec.select.i.i1765 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1768, label %bb.zh, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.bsh = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1767, i64 noundef %i.bsg) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1769

bb.zh:                                            ; preds = %bb.zf
  %i.bsi = tail call noalias ptr @malloc(i64 noundef %i.bsg) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1769

Vec_StrGrow.exit11.sink.split.i.i1769:            ; preds = %bb.zh, %bb.zg, %bb.zd, %bb.zc
  %i.bsj = phi ptr [ %i.bsd, %bb.zd ], [ %i.bsc, %bb.zc ], [ %i.bsh, %bb.zg ], [ %i.bsi, %bb.zh ] ; 2 uses
  %spec.select.sink.i.i1770 = phi i32 [ 16, %bb.zd ], [ 16, %bb.zc ], [ %spec.select.i.i1765, %bb.zg ], [ %spec.select.i.i1765, %bb.zh ]
  store ptr %i.bsj, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1770, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1771 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1762

Vec_StrPush.exit.i1762:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1769, %bb.ze, %.Vec_StrPush.exit_crit_edge.i1760
  %i.bsk = phi i32 [ %i.brx, %.Vec_StrPush.exit_crit_edge.i1760 ], [ %i.brx, %bb.ze ], [ %.pre9.i1771, %Vec_StrGrow.exit11.sink.split.i.i1769 ] ; 2 uses
  %i.bsl = phi ptr [ %.pre.i1761, %.Vec_StrPush.exit_crit_edge.i1760 ], [ %.pre8.i1767, %bb.ze ], [ %i.bsj, %Vec_StrGrow.exit11.sink.split.i.i1769 ]
  %i.bsm = add nsw i32 %i.bsk, 1
  store i32 %i.bsm, ptr %i.da, align 4, !tbaa !23
  %i.bsn = sext i32 %i.bsk to i64
  %i.bso = getelementptr inbounds i8, ptr %i.bsl, i64 %i.bsn
  store i8 32, ptr %i.bso, align 1, !tbaa !20
  %i.bsp = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bsq = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bsr = icmp eq i32 %i.bsp, %i.bsq
  br i1 %i.bsr, label %bb.zi, label %.Vec_StrPush.exit_crit_edge.i1760.1

.Vec_StrPush.exit_crit_edge.i1760.1:              ; preds = %Vec_StrPush.exit.i1762
  %.pre.i1761.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1762.1

bb.zi:                                            ; preds = %Vec_StrPush.exit.i1762
  %i.bss = icmp slt i32 %i.bsp, 16
  br i1 %i.bss, label %bb.zn, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  %i.bst = icmp samesign ult i32 %i.bsp, 1073741823
  %i.bsu = shl nuw nsw i32 %i.bsp, 1
  %spec.select.i.i1765.1 = select i1 %i.bst, i32 %i.bsu, i32 2147483647 ; 4 uses
  %.not.i9.i.i1766.1 = icmp samesign ult i32 %i.bsp, %spec.select.i.i1765.1
  %.pre8.i1767.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1766.1, label %bb.zk, label %Vec_StrPush.exit.i1762.1

bb.zk:                                            ; preds = %bb.zj
  %.not9.i10.i.i1768.1 = icmp eq ptr %.pre8.i1767.1, null
  %i.bsv = zext nneg i32 %spec.select.i.i1765.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1768.1, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.bsw = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1767.1, i64 noundef %i.bsv) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.1

bb.zm:                                            ; preds = %bb.zk
  %i.bsx = tail call noalias ptr @malloc(i64 noundef %i.bsv) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.1

bb.zn:                                            ; preds = %bb.zi
  %i.bsy = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1772.1 = icmp eq ptr %i.bsy, null
  br i1 %.not9.i.i.i1772.1, label %bb.zp, label %bb.zo

bb.zo:                                            ; preds = %bb.zn
  %i.bsz = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bsy, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.1

bb.zp:                                            ; preds = %bb.zn
  %i.bta = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.1

Vec_StrGrow.exit11.sink.split.i.i1769.1:          ; preds = %bb.zp, %bb.zo, %bb.zm, %bb.zl
  %i.btb = phi ptr [ %i.bta, %bb.zp ], [ %i.bsz, %bb.zo ], [ %i.bsw, %bb.zl ], [ %i.bsx, %bb.zm ] ; 2 uses
  %spec.select.sink.i.i1770.1 = phi i32 [ 16, %bb.zp ], [ 16, %bb.zo ], [ %spec.select.i.i1765.1, %bb.zl ], [ %spec.select.i.i1765.1, %bb.zm ]
  store ptr %i.btb, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1770.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1771.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1762.1

Vec_StrPush.exit.i1762.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1769.1, %bb.zj, %.Vec_StrPush.exit_crit_edge.i1760.1
  %i.btc = phi i32 [ %i.bsp, %.Vec_StrPush.exit_crit_edge.i1760.1 ], [ %i.bsp, %bb.zj ], [ %.pre9.i1771.1, %Vec_StrGrow.exit11.sink.split.i.i1769.1 ] ; 2 uses
  %i.btd = phi ptr [ %.pre.i1761.1, %.Vec_StrPush.exit_crit_edge.i1760.1 ], [ %.pre8.i1767.1, %bb.zj ], [ %i.btb, %Vec_StrGrow.exit11.sink.split.i.i1769.1 ]
  %i.bte = add nsw i32 %i.btc, 1
  store i32 %i.bte, ptr %i.da, align 4, !tbaa !23
  %i.btf = sext i32 %i.btc to i64
  %i.btg = getelementptr inbounds i8, ptr %i.btd, i64 %i.btf
  store i8 41, ptr %i.btg, align 1, !tbaa !20
  %i.bth = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.bti = load i32, ptr %i.b, align 8, !tbaa !24
  %i.btj = icmp eq i32 %i.bth, %i.bti
  br i1 %i.btj, label %bb.zq, label %.Vec_StrPush.exit_crit_edge.i1760.2

.Vec_StrPush.exit_crit_edge.i1760.2:              ; preds = %Vec_StrPush.exit.i1762.1
  %.pre.i1761.2 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1354

bb.zq:                                            ; preds = %Vec_StrPush.exit.i1762.1
  %i.btk = icmp slt i32 %i.bth, 16
  br i1 %i.btk, label %bb.zv, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  %i.btl = icmp samesign ult i32 %i.bth, 1073741823
  %i.btm = shl nuw nsw i32 %i.bth, 1
  %spec.select.i.i1765.2 = select i1 %i.btl, i32 %i.btm, i32 2147483647 ; 4 uses
  %.not.i9.i.i1766.2 = icmp samesign ult i32 %i.bth, %spec.select.i.i1765.2
  %.pre8.i1767.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1766.2, label %bb.zs, label %Vec_StrPrintStr.exit1354

bb.zs:                                            ; preds = %bb.zr
  %.not9.i10.i.i1768.2 = icmp eq ptr %.pre8.i1767.2, null
  %i.btn = zext nneg i32 %spec.select.i.i1765.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1768.2, label %bb.zu, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.bto = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1767.2, i64 noundef %i.btn) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.2

bb.zu:                                            ; preds = %bb.zs
  %i.btp = tail call noalias ptr @malloc(i64 noundef %i.btn) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.2

bb.zv:                                            ; preds = %bb.zq
  %i.btq = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1772.2 = icmp eq ptr %i.btq, null
  br i1 %.not9.i.i.i1772.2, label %bb.zx, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.btr = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.btq, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.2

bb.zx:                                            ; preds = %bb.zv
  %i.bts = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1769.2

Vec_StrGrow.exit11.sink.split.i.i1769.2:          ; preds = %bb.zx, %bb.zw, %bb.zu, %bb.zt
  %i.btt = phi ptr [ %i.bts, %bb.zx ], [ %i.btr, %bb.zw ], [ %i.bto, %bb.zt ], [ %i.btp, %bb.zu ] ; 2 uses
  %spec.select.sink.i.i1770.2 = phi i32 [ 16, %bb.zx ], [ 16, %bb.zw ], [ %spec.select.i.i1765.2, %bb.zt ], [ %spec.select.i.i1765.2, %bb.zu ]
  store ptr %i.btt, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1770.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1771.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.zy:                                            ; preds = %bb.oz
  %i.btu = icmp eq i8 %i.ul, 45
  br i1 %i.btu, label %.lr.ph.i1775, label %bb.aic

.lr.ph.i1775:                                     ; preds = %bb.zy
  %.val935 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val936 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.btv = getelementptr inbounds nuw [4 x i8], ptr %.val935, i64 %indvars.iv3111
  %i.btw = load i32, ptr %i.btv, align 4, !tbaa !28
  %i.btx = sext i32 %i.btw to i64
  %i.bty = getelementptr inbounds [4 x i8], ptr %.val936, i64 %i.btx
  %i.btz = load i32, ptr %i.bty, align 4, !tbaa !28 ; 3 uses
  %.val964 = load ptr, ptr %i.to, align 8, !tbaa !27
  %i.bua = getelementptr inbounds nuw [4 x i8], ptr %.val964, i64 %indvars.iv3111
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !28 ; 9 uses
  %i.buc = tail call fastcc i32 @Cba_FonRangeSize(ptr noundef nonnull %0, i32 noundef %i.btz) ; 5 uses
  %i.bud = tail call fastcc i32 @Cba_FonRangeSize(ptr noundef nonnull %0, i32 noundef %i.bub) ; 2 uses
end_hunk_6
begin_hunk_7_@Cba_ManWriteVerilogNtk:bb.a

bb.adm:                                           ; preds = %bb.adl
  %.not9.i10.i.i1858.1 = icmp eq ptr %.pre8.i1857.1, null
  %i.cce = zext nneg i32 %spec.select.i.i1855.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1858.1, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  %i.ccf = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1857.1, i64 noundef %i.cce) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.1

bb.ado:                                           ; preds = %bb.adm
  %i.ccg = tail call noalias ptr @malloc(i64 noundef %i.cce) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.1

bb.adp:                                           ; preds = %bb.adk
  %i.cch = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1862.1 = icmp eq ptr %i.cch, null
  br i1 %.not9.i.i.i1862.1, label %bb.adr, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  %i.cci = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cch, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.1

bb.adr:                                           ; preds = %bb.adp
  %i.ccj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.1

Vec_StrGrow.exit11.sink.split.i.i1859.1:          ; preds = %bb.adr, %bb.adq, %bb.ado, %bb.adn
  %i.cck = phi ptr [ %i.ccj, %bb.adr ], [ %i.cci, %bb.adq ], [ %i.ccf, %bb.adn ], [ %i.ccg, %bb.ado ] ; 2 uses
  %spec.select.sink.i.i1860.1 = phi i32 [ 16, %bb.adr ], [ 16, %bb.adq ], [ %spec.select.i.i1855.1, %bb.adn ], [ %spec.select.i.i1855.1, %bb.ado ]
  store ptr %i.cck, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1860.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1861.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1852.1

Vec_StrPush.exit.i1852.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1859.1, %bb.adl, %.Vec_StrPush.exit_crit_edge.i1850.1
  %i.ccl = phi i32 [ %i.cby, %.Vec_StrPush.exit_crit_edge.i1850.1 ], [ %i.cby, %bb.adl ], [ %.pre9.i1861.1, %Vec_StrGrow.exit11.sink.split.i.i1859.1 ] ; 2 uses
  %i.ccm = phi ptr [ %.pre.i1851.1, %.Vec_StrPush.exit_crit_edge.i1850.1 ], [ %.pre8.i1857.1, %bb.adl ], [ %i.cck, %Vec_StrGrow.exit11.sink.split.i.i1859.1 ]
  %i.ccn = add nsw i32 %i.ccl, 1
  store i32 %i.ccn, ptr %i.da, align 4, !tbaa !23
  %i.cco = sext i32 %i.ccl to i64
  %i.ccp = getelementptr inbounds i8, ptr %i.ccm, i64 %i.cco
  store i8 59, ptr %i.ccp, align 1, !tbaa !20
  %i.ccq = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ccr = load i32, ptr %i.b, align 8, !tbaa !24
  %i.ccs = icmp eq i32 %i.ccq, %i.ccr
  br i1 %i.ccs, label %bb.ads, label %.Vec_StrPush.exit_crit_edge.i1850.2

.Vec_StrPush.exit_crit_edge.i1850.2:              ; preds = %Vec_StrPush.exit.i1852.1
  %.pre.i1851.2 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1852.2

bb.ads:                                           ; preds = %Vec_StrPush.exit.i1852.1
  %i.cct = icmp slt i32 %i.ccq, 16
  br i1 %i.cct, label %bb.adx, label %bb.adt

bb.adt:                                           ; preds = %bb.ads
  %i.ccu = icmp samesign ult i32 %i.ccq, 1073741823
  %i.ccv = shl nuw nsw i32 %i.ccq, 1
  %spec.select.i.i1855.2 = select i1 %i.ccu, i32 %i.ccv, i32 2147483647 ; 4 uses
  %.not.i9.i.i1856.2 = icmp samesign ult i32 %i.ccq, %spec.select.i.i1855.2
  %.pre8.i1857.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1856.2, label %bb.adu, label %Vec_StrPush.exit.i1852.2

bb.adu:                                           ; preds = %bb.adt
  %.not9.i10.i.i1858.2 = icmp eq ptr %.pre8.i1857.2, null
  %i.ccw = zext nneg i32 %spec.select.i.i1855.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1858.2, label %bb.adw, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.ccx = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1857.2, i64 noundef %i.ccw) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.2

bb.adw:                                           ; preds = %bb.adu
  %i.ccy = tail call noalias ptr @malloc(i64 noundef %i.ccw) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.2

bb.adx:                                           ; preds = %bb.ads
  %i.ccz = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1862.2 = icmp eq ptr %i.ccz, null
  br i1 %.not9.i.i.i1862.2, label %bb.adz, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  %i.cda = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ccz, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.2

bb.adz:                                           ; preds = %bb.adx
  %i.cdb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1859.2

Vec_StrGrow.exit11.sink.split.i.i1859.2:          ; preds = %bb.adz, %bb.ady, %bb.adw, %bb.adv
  %i.cdc = phi ptr [ %i.cdb, %bb.adz ], [ %i.cda, %bb.ady ], [ %i.ccx, %bb.adv ], [ %i.ccy, %bb.adw ] ; 2 uses
  %spec.select.sink.i.i1860.2 = phi i32 [ 16, %bb.adz ], [ 16, %bb.ady ], [ %spec.select.i.i1855.2, %bb.adv ], [ %spec.select.i.i1855.2, %bb.adw ]
  store ptr %i.cdc, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1860.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1861.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1852.2

Vec_StrPush.exit.i1852.2:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1859.2, %bb.adt, %.Vec_StrPush.exit_crit_edge.i1850.2
  %i.cdd = phi i32 [ %i.ccq, %.Vec_StrPush.exit_crit_edge.i1850.2 ], [ %i.ccq, %bb.adt ], [ %.pre9.i1861.2, %Vec_StrGrow.exit11.sink.split.i.i1859.2 ] ; 2 uses
  %i.cde = phi ptr [ %.pre.i1851.2, %.Vec_StrPush.exit_crit_edge.i1850.2 ], [ %.pre8.i1857.2, %bb.adt ], [ %i.cdc, %Vec_StrGrow.exit11.sink.split.i.i1859.2 ]
  %i.cdf = add nsw i32 %i.cdd, 1
  store i32 %i.cdf, ptr %i.da, align 4, !tbaa !23
  %i.cdg = sext i32 %i.cdd to i64
  %i.cdh = getelementptr inbounds i8, ptr %i.cde, i64 %i.cdg
  store i8 10, ptr %i.cdh, align 1, !tbaa !20
  br label %.lr.ph.i1865

.lr.ph.i1865:                                     ; preds = %Vec_StrPush.exit.i1852.2, %Vec_StrPush.exit.i1870
  %indvars.iv.i1867 = phi i64 [ %indvars.iv.next.i1871, %Vec_StrPush.exit.i1870 ], [ 0, %Vec_StrPush.exit.i1852.2 ] ; 2 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr @.str.122, i64 %indvars.iv.i1867
  %i.cdj = load i8, ptr %i.cdi, align 1, !tbaa !20
  %i.cdk = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.cdl = load i32, ptr %i.b, align 8, !tbaa !24
  %i.cdm = icmp eq i32 %i.cdk, %i.cdl
  br i1 %i.cdm, label %bb.aea, label %.Vec_StrPush.exit_crit_edge.i1868

.Vec_StrPush.exit_crit_edge.i1868:                ; preds = %.lr.ph.i1865
  %.pre.i1869 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1870

bb.aea:                                           ; preds = %.lr.ph.i1865
  %i.cdn = icmp slt i32 %i.cdk, 16
  br i1 %i.cdn, label %bb.aeb, label %bb.aee

bb.aeb:                                           ; preds = %bb.aea
  %i.cdo = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1880 = icmp eq ptr %i.cdo, null
  br i1 %.not9.i.i.i1880, label %bb.aed, label %bb.aec

bb.aec:                                           ; preds = %bb.aeb
  %i.cdp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cdo, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1877

bb.aed:                                           ; preds = %bb.aeb
  %i.cdq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1877

bb.aee:                                           ; preds = %bb.aea
  %i.cdr = icmp samesign ult i32 %i.cdk, 1073741823
  %i.cds = shl nuw nsw i32 %i.cdk, 1
  %spec.select.i.i1873 = select i1 %i.cdr, i32 %i.cds, i32 2147483647 ; 4 uses
  %.not.i9.i.i1874 = icmp samesign ult i32 %i.cdk, %spec.select.i.i1873
  %.pre8.i1875 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1874, label %bb.aef, label %Vec_StrPush.exit.i1870

bb.aef:                                           ; preds = %bb.aee
  %.not9.i10.i.i1876 = icmp eq ptr %.pre8.i1875, null
  %i.cdt = zext nneg i32 %spec.select.i.i1873 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1876, label %bb.aeh, label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef
  %i.cdu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1875, i64 noundef %i.cdt) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1877

bb.aeh:                                           ; preds = %bb.aef
  %i.cdv = tail call noalias ptr @malloc(i64 noundef %i.cdt) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1877

Vec_StrGrow.exit11.sink.split.i.i1877:            ; preds = %bb.aeh, %bb.aeg, %bb.aed, %bb.aec
  %i.cdw = phi ptr [ %i.cdq, %bb.aed ], [ %i.cdp, %bb.aec ], [ %i.cdu, %bb.aeg ], [ %i.cdv, %bb.aeh ] ; 2 uses
  %spec.select.sink.i.i1878 = phi i32 [ 16, %bb.aed ], [ 16, %bb.aec ], [ %spec.select.i.i1873, %bb.aeg ], [ %spec.select.i.i1873, %bb.aeh ]
  store ptr %i.cdw, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1878, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1879 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1870

Vec_StrPush.exit.i1870:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1877, %bb.aee, %.Vec_StrPush.exit_crit_edge.i1868
  %i.cdx = phi i32 [ %i.cdk, %.Vec_StrPush.exit_crit_edge.i1868 ], [ %i.cdk, %bb.aee ], [ %.pre9.i1879, %Vec_StrGrow.exit11.sink.split.i.i1877 ] ; 2 uses
  %i.cdy = phi ptr [ %.pre.i1869, %.Vec_StrPush.exit_crit_edge.i1868 ], [ %.pre8.i1875, %bb.aee ], [ %i.cdw, %Vec_StrGrow.exit11.sink.split.i.i1877 ]
  %i.cdz = add nsw i32 %i.cdx, 1
  store i32 %i.cdz, ptr %i.da, align 4, !tbaa !23
  %i.cea = sext i32 %i.cdx to i64
  %i.ceb = getelementptr inbounds i8, ptr %i.cdy, i64 %i.cea
  store i8 %i.cdj, ptr %i.ceb, align 1, !tbaa !20
  %indvars.iv.next.i1871 = add nuw nsw i64 %indvars.iv.i1867, 1 ; 2 uses
  %exitcond.not.i1872 = icmp eq i64 %indvars.iv.next.i1871, 13
  br i1 %exitcond.not.i1872, label %Vec_StrPrintStr.exit1881.preheader, label %.lr.ph.i1865, !llvm.loop !2

Vec_StrPrintStr.exit1881.preheader:               ; preds = %Vec_StrPush.exit.i1870
  %.not3067 = icmp eq i32 %i.buc, 31
  br i1 %.not3067, label %.lr.ph.i1901.preheader, label %.lr.ph3041.a

.lr.ph3041.a:                                     ; preds = %Vec_StrPrintStr.exit1881.preheader
  %i.cec = shl nuw nsw i32 1, %i.buc
  %i.ced = icmp sgt i32 %i.buc, 0
  br label %bb.aei

bb.aei:                                           ; preds = %.lr.ph3041.a, %Vec_StrPrintStr.exit1899
  %.103040 = phi i32 [ 0, %.lr.ph3041.a ], [ %i.cfh, %Vec_StrPrintStr.exit1899 ] ; 3 uses
  %i.cee = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.115, i32 noundef %i.buc) ; 0 uses
  br i1 %i.ced, label %.lr.ph3039, label %.lr.ph.i1883.preheader

.lr.ph3039:                                       ; preds = %bb.aei, %.lr.ph3039
  %.1784.in3038 = phi i32 [ %.1784, %.lr.ph3039 ], [ %i.buc, %bb.aei ] ; 2 uses
  %.1784 = add nsw i32 %.1784.in3038, -1          ; 2 uses
  %i.cef = lshr i32 %.103040, %.1784
  %i.ceg = and i32 %i.cef, 1
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.b, i32 noundef %i.ceg)
  %i.ceh = icmp samesign ugt i32 %.1784.in3038, 1
  br i1 %i.ceh, label %.lr.ph3039, label %.lr.ph.i1883.preheader, !llvm.loop !85

.lr.ph.i1883.preheader:                           ; preds = %.lr.ph3039, %bb.aei
  br label %.lr.ph.i1883

.lr.ph.i1883:                                     ; preds = %.lr.ph.i1883.preheader, %Vec_StrPush.exit.i1888
  %indvars.iv.i1885 = phi i64 [ %indvars.iv.next.i1889, %Vec_StrPush.exit.i1888 ], [ 0, %.lr.ph.i1883.preheader ] ; 2 uses
  %i.cei = getelementptr inbounds nuw i8, ptr @.str.116, i64 %indvars.iv.i1885
  %i.cej = load i8, ptr %i.cei, align 1, !tbaa !20
  %i.cek = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.cel = load i32, ptr %i.b, align 8, !tbaa !24
  %i.cem = icmp eq i32 %i.cek, %i.cel
  br i1 %i.cem, label %bb.aej, label %.Vec_StrPush.exit_crit_edge.i1886

.Vec_StrPush.exit_crit_edge.i1886:                ; preds = %.lr.ph.i1883
  %.pre.i1887 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1888

bb.aej:                                           ; preds = %.lr.ph.i1883
  %i.cen = icmp slt i32 %i.cek, 16
  br i1 %i.cen, label %bb.aek, label %bb.aen

bb.aek:                                           ; preds = %bb.aej
  %i.ceo = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1898 = icmp eq ptr %i.ceo, null
  br i1 %.not9.i.i.i1898, label %bb.aem, label %bb.ael

bb.ael:                                           ; preds = %bb.aek
  %i.cep = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ceo, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1895

bb.aem:                                           ; preds = %bb.aek
  %i.ceq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1895

bb.aen:                                           ; preds = %bb.aej
  %i.cer = icmp samesign ult i32 %i.cek, 1073741823
  %i.ces = shl nuw nsw i32 %i.cek, 1
  %spec.select.i.i1891 = select i1 %i.cer, i32 %i.ces, i32 2147483647 ; 4 uses
  %.not.i9.i.i1892 = icmp samesign ult i32 %i.cek, %spec.select.i.i1891
  %.pre8.i1893 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1892, label %bb.aeo, label %Vec_StrPush.exit.i1888

bb.aeo:                                           ; preds = %bb.aen
  %.not9.i10.i.i1894 = icmp eq ptr %.pre8.i1893, null
  %i.cet = zext nneg i32 %spec.select.i.i1891 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1894, label %bb.aeq, label %bb.aep

bb.aep:                                           ; preds = %bb.aeo
  %i.ceu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1893, i64 noundef %i.cet) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1895

bb.aeq:                                           ; preds = %bb.aeo
  %i.cev = tail call noalias ptr @malloc(i64 noundef %i.cet) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1895

Vec_StrGrow.exit11.sink.split.i.i1895:            ; preds = %bb.aeq, %bb.aep, %bb.aem, %bb.ael
  %i.cew = phi ptr [ %i.ceq, %bb.aem ], [ %i.cep, %bb.ael ], [ %i.ceu, %bb.aep ], [ %i.cev, %bb.aeq ] ; 2 uses
  %spec.select.sink.i.i1896 = phi i32 [ 16, %bb.aem ], [ 16, %bb.ael ], [ %spec.select.i.i1891, %bb.aep ], [ %spec.select.i.i1891, %bb.aeq ]
  store ptr %i.cew, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1896, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1897 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1888

Vec_StrPush.exit.i1888:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1895, %bb.aen, %.Vec_StrPush.exit_crit_edge.i1886
  %i.cex = phi i32 [ %i.cek, %.Vec_StrPush.exit_crit_edge.i1886 ], [ %i.cek, %bb.aen ], [ %.pre9.i1897, %Vec_StrGrow.exit11.sink.split.i.i1895 ] ; 2 uses
  %i.cey = phi ptr [ %.pre.i1887, %.Vec_StrPush.exit_crit_edge.i1886 ], [ %.pre8.i1893, %bb.aen ], [ %i.cew, %Vec_StrGrow.exit11.sink.split.i.i1895 ]
  %i.cez = add nsw i32 %i.cex, 1
  store i32 %i.cez, ptr %i.da, align 4, !tbaa !23
  %i.cfa = sext i32 %i.cex to i64
  %i.cfb = getelementptr inbounds i8, ptr %i.cey, i64 %i.cfa
  store i8 %i.cej, ptr %i.cfb, align 1, !tbaa !20
  %indvars.iv.next.i1889 = add nuw nsw i64 %indvars.iv.i1885, 1 ; 2 uses
  %exitcond.not.i1890 = icmp eq i64 %indvars.iv.next.i1889, 8
  br i1 %exitcond.not.i1890, label %Vec_StrPrintStr.exit1899, label %.lr.ph.i1883, !llvm.loop !2

Vec_StrPrintStr.exit1899:                         ; preds = %Vec_StrPush.exit.i1888
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.bub, i32 noundef 0, i32 noundef 0)
  %i.cfc = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.123, i32 noundef %i.bud, i32 noundef %i.bud, i32 noundef 0) ; 0 uses
  %.val838 = load i32, ptr %i.da, align 4, !tbaa !23
  %i.cfd = sub nsw i32 %.val838, %.103040
  %.val991 = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.cfe = sext i32 %i.cfd to i64
  %i.cff = getelementptr i8, ptr %.val991, i64 %i.cfe
  %i.cfg = getelementptr i8, ptr %i.cff, i64 -3
  store i8 49, ptr %i.cfg, align 1, !tbaa !20
  %i.cfh = add nuw nsw i32 %.103040, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cfh, %i.cec
  br i1 %exitcond.not, label %.lr.ph.i1901.preheader, label %bb.aei, !llvm.loop !86

.lr.ph.i1901.preheader:                           ; preds = %Vec_StrPrintStr.exit1899, %Vec_StrPrintStr.exit1881.preheader
  br label %.lr.ph.i1901

.lr.ph.i1901:                                     ; preds = %.lr.ph.i1901.preheader, %Vec_StrPush.exit.i1906
  %indvars.iv.i1903 = phi i64 [ %indvars.iv.next.i1907, %Vec_StrPush.exit.i1906 ], [ 0, %.lr.ph.i1901.preheader ] ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr @.str.118, i64 %indvars.iv.i1903
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !20
  %i.cfk = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.cfl = load i32, ptr %i.b, align 8, !tbaa !24
  %i.cfm = icmp eq i32 %i.cfk, %i.cfl
  br i1 %i.cfm, label %bb.aer, label %.Vec_StrPush.exit_crit_edge.i1904

.Vec_StrPush.exit_crit_edge.i1904:                ; preds = %.lr.ph.i1901
  %.pre.i1905 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1906

bb.aer:                                           ; preds = %.lr.ph.i1901
  %i.cfn = icmp slt i32 %i.cfk, 16
  br i1 %i.cfn, label %bb.aes, label %bb.aev

bb.aes:                                           ; preds = %bb.aer
  %i.cfo = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1916 = icmp eq ptr %i.cfo, null
  br i1 %.not9.i.i.i1916, label %bb.aeu, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.cfp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cfo, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1913

bb.aeu:                                           ; preds = %bb.aes
  %i.cfq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1913

bb.aev:                                           ; preds = %bb.aer
  %i.cfr = icmp samesign ult i32 %i.cfk, 1073741823
  %i.cfs = shl nuw nsw i32 %i.cfk, 1
  %spec.select.i.i1909 = select i1 %i.cfr, i32 %i.cfs, i32 2147483647 ; 4 uses
  %.not.i9.i.i1910 = icmp samesign ult i32 %i.cfk, %spec.select.i.i1909
  %.pre8.i1911 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1910, label %bb.aew, label %Vec_StrPush.exit.i1906

bb.aew:                                           ; preds = %bb.aev
  %.not9.i10.i.i1912 = icmp eq ptr %.pre8.i1911, null
  %i.cft = zext nneg i32 %spec.select.i.i1909 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1912, label %bb.aey, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  %i.cfu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1911, i64 noundef %i.cft) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1913

bb.aey:                                           ; preds = %bb.aew
  %i.cfv = tail call noalias ptr @malloc(i64 noundef %i.cft) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1913

Vec_StrGrow.exit11.sink.split.i.i1913:            ; preds = %bb.aey, %bb.aex, %bb.aeu, %bb.aet
  %i.cfw = phi ptr [ %i.cfq, %bb.aeu ], [ %i.cfp, %bb.aet ], [ %i.cfu, %bb.aex ], [ %i.cfv, %bb.aey ] ; 2 uses
  %spec.select.sink.i.i1914 = phi i32 [ 16, %bb.aeu ], [ 16, %bb.aet ], [ %spec.select.i.i1909, %bb.aex ], [ %spec.select.i.i1909, %bb.aey ]
  store ptr %i.cfw, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1914, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1915 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1906

Vec_StrPush.exit.i1906:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1913, %bb.aev, %.Vec_StrPush.exit_crit_edge.i1904
  %i.cfx = phi i32 [ %i.cfk, %.Vec_StrPush.exit_crit_edge.i1904 ], [ %i.cfk, %bb.aev ], [ %.pre9.i1915, %Vec_StrGrow.exit11.sink.split.i.i1913 ] ; 2 uses
  %i.cfy = phi ptr [ %.pre.i1905, %.Vec_StrPush.exit_crit_edge.i1904 ], [ %.pre8.i1911, %bb.aev ], [ %i.cfw, %Vec_StrGrow.exit11.sink.split.i.i1913 ]
  %i.cfz = add nsw i32 %i.cfx, 1
  store i32 %i.cfz, ptr %i.da, align 4, !tbaa !23
  %i.cga = sext i32 %i.cfx to i64
  %i.cgb = getelementptr inbounds i8, ptr %i.cfy, i64 %i.cga
  store i8 %i.cfj, ptr %i.cgb, align 1, !tbaa !20
  %indvars.iv.next.i1907 = add nuw nsw i64 %indvars.iv.i1903, 1 ; 2 uses
  %exitcond.not.i1908 = icmp eq i64 %indvars.iv.next.i1907, 12
  br i1 %exitcond.not.i1908, label %.lr.ph.i1919, label %.lr.ph.i1901, !llvm.loop !2

.lr.ph.i1919:                                     ; preds = %Vec_StrPush.exit.i1906, %Vec_StrPush.exit.i1924
  %indvars.iv.i1921 = phi i64 [ %indvars.iv.next.i1925, %Vec_StrPush.exit.i1924 ], [ 0, %Vec_StrPush.exit.i1906 ] ; 2 uses
  %i.cgc = getelementptr inbounds nuw i8, ptr @.str.119, i64 %indvars.iv.i1921
  %i.cgd = load i8, ptr %i.cgc, align 1, !tbaa !20
  %i.cge = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.cgf = load i32, ptr %i.b, align 8, !tbaa !24
  %i.cgg = icmp eq i32 %i.cge, %i.cgf
  br i1 %i.cgg, label %bb.aez, label %.Vec_StrPush.exit_crit_edge.i1922

.Vec_StrPush.exit_crit_edge.i1922:                ; preds = %.lr.ph.i1919
  %.pre.i1923 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1924

bb.aez:                                           ; preds = %.lr.ph.i1919
  %i.cgh = icmp slt i32 %i.cge, 16
  br i1 %i.cgh, label %bb.afa, label %bb.afd

bb.afa:                                           ; preds = %bb.aez
  %i.cgi = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1934 = icmp eq ptr %i.cgi, null
  br i1 %.not9.i.i.i1934, label %bb.afc, label %bb.afb

bb.afb:                                           ; preds = %bb.afa
  %i.cgj = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cgi, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1931

bb.afc:                                           ; preds = %bb.afa
  %i.cgk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1931

bb.afd:                                           ; preds = %bb.aez
  %i.cgl = icmp samesign ult i32 %i.cge, 1073741823
  %i.cgm = shl nuw nsw i32 %i.cge, 1
  %spec.select.i.i1927 = select i1 %i.cgl, i32 %i.cgm, i32 2147483647 ; 4 uses
  %.not.i9.i.i1928 = icmp samesign ult i32 %i.cge, %spec.select.i.i1927
  %.pre8.i1929 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1928, label %bb.afe, label %Vec_StrPush.exit.i1924

bb.afe:                                           ; preds = %bb.afd
  %.not9.i10.i.i1930 = icmp eq ptr %.pre8.i1929, null
  %i.cgn = zext nneg i32 %spec.select.i.i1927 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1930, label %bb.afg, label %bb.aff

bb.aff:                                           ; preds = %bb.afe
  %i.cgo = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1929, i64 noundef %i.cgn) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1931

bb.afg:                                           ; preds = %bb.afe
  %i.cgp = tail call noalias ptr @malloc(i64 noundef %i.cgn) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1931

Vec_StrGrow.exit11.sink.split.i.i1931:            ; preds = %bb.afg, %bb.aff, %bb.afc, %bb.afb
  %i.cgq = phi ptr [ %i.cgk, %bb.afc ], [ %i.cgj, %bb.afb ], [ %i.cgo, %bb.aff ], [ %i.cgp, %bb.afg ] ; 2 uses
  %spec.select.sink.i.i1932 = phi i32 [ 16, %bb.afc ], [ 16, %bb.afb ], [ %spec.select.i.i1927, %bb.aff ], [ %spec.select.i.i1927, %bb.afg ]
  store ptr %i.cgq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1932, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1933 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1924

Vec_StrPush.exit.i1924:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1931, %bb.afd, %.Vec_StrPush.exit_crit_edge.i1922
  %i.cgr = phi i32 [ %i.cge, %.Vec_StrPush.exit_crit_edge.i1922 ], [ %i.cge, %bb.afd ], [ %.pre9.i1933, %Vec_StrGrow.exit11.sink.split.i.i1931 ] ; 2 uses
  %i.cgs = phi ptr [ %.pre.i1923, %.Vec_StrPush.exit_crit_edge.i1922 ], [ %.pre8.i1929, %bb.afd ], [ %i.cgq, %Vec_StrGrow.exit11.sink.split.i.i1931 ]
  %i.cgt = add nsw i32 %i.cgr, 1
  store i32 %i.cgt, ptr %i.da, align 4, !tbaa !23
  %i.cgu = sext i32 %i.cgr to i64
  %i.cgv = getelementptr inbounds i8, ptr %i.cgs, i64 %i.cgu
  store i8 %i.cgd, ptr %i.cgv, align 1, !tbaa !20
  %indvars.iv.next.i1925 = add nuw nsw i64 %indvars.iv.i1921, 1 ; 2 uses
  %exitcond.not.i1926 = icmp eq i64 %indvars.iv.next.i1925, 14
  br i1 %exitcond.not.i1926, label %Vec_StrPrintStr.exit1935, label %.lr.ph.i1919, !llvm.loop !2

Vec_StrPrintStr.exit1935:                         ; preds = %Vec_StrPush.exit.i1924
  %.val982 = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.cgw = ashr i32 %i.bub, 5
  %i.cgx = sext i32 %i.cgw to i64
  %i.cgy = getelementptr inbounds [4 x i8], ptr %.val982, i64 %i.cgx
  %i.cgz = load i32, ptr %i.cgy, align 4, !tbaa !28
  %i.cha = and i32 %i.bub, 31
  %i.chb = shl nuw i32 1, %i.cha
  %i.chc = and i32 %i.cgz, %i.chb
  %.not815 = icmp eq i32 %i.chc, 0
  br i1 %.not815, label %.lr.ph.i1955, label %.lr.ph.i1937

.lr.ph.i1937:                                     ; preds = %Vec_StrPrintStr.exit1935, %Vec_StrPush.exit.i1942
  %indvars.iv.i1939 = phi i64 [ %indvars.iv.next.i1943, %Vec_StrPush.exit.i1942 ], [ 0, %Vec_StrPrintStr.exit1935 ] ; 2 uses
  %i.chd = getelementptr inbounds nuw i8, ptr @.str.105, i64 %indvars.iv.i1939
  %i.che = load i8, ptr %i.chd, align 1, !tbaa !20
  %i.chf = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.chg = load i32, ptr %i.b, align 8, !tbaa !24
  %i.chh = icmp eq i32 %i.chf, %i.chg
  br i1 %i.chh, label %bb.afh, label %.Vec_StrPush.exit_crit_edge.i1940

.Vec_StrPush.exit_crit_edge.i1940:                ; preds = %.lr.ph.i1937
  %.pre.i1941 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1942

bb.afh:                                           ; preds = %.lr.ph.i1937
  %i.chi = icmp slt i32 %i.chf, 16
  br i1 %i.chi, label %bb.afi, label %bb.afl

bb.afi:                                           ; preds = %bb.afh
  %i.chj = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1952 = icmp eq ptr %i.chj, null
  br i1 %.not9.i.i.i1952, label %bb.afk, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  %i.chk = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.chj, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1949

bb.afk:                                           ; preds = %bb.afi
  %i.chl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1949

bb.afl:                                           ; preds = %bb.afh
  %i.chm = icmp samesign ult i32 %i.chf, 1073741823
  %i.chn = shl nuw nsw i32 %i.chf, 1
  %spec.select.i.i1945 = select i1 %i.chm, i32 %i.chn, i32 2147483647 ; 4 uses
  %.not.i9.i.i1946 = icmp samesign ult i32 %i.chf, %spec.select.i.i1945
  %.pre8.i1947 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1946, label %bb.afm, label %Vec_StrPush.exit.i1942

bb.afm:                                           ; preds = %bb.afl
  %.not9.i10.i.i1948 = icmp eq ptr %.pre8.i1947, null
  %i.cho = zext nneg i32 %spec.select.i.i1945 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1948, label %bb.afo, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  %i.chp = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1947, i64 noundef %i.cho) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1949

bb.afo:                                           ; preds = %bb.afm
  %i.chq = tail call noalias ptr @malloc(i64 noundef %i.cho) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1949

Vec_StrGrow.exit11.sink.split.i.i1949:            ; preds = %bb.afo, %bb.afn, %bb.afk, %bb.afj
  %i.chr = phi ptr [ %i.chl, %bb.afk ], [ %i.chk, %bb.afj ], [ %i.chp, %bb.afn ], [ %i.chq, %bb.afo ] ; 2 uses
  %spec.select.sink.i.i1950 = phi i32 [ 16, %bb.afk ], [ 16, %bb.afj ], [ %spec.select.i.i1945, %bb.afn ], [ %spec.select.i.i1945, %bb.afo ]
  store ptr %i.chr, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1950, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1951 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1942

Vec_StrPush.exit.i1942:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1949, %bb.afl, %.Vec_StrPush.exit_crit_edge.i1940
  %i.chs = phi i32 [ %i.chf, %.Vec_StrPush.exit_crit_edge.i1940 ], [ %i.chf, %bb.afl ], [ %.pre9.i1951, %Vec_StrGrow.exit11.sink.split.i.i1949 ] ; 2 uses
  %i.cht = phi ptr [ %.pre.i1941, %.Vec_StrPush.exit_crit_edge.i1940 ], [ %.pre8.i1947, %bb.afl ], [ %i.chr, %Vec_StrGrow.exit11.sink.split.i.i1949 ]
  %i.chu = add nsw i32 %i.chs, 1
  store i32 %i.chu, ptr %i.da, align 4, !tbaa !23
  %i.chv = sext i32 %i.chs to i64
  %i.chw = getelementptr inbounds i8, ptr %i.cht, i64 %i.chv
  store i8 %i.che, ptr %i.chw, align 1, !tbaa !20
  %indvars.iv.next.i1943 = add nuw nsw i64 %indvars.iv.i1939, 1 ; 2 uses
  %exitcond.not.i1944 = icmp eq i64 %indvars.iv.next.i1943, 9
  br i1 %exitcond.not.i1944, label %Vec_StrPrintStr.exit1953, label %.lr.ph.i1937, !llvm.loop !2

.lr.ph.i1955:                                     ; preds = %Vec_StrPrintStr.exit1935, %Vec_StrPush.exit.i1960
  %indvars.iv.i1957 = phi i64 [ %indvars.iv.next.i1961, %Vec_StrPush.exit.i1960 ], [ 0, %Vec_StrPrintStr.exit1935 ] ; 2 uses
  %i.chx = getelementptr inbounds nuw i8, ptr @.str.84, i64 %indvars.iv.i1957
  %i.chy = load i8, ptr %i.chx, align 1, !tbaa !20
  %i.chz = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.cia = load i32, ptr %i.b, align 8, !tbaa !24
  %i.cib = icmp eq i32 %i.chz, %i.cia
  br i1 %i.cib, label %bb.afp, label %.Vec_StrPush.exit_crit_edge.i1958

.Vec_StrPush.exit_crit_edge.i1958:                ; preds = %.lr.ph.i1955
  %.pre.i1959 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1960

bb.afp:                                           ; preds = %.lr.ph.i1955
  %i.cic = icmp slt i32 %i.chz, 16
  br i1 %i.cic, label %bb.afq, label %bb.aft

bb.afq:                                           ; preds = %bb.afp
  %i.cid = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1970 = icmp eq ptr %i.cid, null
  br i1 %.not9.i.i.i1970, label %bb.afs, label %bb.afr

bb.afr:                                           ; preds = %bb.afq
  %i.cie = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cid, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1967

bb.afs:                                           ; preds = %bb.afq
  %i.cif = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1967

bb.aft:                                           ; preds = %bb.afp
  %i.cig = icmp samesign ult i32 %i.chz, 1073741823
  %i.cih = shl nuw nsw i32 %i.chz, 1
  %spec.select.i.i1963 = select i1 %i.cig, i32 %i.cih, i32 2147483647 ; 4 uses
  %.not.i9.i.i1964 = icmp samesign ult i32 %i.chz, %spec.select.i.i1963
  %.pre8.i1965 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1964, label %bb.afu, label %Vec_StrPush.exit.i1960

bb.afu:                                           ; preds = %bb.aft
  %.not9.i10.i.i1966 = icmp eq ptr %.pre8.i1965, null
  %i.cii = zext nneg i32 %spec.select.i.i1963 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1966, label %bb.afw, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.cij = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1965, i64 noundef %i.cii) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1967

bb.afw:                                           ; preds = %bb.afu
  %i.cik = tail call noalias ptr @malloc(i64 noundef %i.cii) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1967

Vec_StrGrow.exit11.sink.split.i.i1967:            ; preds = %bb.afw, %bb.afv, %bb.afs, %bb.afr
  %i.cil = phi ptr [ %i.cif, %bb.afs ], [ %i.cie, %bb.afr ], [ %i.cij, %bb.afv ], [ %i.cik, %bb.afw ] ; 2 uses
  %spec.select.sink.i.i1968 = phi i32 [ 16, %bb.afs ], [ 16, %bb.afr ], [ %spec.select.i.i1963, %bb.afv ], [ %spec.select.i.i1963, %bb.afw ]
  store ptr %i.cil, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1968, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1969 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1960

Vec_StrPush.exit.i1960:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1967, %bb.aft, %.Vec_StrPush.exit_crit_edge.i1958
  %i.cim = phi i32 [ %i.chz, %.Vec_StrPush.exit_crit_edge.i1958 ], [ %i.chz, %bb.aft ], [ %.pre9.i1969, %Vec_StrGrow.exit11.sink.split.i.i1967 ] ; 2 uses
  %i.cin = phi ptr [ %.pre.i1959, %.Vec_StrPush.exit_crit_edge.i1958 ], [ %.pre8.i1965, %bb.aft ], [ %i.cil, %Vec_StrGrow.exit11.sink.split.i.i1967 ]
  %i.cio = add nsw i32 %i.cim, 1
  store i32 %i.cio, ptr %i.da, align 4, !tbaa !23
  %i.cip = sext i32 %i.cim to i64
  %i.ciq = getelementptr inbounds i8, ptr %i.cin, i64 %i.cip
  store i8 %i.chy, ptr %i.ciq, align 1, !tbaa !20
  %indvars.iv.next.i1961 = add nuw nsw i64 %indvars.iv.i1957, 1 ; 2 uses
  %exitcond.not.i1962 = icmp eq i64 %indvars.iv.next.i1961, 7
  br i1 %exitcond.not.i1962, label %Vec_StrPrintStr.exit1971, label %.lr.ph.i1955, !llvm.loop !2

Vec_StrPrintStr.exit1971:                         ; preds = %Vec_StrPush.exit.i1960
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.bub)
  br label %Vec_StrPrintStr.exit1953

Vec_StrPrintStr.exit1953:                         ; preds = %Vec_StrPush.exit.i1942, %Vec_StrPrintStr.exit1971
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.bub, i32 noundef %1, i32 noundef 0)
  br label %bb.afx

bb.afx:                                           ; preds = %Vec_StrPush.exit.i1978, %Vec_StrPrintStr.exit1953
  %indvars.iv.i1975 = phi i64 [ 0, %Vec_StrPrintStr.exit1953 ], [ %indvars.iv.next.i1979, %Vec_StrPush.exit.i1978 ] ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr @.str.120, i64 %indvars.iv.i1975
  %i.cis = load i8, ptr %i.cir, align 1, !tbaa !20
  %i.cit = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ciu = load i32, ptr %i.b, align 8, !tbaa !24
  %i.civ = icmp eq i32 %i.cit, %i.ciu
  br i1 %i.civ, label %bb.afy, label %.Vec_StrPush.exit_crit_edge.i1976

.Vec_StrPush.exit_crit_edge.i1976:                ; preds = %bb.afx
  %.pre.i1977 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1978

bb.afy:                                           ; preds = %bb.afx
  %i.ciw = icmp slt i32 %i.cit, 16
  br i1 %i.ciw, label %bb.afz, label %bb.agc

bb.afz:                                           ; preds = %bb.afy
  %i.cix = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1988 = icmp eq ptr %i.cix, null
  br i1 %.not9.i.i.i1988, label %bb.agb, label %bb.aga

bb.aga:                                           ; preds = %bb.afz
  %i.ciy = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cix, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1985

bb.agb:                                           ; preds = %bb.afz
  %i.ciz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1985

bb.agc:                                           ; preds = %bb.afy
  %i.cja = icmp samesign ult i32 %i.cit, 1073741823
  %i.cjb = shl nuw nsw i32 %i.cit, 1
  %spec.select.i.i1981 = select i1 %i.cja, i32 %i.cjb, i32 2147483647 ; 4 uses
  %.not.i9.i.i1982 = icmp samesign ult i32 %i.cit, %spec.select.i.i1981
  %.pre8.i1983 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1982, label %bb.agd, label %Vec_StrPush.exit.i1978

bb.agd:                                           ; preds = %bb.agc
  %.not9.i10.i.i1984 = icmp eq ptr %.pre8.i1983, null
end_hunk_7
begin_hunk_8_@Cba_ManWriteVerilogNtk:bb.a
bb.arh:                                           ; preds = %Vec_StrPrintStr.exit2223
  %i.diq = icmp slt i32 %i.din, 16
  br i1 %i.diq, label %bb.ari, label %bb.arl

bb.ari:                                           ; preds = %bb.arh
  %i.dir = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2240 = icmp eq ptr %i.dir, null
  br i1 %.not9.i.i.i2240, label %bb.ark, label %bb.arj

bb.arj:                                           ; preds = %bb.ari
  %i.dis = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dir, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2237

bb.ark:                                           ; preds = %bb.ari
  %i.dit = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2237

bb.arl:                                           ; preds = %bb.arh
  %i.diu = icmp samesign ult i32 %i.din, 1073741823
  %i.div = shl nuw nsw i32 %i.din, 1
  %spec.select.i.i2233 = select i1 %i.diu, i32 %i.div, i32 2147483647 ; 4 uses
  %.not.i9.i.i2234 = icmp samesign ult i32 %i.din, %spec.select.i.i2233
  %.pre8.i2235 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2234, label %bb.arm, label %Vec_StrPush.exit.i2230

bb.arm:                                           ; preds = %bb.arl
  %.not9.i10.i.i2236 = icmp eq ptr %.pre8.i2235, null
  %i.diw = zext nneg i32 %spec.select.i.i2233 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2236, label %bb.aro, label %bb.arn

bb.arn:                                           ; preds = %bb.arm
  %i.dix = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2235, i64 noundef %i.diw) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2237

bb.aro:                                           ; preds = %bb.arm
  %i.diy = tail call noalias ptr @malloc(i64 noundef %i.diw) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2237

Vec_StrGrow.exit11.sink.split.i.i2237:            ; preds = %bb.aro, %bb.arn, %bb.ark, %bb.arj
  %i.diz = phi ptr [ %i.dit, %bb.ark ], [ %i.dis, %bb.arj ], [ %i.dix, %bb.arn ], [ %i.diy, %bb.aro ] ; 2 uses
  %spec.select.sink.i.i2238 = phi i32 [ 16, %bb.ark ], [ 16, %bb.arj ], [ %spec.select.i.i2233, %bb.arn ], [ %spec.select.i.i2233, %bb.aro ]
  store ptr %i.diz, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2238, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2239 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2230

Vec_StrPush.exit.i2230:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2237, %bb.arl, %.Vec_StrPush.exit_crit_edge.i2228
  %i.dja = phi i32 [ %i.din, %.Vec_StrPush.exit_crit_edge.i2228 ], [ %i.din, %bb.arl ], [ %.pre9.i2239, %Vec_StrGrow.exit11.sink.split.i.i2237 ] ; 2 uses
  %i.djb = phi ptr [ %.pre.i2229, %.Vec_StrPush.exit_crit_edge.i2228 ], [ %.pre8.i2235, %bb.arl ], [ %i.diz, %Vec_StrGrow.exit11.sink.split.i.i2237 ]
  %i.djc = add nsw i32 %i.dja, 1
  store i32 %i.djc, ptr %i.da, align 4, !tbaa !23
  %i.djd = sext i32 %i.dja to i64
  %i.dje = getelementptr inbounds i8, ptr %i.djb, i64 %i.djd
  store i8 39, ptr %i.dje, align 1, !tbaa !20
  %i.djf = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.djg = load i32, ptr %i.b, align 8, !tbaa !24
  %i.djh = icmp eq i32 %i.djf, %i.djg
  br i1 %i.djh, label %bb.arp, label %.Vec_StrPush.exit_crit_edge.i2228.1

.Vec_StrPush.exit_crit_edge.i2228.1:              ; preds = %Vec_StrPush.exit.i2230
  %.pre.i2229.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2230.1

bb.arp:                                           ; preds = %Vec_StrPush.exit.i2230
  %i.dji = icmp slt i32 %i.djf, 16
  br i1 %i.dji, label %bb.aru, label %bb.arq

bb.arq:                                           ; preds = %bb.arp
  %i.djj = icmp samesign ult i32 %i.djf, 1073741823
  %i.djk = shl nuw nsw i32 %i.djf, 1
  %spec.select.i.i2233.1 = select i1 %i.djj, i32 %i.djk, i32 2147483647 ; 4 uses
  %.not.i9.i.i2234.1 = icmp samesign ult i32 %i.djf, %spec.select.i.i2233.1
  %.pre8.i2235.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2234.1, label %bb.arr, label %Vec_StrPush.exit.i2230.1

bb.arr:                                           ; preds = %bb.arq
  %.not9.i10.i.i2236.1 = icmp eq ptr %.pre8.i2235.1, null
  %i.djl = zext nneg i32 %spec.select.i.i2233.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2236.1, label %bb.art, label %bb.ars

bb.ars:                                           ; preds = %bb.arr
  %i.djm = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2235.1, i64 noundef %i.djl) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2237.1

bb.art:                                           ; preds = %bb.arr
  %i.djn = tail call noalias ptr @malloc(i64 noundef %i.djl) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2237.1

bb.aru:                                           ; preds = %bb.arp
  %i.djo = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2240.1 = icmp eq ptr %i.djo, null
  br i1 %.not9.i.i.i2240.1, label %bb.arw, label %bb.arv

bb.arv:                                           ; preds = %bb.aru
  %i.djp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.djo, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2237.1

bb.arw:                                           ; preds = %bb.aru
  %i.djq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2237.1

Vec_StrGrow.exit11.sink.split.i.i2237.1:          ; preds = %bb.arw, %bb.arv, %bb.art, %bb.ars
  %i.djr = phi ptr [ %i.djq, %bb.arw ], [ %i.djp, %bb.arv ], [ %i.djm, %bb.ars ], [ %i.djn, %bb.art ] ; 2 uses
  %spec.select.sink.i.i2238.1 = phi i32 [ 16, %bb.arw ], [ 16, %bb.arv ], [ %spec.select.i.i2233.1, %bb.ars ], [ %spec.select.i.i2233.1, %bb.art ]
  store ptr %i.djr, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2238.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2239.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2230.1

Vec_StrPush.exit.i2230.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2237.1, %bb.arq, %.Vec_StrPush.exit_crit_edge.i2228.1
  %i.djs = phi i32 [ %i.djf, %.Vec_StrPush.exit_crit_edge.i2228.1 ], [ %i.djf, %bb.arq ], [ %.pre9.i2239.1, %Vec_StrGrow.exit11.sink.split.i.i2237.1 ] ; 2 uses
  %i.djt = phi ptr [ %.pre.i2229.1, %.Vec_StrPush.exit_crit_edge.i2228.1 ], [ %.pre8.i2235.1, %bb.arq ], [ %i.djr, %Vec_StrGrow.exit11.sink.split.i.i2237.1 ]
  %i.dju = add nsw i32 %i.djs, 1
  store i32 %i.dju, ptr %i.da, align 4, !tbaa !23
  %i.djv = sext i32 %i.djs to i64
  %i.djw = getelementptr inbounds i8, ptr %i.djt, i64 %i.djv
  store i8 98, ptr %i.djw, align 1, !tbaa !20
  %.val837 = load i32, ptr %i.da, align 4, !tbaa !23 ; 5 uses
  %i.djx = add nsw i32 %.val837, %i.cny           ; 9 uses
  %.not.i2242 = icmp sgt i32 %i.cny, 0
  %.pre3158.a = load i32, ptr %i.b, align 8, !tbaa !24 ; 8 uses
  br i1 %.not.i2242, label %bb.arx, label %.lr.ph.i2259

bb.arx:                                           ; preds = %Vec_StrPush.exit.i2230.1
  %i.djy = shl nsw i32 %.pre3158.a, 1             ; 2 uses
  %i.djz = icmp sgt i32 %i.djx, %i.djy
  %.not.i.i2243 = icmp slt i32 %.pre3158.a, %i.djx ; 2 uses
  br i1 %i.djz, label %bb.ary, label %bb.asc

bb.ary:                                           ; preds = %bb.arx
  br i1 %.not.i.i2243, label %bb.arz, label %Vec_StrGrow.exit.i2244

bb.arz:                                           ; preds = %bb.ary
  %i.dka = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2256 = icmp eq ptr %i.dka, null
  %i.dkb = sext i32 %i.djx to i64                 ; 2 uses
  br i1 %.not9.i.i2256, label %bb.asb, label %bb.asa

bb.asa:                                           ; preds = %bb.arz
  %i.dkc = tail call ptr @realloc(ptr noundef nonnull %i.dka, i64 noundef %i.dkb) #18
  br label %Vec_StrGrow.exit.sink.split.i2254

bb.asb:                                           ; preds = %bb.arz
  %i.dkd = tail call noalias ptr @malloc(i64 noundef %i.dkb) #19
  br label %Vec_StrGrow.exit.sink.split.i2254

bb.asc:                                           ; preds = %bb.arx
  br i1 %.not.i.i2243, label %bb.asd, label %Vec_StrGrow.exit.i2244

bb.asd:                                           ; preds = %bb.asc
  %i.dke = icmp slt i32 %.pre3158.a, 1073741823
  %spec.select.i2251 = select i1 %i.dke, i32 %i.djy, i32 2147483647 ; 4 uses
  %.not.i22.i2252 = icmp slt i32 %.pre3158.a, %spec.select.i2251
  br i1 %.not.i22.i2252, label %bb.ase, label %Vec_StrGrow.exit.i2244

bb.ase:                                           ; preds = %bb.asd
  %i.dkf = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i23.i2253 = icmp eq ptr %i.dkf, null
  %i.dkg = sext i32 %spec.select.i2251 to i64     ; 2 uses
  br i1 %.not9.i23.i2253, label %bb.asg, label %bb.asf

bb.asf:                                           ; preds = %bb.ase
  %i.dkh = tail call ptr @realloc(ptr noundef nonnull %i.dkf, i64 noundef %i.dkg) #18
  br label %Vec_StrGrow.exit.sink.split.i2254

bb.asg:                                           ; preds = %bb.ase
  %i.dki = tail call noalias ptr @malloc(i64 noundef %i.dkg) #19
  br label %Vec_StrGrow.exit.sink.split.i2254

Vec_StrGrow.exit.sink.split.i2254:                ; preds = %bb.asf, %bb.asg, %bb.asa, %bb.asb
  %storemerge3928 = phi ptr [ %i.dkd, %bb.asb ], [ %i.dkc, %bb.asa ], [ %i.dkh, %bb.asf ], [ %i.dki, %bb.asg ]
  %spec.select.sink.i2255 = phi i32 [ %i.djx, %bb.asb ], [ %i.djx, %bb.asa ], [ %spec.select.i2251, %bb.asf ], [ %spec.select.i2251, %bb.asg ] ; 2 uses
  store ptr %storemerge3928, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2255, ptr %i.b, align 8, !tbaa !24
  %.pre3156.a = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrGrow.exit.i2244

Vec_StrGrow.exit.i2244:                           ; preds = %Vec_StrGrow.exit.sink.split.i2254, %bb.asd, %bb.asc, %bb.ary
  %.pre31573190 = phi i32 [ %spec.select.sink.i2255, %Vec_StrGrow.exit.sink.split.i2254 ], [ %.pre3158.a, %bb.asd ], [ %.pre3158.a, %bb.asc ], [ %.pre3158.a, %bb.ary ]
  %i.dkj = phi i32 [ %.pre3156.a, %Vec_StrGrow.exit.sink.split.i2254 ], [ %.val837, %bb.asd ], [ %.val837, %bb.asc ], [ %.val837, %bb.ary ] ; 2 uses
  %i.dkk = icmp slt i32 %i.dkj, %i.djx
  br i1 %i.dkk, label %.lr.ph.i2246, label %._crit_edge.i2245

.lr.ph.i2246:                                     ; preds = %Vec_StrGrow.exit.i2244
  %i.dkl = sext i32 %i.dkj to i64                 ; 4 uses
  %wide.trip.count.i2247 = sext i32 %i.djx to i64 ; 3 uses
  %i.dkm = sub nsw i64 %wide.trip.count.i2247, %i.dkl
  %xtraiter = and i64 %i.dkm, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i2246, %.prol.preheader
  %indvars.iv.i2248.prol = phi i64 [ %indvars.iv.next.i2249.prol, %.prol.preheader ], [ %i.dkl, %.lr.ph.i2246 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i2246 ]
  %i.dkn = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dko = getelementptr inbounds i8, ptr %i.dkn, i64 %indvars.iv.i2248.prol
  store i8 49, ptr %i.dko, align 1, !tbaa !20
  %indvars.iv.next.i2249.prol = add nsw i64 %indvars.iv.i2248.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !87

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i2246
  %indvars.iv.i2248.unr = phi i64 [ %i.dkl, %.lr.ph.i2246 ], [ %indvars.iv.next.i2249.prol, %.prol.preheader ]
  %i.dkp = sub nsw i64 %i.dkl, %wide.trip.count.i2247
  %i.dkq = icmp ugt i64 %i.dkp, -4
  br i1 %i.dkq, label %._crit_edge.i2245.loopexit, label %.lr.ph.i2246.new

.lr.ph.i2246.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i2246.new
  %indvars.iv.i2248 = phi i64 [ %indvars.iv.next.i2249.3, %.lr.ph.i2246.new ], [ %indvars.iv.i2248.unr, %.prol.loopexit ] ; 5 uses
  %i.dkr = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dks = getelementptr inbounds i8, ptr %i.dkr, i64 %indvars.iv.i2248
  store i8 49, ptr %i.dks, align 1, !tbaa !20
  %i.dkt = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dku = getelementptr i8, ptr %i.dkt, i64 %indvars.iv.i2248
  %i.dkv = getelementptr i8, ptr %i.dku, i64 1
  store i8 49, ptr %i.dkv, align 1, !tbaa !20
  %i.dkw = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dkx = getelementptr i8, ptr %i.dkw, i64 %indvars.iv.i2248
  %i.dky = getelementptr i8, ptr %i.dkx, i64 2
  store i8 49, ptr %i.dky, align 1, !tbaa !20
  %i.dkz = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dla = getelementptr i8, ptr %i.dkz, i64 %indvars.iv.i2248
  %i.dlb = getelementptr i8, ptr %i.dla, i64 3
  store i8 49, ptr %i.dlb, align 1, !tbaa !20
  %indvars.iv.next.i2249.3 = add nsw i64 %indvars.iv.i2248, 4 ; 2 uses
  %exitcond.not.i2250.3 = icmp eq i64 %indvars.iv.next.i2249.3, %wide.trip.count.i2247
  br i1 %exitcond.not.i2250.3, label %._crit_edge.i2245.loopexit, label %.lr.ph.i2246.new, !llvm.loop !81

._crit_edge.i2245.loopexit:                       ; preds = %.lr.ph.i2246.new, %.prol.loopexit
  %.pre3157.pre = load i32, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i2245

._crit_edge.i2245:                                ; preds = %._crit_edge.i2245.loopexit, %Vec_StrGrow.exit.i2244
  %.pre3157.a = phi i32 [ %.pre3157.pre, %._crit_edge.i2245.loopexit ], [ %.pre31573190, %Vec_StrGrow.exit.i2244 ]
  store i32 %i.djx, ptr %i.da, align 4, !tbaa !23
  br label %.lr.ph.i2259

.lr.ph.i2259:                                     ; preds = %._crit_edge.i2245, %Vec_StrPush.exit.i2230.1
  %i.dlc = phi i32 [ %.pre3157.a, %._crit_edge.i2245 ], [ %.pre3158.a, %Vec_StrPush.exit.i2230.1 ] ; 6 uses
  %i.dld = phi i32 [ %i.djx, %._crit_edge.i2245 ], [ %.val837, %Vec_StrPush.exit.i2230.1 ] ; 2 uses
  %i.dle = icmp eq i32 %i.dld, %i.dlc
  br i1 %i.dle, label %bb.ash, label %.Vec_StrPush.exit_crit_edge.i2262

.Vec_StrPush.exit_crit_edge.i2262:                ; preds = %.lr.ph.i2259
  %.pre.i2263 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2264

bb.ash:                                           ; preds = %.lr.ph.i2259
  %i.dlf = icmp slt i32 %i.dlc, 16
  br i1 %i.dlf, label %bb.asi, label %bb.asl

bb.asi:                                           ; preds = %bb.ash
  %i.dlg = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2274 = icmp eq ptr %i.dlg, null
  br i1 %.not9.i.i.i2274, label %bb.ask, label %bb.asj

bb.asj:                                           ; preds = %bb.asi
  %i.dlh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dlg, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2271

bb.ask:                                           ; preds = %bb.asi
  %i.dli = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2271

bb.asl:                                           ; preds = %bb.ash
  %i.dlj = icmp samesign ult i32 %i.dlc, 1073741823
  %i.dlk = shl nuw nsw i32 %i.dlc, 1
  %spec.select.i.i2267 = select i1 %i.dlj, i32 %i.dlk, i32 2147483647 ; 4 uses
  %.not.i9.i.i2268 = icmp samesign ult i32 %i.dlc, %spec.select.i.i2267
  %.pre8.i2269 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2268, label %bb.asm, label %Vec_StrPush.exit.i2264

bb.asm:                                           ; preds = %bb.asl
  %.not9.i10.i.i2270 = icmp eq ptr %.pre8.i2269, null
  %i.dll = zext nneg i32 %spec.select.i.i2267 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2270, label %bb.aso, label %bb.asn

bb.asn:                                           ; preds = %bb.asm
  %i.dlm = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2269, i64 noundef %i.dll) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2271

bb.aso:                                           ; preds = %bb.asm
  %i.dln = tail call noalias ptr @malloc(i64 noundef %i.dll) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2271

Vec_StrGrow.exit11.sink.split.i.i2271:            ; preds = %bb.aso, %bb.asn, %bb.ask, %bb.asj
  %i.dlo = phi ptr [ %i.dli, %bb.ask ], [ %i.dlh, %bb.asj ], [ %i.dlm, %bb.asn ], [ %i.dln, %bb.aso ] ; 2 uses
  %spec.select.sink.i.i2272 = phi i32 [ 16, %bb.ask ], [ 16, %bb.asj ], [ %spec.select.i.i2267, %bb.asn ], [ %spec.select.i.i2267, %bb.aso ]
  store ptr %i.dlo, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2272, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2273 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2264

Vec_StrPush.exit.i2264:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2271, %bb.asl, %.Vec_StrPush.exit_crit_edge.i2262
  %i.dlp = phi i32 [ %i.dld, %.Vec_StrPush.exit_crit_edge.i2262 ], [ %i.dlc, %bb.asl ], [ %.pre9.i2273, %Vec_StrGrow.exit11.sink.split.i.i2271 ] ; 2 uses
  %i.dlq = phi ptr [ %.pre.i2263, %.Vec_StrPush.exit_crit_edge.i2262 ], [ %.pre8.i2269, %bb.asl ], [ %i.dlo, %Vec_StrGrow.exit11.sink.split.i.i2271 ]
  %i.dlr = add nsw i32 %i.dlp, 1
  store i32 %i.dlr, ptr %i.da, align 4, !tbaa !23
  %i.dls = sext i32 %i.dlp to i64
  %i.dlt = getelementptr inbounds i8, ptr %i.dlq, i64 %i.dls
  store i8 59, ptr %i.dlt, align 1, !tbaa !20
  %i.dlu = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.dlv = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dlw = icmp eq i32 %i.dlu, %i.dlv
  br i1 %i.dlw, label %bb.asp, label %.Vec_StrPush.exit_crit_edge.i2262.1

.Vec_StrPush.exit_crit_edge.i2262.1:              ; preds = %Vec_StrPush.exit.i2264
  %.pre.i2263.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2264.1

bb.asp:                                           ; preds = %Vec_StrPush.exit.i2264
  %i.dlx = icmp slt i32 %i.dlu, 16
  br i1 %i.dlx, label %bb.asu, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %i.dly = icmp samesign ult i32 %i.dlu, 1073741823
  %i.dlz = shl nuw nsw i32 %i.dlu, 1
  %spec.select.i.i2267.1 = select i1 %i.dly, i32 %i.dlz, i32 2147483647 ; 4 uses
  %.not.i9.i.i2268.1 = icmp samesign ult i32 %i.dlu, %spec.select.i.i2267.1
  %.pre8.i2269.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2268.1, label %bb.asr, label %Vec_StrPush.exit.i2264.1

bb.asr:                                           ; preds = %bb.asq
  %.not9.i10.i.i2270.1 = icmp eq ptr %.pre8.i2269.1, null
  %i.dma = zext nneg i32 %spec.select.i.i2267.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2270.1, label %bb.ast, label %bb.ass

bb.ass:                                           ; preds = %bb.asr
  %i.dmb = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2269.1, i64 noundef %i.dma) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2271.1

bb.ast:                                           ; preds = %bb.asr
  %i.dmc = tail call noalias ptr @malloc(i64 noundef %i.dma) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2271.1

bb.asu:                                           ; preds = %bb.asp
  %i.dmd = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2274.1 = icmp eq ptr %i.dmd, null
  br i1 %.not9.i.i.i2274.1, label %bb.asw, label %bb.asv

bb.asv:                                           ; preds = %bb.asu
  %i.dme = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dmd, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2271.1

bb.asw:                                           ; preds = %bb.asu
  %i.dmf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2271.1

Vec_StrGrow.exit11.sink.split.i.i2271.1:          ; preds = %bb.asw, %bb.asv, %bb.ast, %bb.ass
  %i.dmg = phi ptr [ %i.dmf, %bb.asw ], [ %i.dme, %bb.asv ], [ %i.dmb, %bb.ass ], [ %i.dmc, %bb.ast ] ; 2 uses
  %spec.select.sink.i.i2272.1 = phi i32 [ 16, %bb.asw ], [ 16, %bb.asv ], [ %spec.select.i.i2267.1, %bb.ass ], [ %spec.select.i.i2267.1, %bb.ast ]
  store ptr %i.dmg, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2272.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2273.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2264.1

Vec_StrPush.exit.i2264.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2271.1, %bb.asq, %.Vec_StrPush.exit_crit_edge.i2262.1
  %i.dmh = phi i32 [ %i.dlu, %.Vec_StrPush.exit_crit_edge.i2262.1 ], [ %i.dlu, %bb.asq ], [ %.pre9.i2273.1, %Vec_StrGrow.exit11.sink.split.i.i2271.1 ] ; 2 uses
  %i.dmi = phi ptr [ %.pre.i2263.1, %.Vec_StrPush.exit_crit_edge.i2262.1 ], [ %.pre8.i2269.1, %bb.asq ], [ %i.dmg, %Vec_StrGrow.exit11.sink.split.i.i2271.1 ]
  %i.dmj = add nsw i32 %i.dmh, 1
  store i32 %i.dmj, ptr %i.da, align 4, !tbaa !23
  %i.dmk = sext i32 %i.dmh to i64
  %i.dml = getelementptr inbounds i8, ptr %i.dmi, i64 %i.dmk
  store i8 10, ptr %i.dml, align 1, !tbaa !20
  br label %Vec_StrPrintStr.exit2275

Vec_StrPrintStr.exit2275:                         ; preds = %Vec_StrPush.exit.i2264.1, %Vec_StrPush.exit.i2158.1
  br i1 %i.daq, label %.lr.ph.i2277, label %Vec_StrPrintStr.exit2381

.lr.ph.i2277:                                     ; preds = %Vec_StrPrintStr.exit2275
  %i.dmm = select i1 %i.cxv, ptr @.str.134, ptr @.str.129
  %i.dmn = select i1 %i.cxv, i64 13, i64 8
  br label %bb.asx

bb.asx:                                           ; preds = %Vec_StrPush.exit.i2282, %.lr.ph.i2277
  %indvars.iv.i2279 = phi i64 [ 0, %.lr.ph.i2277 ], [ %indvars.iv.next.i2283, %Vec_StrPush.exit.i2282 ] ; 2 uses
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.dmm, i64 %indvars.iv.i2279
  %i.dmp = load i8, ptr %i.dmo, align 1, !tbaa !20
  %i.dmq = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.dmr = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dms = icmp eq i32 %i.dmq, %i.dmr
  br i1 %i.dms, label %bb.asy, label %.Vec_StrPush.exit_crit_edge.i2280

.Vec_StrPush.exit_crit_edge.i2280:                ; preds = %bb.asx
  %.pre.i2281 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2282

bb.asy:                                           ; preds = %bb.asx
  %i.dmt = icmp slt i32 %i.dmq, 16
  br i1 %i.dmt, label %bb.asz, label %bb.atc

bb.asz:                                           ; preds = %bb.asy
  %i.dmu = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2292 = icmp eq ptr %i.dmu, null
  br i1 %.not9.i.i.i2292, label %bb.atb, label %bb.ata

bb.ata:                                           ; preds = %bb.asz
  %i.dmv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dmu, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2289

bb.atb:                                           ; preds = %bb.asz
  %i.dmw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2289

bb.atc:                                           ; preds = %bb.asy
  %i.dmx = icmp samesign ult i32 %i.dmq, 1073741823
  %i.dmy = shl nuw nsw i32 %i.dmq, 1
  %spec.select.i.i2285 = select i1 %i.dmx, i32 %i.dmy, i32 2147483647 ; 4 uses
  %.not.i9.i.i2286 = icmp samesign ult i32 %i.dmq, %spec.select.i.i2285
  %.pre8.i2287 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2286, label %bb.atd, label %Vec_StrPush.exit.i2282

bb.atd:                                           ; preds = %bb.atc
  %.not9.i10.i.i2288 = icmp eq ptr %.pre8.i2287, null
  %i.dmz = zext nneg i32 %spec.select.i.i2285 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2288, label %bb.atf, label %bb.ate

bb.ate:                                           ; preds = %bb.atd
  %i.dna = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2287, i64 noundef %i.dmz) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2289

bb.atf:                                           ; preds = %bb.atd
  %i.dnb = tail call noalias ptr @malloc(i64 noundef %i.dmz) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2289

Vec_StrGrow.exit11.sink.split.i.i2289:            ; preds = %bb.atf, %bb.ate, %bb.atb, %bb.ata
  %i.dnc = phi ptr [ %i.dmw, %bb.atb ], [ %i.dmv, %bb.ata ], [ %i.dna, %bb.ate ], [ %i.dnb, %bb.atf ] ; 2 uses
end_hunk_8
begin_hunk_9_@Cba_ManWriteVerilogNtk:bb.a
bb.aun:                                           ; preds = %Vec_StrPrintStr.exit2329
  %i.dqj = icmp slt i32 %i.dqg, 16
  br i1 %i.dqj, label %bb.auo, label %bb.aur

bb.auo:                                           ; preds = %bb.aun
  %i.dqk = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2346 = icmp eq ptr %i.dqk, null
  br i1 %.not9.i.i.i2346, label %bb.auq, label %bb.aup

bb.aup:                                           ; preds = %bb.auo
  %i.dql = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dqk, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2343

bb.auq:                                           ; preds = %bb.auo
  %i.dqm = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2343

bb.aur:                                           ; preds = %bb.aun
  %i.dqn = icmp samesign ult i32 %i.dqg, 1073741823
  %i.dqo = shl nuw nsw i32 %i.dqg, 1
  %spec.select.i.i2339 = select i1 %i.dqn, i32 %i.dqo, i32 2147483647 ; 4 uses
  %.not.i9.i.i2340 = icmp samesign ult i32 %i.dqg, %spec.select.i.i2339
  %.pre8.i2341 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2340, label %bb.aus, label %Vec_StrPush.exit.i2336

bb.aus:                                           ; preds = %bb.aur
  %.not9.i10.i.i2342 = icmp eq ptr %.pre8.i2341, null
  %i.dqp = zext nneg i32 %spec.select.i.i2339 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2342, label %bb.auu, label %bb.aut

bb.aut:                                           ; preds = %bb.aus
  %i.dqq = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2341, i64 noundef %i.dqp) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2343

bb.auu:                                           ; preds = %bb.aus
  %i.dqr = tail call noalias ptr @malloc(i64 noundef %i.dqp) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2343

Vec_StrGrow.exit11.sink.split.i.i2343:            ; preds = %bb.auu, %bb.aut, %bb.auq, %bb.aup
  %i.dqs = phi ptr [ %i.dqm, %bb.auq ], [ %i.dql, %bb.aup ], [ %i.dqq, %bb.aut ], [ %i.dqr, %bb.auu ] ; 2 uses
  %spec.select.sink.i.i2344 = phi i32 [ 16, %bb.auq ], [ 16, %bb.aup ], [ %spec.select.i.i2339, %bb.aut ], [ %spec.select.i.i2339, %bb.auu ]
  store ptr %i.dqs, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2344, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2345 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2336

Vec_StrPush.exit.i2336:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2343, %bb.aur, %.Vec_StrPush.exit_crit_edge.i2334
  %i.dqt = phi i32 [ %i.dqg, %.Vec_StrPush.exit_crit_edge.i2334 ], [ %i.dqg, %bb.aur ], [ %.pre9.i2345, %Vec_StrGrow.exit11.sink.split.i.i2343 ] ; 2 uses
  %i.dqu = phi ptr [ %.pre.i2335, %.Vec_StrPush.exit_crit_edge.i2334 ], [ %.pre8.i2341, %bb.aur ], [ %i.dqs, %Vec_StrGrow.exit11.sink.split.i.i2343 ]
  %i.dqv = add nsw i32 %i.dqt, 1
  store i32 %i.dqv, ptr %i.da, align 4, !tbaa !23
  %i.dqw = sext i32 %i.dqt to i64
  %i.dqx = getelementptr inbounds i8, ptr %i.dqu, i64 %i.dqw
  store i8 39, ptr %i.dqx, align 1, !tbaa !20
  %i.dqy = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.dqz = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dra = icmp eq i32 %i.dqy, %i.dqz
  br i1 %i.dra, label %bb.auv, label %.Vec_StrPush.exit_crit_edge.i2334.1

.Vec_StrPush.exit_crit_edge.i2334.1:              ; preds = %Vec_StrPush.exit.i2336
  %.pre.i2335.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2336.1

bb.auv:                                           ; preds = %Vec_StrPush.exit.i2336
  %i.drb = icmp slt i32 %i.dqy, 16
  br i1 %i.drb, label %bb.ava, label %bb.auw

bb.auw:                                           ; preds = %bb.auv
  %i.drc = icmp samesign ult i32 %i.dqy, 1073741823
  %i.drd = shl nuw nsw i32 %i.dqy, 1
  %spec.select.i.i2339.1 = select i1 %i.drc, i32 %i.drd, i32 2147483647 ; 4 uses
  %.not.i9.i.i2340.1 = icmp samesign ult i32 %i.dqy, %spec.select.i.i2339.1
  %.pre8.i2341.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2340.1, label %bb.aux, label %Vec_StrPush.exit.i2336.1

bb.aux:                                           ; preds = %bb.auw
  %.not9.i10.i.i2342.1 = icmp eq ptr %.pre8.i2341.1, null
  %i.dre = zext nneg i32 %spec.select.i.i2339.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2342.1, label %bb.auz, label %bb.auy

bb.auy:                                           ; preds = %bb.aux
  %i.drf = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2341.1, i64 noundef %i.dre) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2343.1

bb.auz:                                           ; preds = %bb.aux
  %i.drg = tail call noalias ptr @malloc(i64 noundef %i.dre) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2343.1

bb.ava:                                           ; preds = %bb.auv
  %i.drh = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2346.1 = icmp eq ptr %i.drh, null
  br i1 %.not9.i.i.i2346.1, label %bb.avc, label %bb.avb

bb.avb:                                           ; preds = %bb.ava
  %i.dri = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.drh, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2343.1

bb.avc:                                           ; preds = %bb.ava
  %i.drj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2343.1

Vec_StrGrow.exit11.sink.split.i.i2343.1:          ; preds = %bb.avc, %bb.avb, %bb.auz, %bb.auy
  %i.drk = phi ptr [ %i.drj, %bb.avc ], [ %i.dri, %bb.avb ], [ %i.drf, %bb.auy ], [ %i.drg, %bb.auz ] ; 2 uses
  %spec.select.sink.i.i2344.1 = phi i32 [ 16, %bb.avc ], [ 16, %bb.avb ], [ %spec.select.i.i2339.1, %bb.auy ], [ %spec.select.i.i2339.1, %bb.auz ]
  store ptr %i.drk, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2344.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2345.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2336.1

Vec_StrPush.exit.i2336.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2343.1, %bb.auw, %.Vec_StrPush.exit_crit_edge.i2334.1
  %i.drl = phi i32 [ %i.dqy, %.Vec_StrPush.exit_crit_edge.i2334.1 ], [ %i.dqy, %bb.auw ], [ %.pre9.i2345.1, %Vec_StrGrow.exit11.sink.split.i.i2343.1 ] ; 2 uses
  %i.drm = phi ptr [ %.pre.i2335.1, %.Vec_StrPush.exit_crit_edge.i2334.1 ], [ %.pre8.i2341.1, %bb.auw ], [ %i.drk, %Vec_StrGrow.exit11.sink.split.i.i2343.1 ]
  %i.drn = add nsw i32 %i.drl, 1
  store i32 %i.drn, ptr %i.da, align 4, !tbaa !23
  %i.dro = sext i32 %i.drl to i64
  %i.drp = getelementptr inbounds i8, ptr %i.drm, i64 %i.dro
  store i8 98, ptr %i.drp, align 1, !tbaa !20
  %.val = load i32, ptr %i.da, align 4, !tbaa !23 ; 5 uses
  %i.drq = add nsw i32 %.val, %i.cny              ; 9 uses
  %.not.i2348 = icmp sgt i32 %i.cny, 0
  %.pre3161.a = load i32, ptr %i.b, align 8, !tbaa !24 ; 8 uses
  br i1 %.not.i2348, label %bb.avd, label %.lr.ph.i2365

bb.avd:                                           ; preds = %Vec_StrPush.exit.i2336.1
  %i.drr = shl nsw i32 %.pre3161.a, 1             ; 2 uses
  %i.drs = icmp sgt i32 %i.drq, %i.drr
  %.not.i.i2349 = icmp slt i32 %.pre3161.a, %i.drq ; 2 uses
  br i1 %i.drs, label %bb.ave, label %bb.avi

bb.ave:                                           ; preds = %bb.avd
  br i1 %.not.i.i2349, label %bb.avf, label %Vec_StrGrow.exit.i2350

bb.avf:                                           ; preds = %bb.ave
  %i.drt = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2362 = icmp eq ptr %i.drt, null
  %i.dru = sext i32 %i.drq to i64                 ; 2 uses
  br i1 %.not9.i.i2362, label %bb.avh, label %bb.avg

bb.avg:                                           ; preds = %bb.avf
  %i.drv = tail call ptr @realloc(ptr noundef nonnull %i.drt, i64 noundef %i.dru) #18
  br label %Vec_StrGrow.exit.sink.split.i2360

bb.avh:                                           ; preds = %bb.avf
  %i.drw = tail call noalias ptr @malloc(i64 noundef %i.dru) #19
  br label %Vec_StrGrow.exit.sink.split.i2360

bb.avi:                                           ; preds = %bb.avd
  br i1 %.not.i.i2349, label %bb.avj, label %Vec_StrGrow.exit.i2350

bb.avj:                                           ; preds = %bb.avi
  %i.drx = icmp slt i32 %.pre3161.a, 1073741823
  %spec.select.i2357 = select i1 %i.drx, i32 %i.drr, i32 2147483647 ; 4 uses
  %.not.i22.i2358 = icmp slt i32 %.pre3161.a, %spec.select.i2357
  br i1 %.not.i22.i2358, label %bb.avk, label %Vec_StrGrow.exit.i2350

bb.avk:                                           ; preds = %bb.avj
  %i.dry = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i23.i2359 = icmp eq ptr %i.dry, null
  %i.drz = sext i32 %spec.select.i2357 to i64     ; 2 uses
  br i1 %.not9.i23.i2359, label %bb.avm, label %bb.avl

bb.avl:                                           ; preds = %bb.avk
  %i.dsa = tail call ptr @realloc(ptr noundef nonnull %i.dry, i64 noundef %i.drz) #18
  br label %Vec_StrGrow.exit.sink.split.i2360

bb.avm:                                           ; preds = %bb.avk
  %i.dsb = tail call noalias ptr @malloc(i64 noundef %i.drz) #19
  br label %Vec_StrGrow.exit.sink.split.i2360

Vec_StrGrow.exit.sink.split.i2360:                ; preds = %bb.avl, %bb.avm, %bb.avg, %bb.avh
  %storemerge3929.a = phi ptr [ %i.drw, %bb.avh ], [ %i.drv, %bb.avg ], [ %i.dsa, %bb.avl ], [ %i.dsb, %bb.avm ]
  %spec.select.sink.i2361 = phi i32 [ %i.drq, %bb.avh ], [ %i.drq, %bb.avg ], [ %spec.select.i2357, %bb.avl ], [ %spec.select.i2357, %bb.avm ] ; 2 uses
  store ptr %storemerge3929.a, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2361, ptr %i.b, align 8, !tbaa !24
  %.pre3159 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrGrow.exit.i2350

Vec_StrGrow.exit.i2350:                           ; preds = %Vec_StrGrow.exit.sink.split.i2360, %bb.avj, %bb.avi, %bb.ave
  %.pre31603192 = phi i32 [ %spec.select.sink.i2361, %Vec_StrGrow.exit.sink.split.i2360 ], [ %.pre3161.a, %bb.avj ], [ %.pre3161.a, %bb.avi ], [ %.pre3161.a, %bb.ave ]
  %i.dsc = phi i32 [ %.pre3159, %Vec_StrGrow.exit.sink.split.i2360 ], [ %.val, %bb.avj ], [ %.val, %bb.avi ], [ %.val, %bb.ave ] ; 2 uses
  %i.dsd = icmp slt i32 %i.dsc, %i.drq
  br i1 %i.dsd, label %.lr.ph.i2352, label %._crit_edge.i2351

.lr.ph.i2352:                                     ; preds = %Vec_StrGrow.exit.i2350
  %i.dse = sext i32 %i.dsc to i64                 ; 4 uses
  %wide.trip.count.i2353 = sext i32 %i.drq to i64 ; 3 uses
  %i.dsf = sub nsw i64 %wide.trip.count.i2353, %i.dse
  %xtraiter3946 = and i64 %i.dsf, 3               ; 2 uses
  %lcmp.mod3947.not = icmp eq i64 %xtraiter3946, 0
  br i1 %lcmp.mod3947.not, label %.prol.loopexit3945, label %.prol.preheader3944

.prol.preheader3944:                              ; preds = %.lr.ph.i2352, %.prol.preheader3944
  %indvars.iv.i2354.prol = phi i64 [ %indvars.iv.next.i2355.prol, %.prol.preheader3944 ], [ %i.dse, %.lr.ph.i2352 ] ; 2 uses
  %prol.iter3948 = phi i64 [ %prol.iter3948.next, %.prol.preheader3944 ], [ 0, %.lr.ph.i2352 ]
  %i.dsg = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dsh = getelementptr inbounds i8, ptr %i.dsg, i64 %indvars.iv.i2354.prol
  store i8 48, ptr %i.dsh, align 1, !tbaa !20
  %indvars.iv.next.i2355.prol = add nsw i64 %indvars.iv.i2354.prol, 1 ; 2 uses
  %prol.iter3948.next = add i64 %prol.iter3948, 1 ; 2 uses
  %prol.iter3948.cmp.not = icmp eq i64 %prol.iter3948.next, %xtraiter3946
  br i1 %prol.iter3948.cmp.not, label %.prol.loopexit3945, label %.prol.preheader3944, !llvm.loop !88

.prol.loopexit3945:                               ; preds = %.prol.preheader3944, %.lr.ph.i2352
  %indvars.iv.i2354.unr = phi i64 [ %i.dse, %.lr.ph.i2352 ], [ %indvars.iv.next.i2355.prol, %.prol.preheader3944 ]
  %i.dsi = sub nsw i64 %i.dse, %wide.trip.count.i2353
  %i.dsj = icmp ugt i64 %i.dsi, -4
  br i1 %i.dsj, label %._crit_edge.i2351.loopexit, label %.lr.ph.i2352.new

.lr.ph.i2352.new:                                 ; preds = %.prol.loopexit3945, %.lr.ph.i2352.new
  %indvars.iv.i2354 = phi i64 [ %indvars.iv.next.i2355.3, %.lr.ph.i2352.new ], [ %indvars.iv.i2354.unr, %.prol.loopexit3945 ] ; 5 uses
  %i.dsk = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dsl = getelementptr inbounds i8, ptr %i.dsk, i64 %indvars.iv.i2354
  store i8 48, ptr %i.dsl, align 1, !tbaa !20
  %i.dsm = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dsn = getelementptr i8, ptr %i.dsm, i64 %indvars.iv.i2354
  %i.dso = getelementptr i8, ptr %i.dsn, i64 1
  store i8 48, ptr %i.dso, align 1, !tbaa !20
  %i.dsp = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dsq = getelementptr i8, ptr %i.dsp, i64 %indvars.iv.i2354
  %i.dsr = getelementptr i8, ptr %i.dsq, i64 2
  store i8 48, ptr %i.dsr, align 1, !tbaa !20
  %i.dss = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dst = getelementptr i8, ptr %i.dss, i64 %indvars.iv.i2354
  %i.dsu = getelementptr i8, ptr %i.dst, i64 3
  store i8 48, ptr %i.dsu, align 1, !tbaa !20
  %indvars.iv.next.i2355.3 = add nsw i64 %indvars.iv.i2354, 4 ; 2 uses
  %exitcond.not.i2356.3 = icmp eq i64 %indvars.iv.next.i2355.3, %wide.trip.count.i2353
  br i1 %exitcond.not.i2356.3, label %._crit_edge.i2351.loopexit, label %.lr.ph.i2352.new, !llvm.loop !81

._crit_edge.i2351.loopexit:                       ; preds = %.lr.ph.i2352.new, %.prol.loopexit3945
  %.pre3160.pre = load i32, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i2351

._crit_edge.i2351:                                ; preds = %._crit_edge.i2351.loopexit, %Vec_StrGrow.exit.i2350
  %.pre3160 = phi i32 [ %.pre3160.pre, %._crit_edge.i2351.loopexit ], [ %.pre31603192, %Vec_StrGrow.exit.i2350 ]
  store i32 %i.drq, ptr %i.da, align 4, !tbaa !23
  br label %.lr.ph.i2365

.lr.ph.i2365:                                     ; preds = %._crit_edge.i2351, %Vec_StrPush.exit.i2336.1
  %i.dsv = phi i32 [ %.pre3160, %._crit_edge.i2351 ], [ %.pre3161.a, %Vec_StrPush.exit.i2336.1 ] ; 6 uses
  %i.dsw = phi i32 [ %i.drq, %._crit_edge.i2351 ], [ %.val, %Vec_StrPush.exit.i2336.1 ] ; 2 uses
  %i.dsx = icmp eq i32 %i.dsw, %i.dsv
  br i1 %i.dsx, label %bb.avn, label %.Vec_StrPush.exit_crit_edge.i2368

.Vec_StrPush.exit_crit_edge.i2368:                ; preds = %.lr.ph.i2365
  %.pre.i2369 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2370

bb.avn:                                           ; preds = %.lr.ph.i2365
  %i.dsy = icmp slt i32 %i.dsv, 16
  br i1 %i.dsy, label %bb.avo, label %bb.avr

bb.avo:                                           ; preds = %bb.avn
  %i.dsz = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2380 = icmp eq ptr %i.dsz, null
  br i1 %.not9.i.i.i2380, label %bb.avq, label %bb.avp

bb.avp:                                           ; preds = %bb.avo
  %i.dta = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dsz, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2377

bb.avq:                                           ; preds = %bb.avo
  %i.dtb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2377

bb.avr:                                           ; preds = %bb.avn
  %i.dtc = icmp samesign ult i32 %i.dsv, 1073741823
  %i.dtd = shl nuw nsw i32 %i.dsv, 1
  %spec.select.i.i2373 = select i1 %i.dtc, i32 %i.dtd, i32 2147483647 ; 4 uses
  %.not.i9.i.i2374 = icmp samesign ult i32 %i.dsv, %spec.select.i.i2373
  %.pre8.i2375 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2374, label %bb.avs, label %Vec_StrPush.exit.i2370

bb.avs:                                           ; preds = %bb.avr
  %.not9.i10.i.i2376 = icmp eq ptr %.pre8.i2375, null
  %i.dte = zext nneg i32 %spec.select.i.i2373 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2376, label %bb.avu, label %bb.avt

bb.avt:                                           ; preds = %bb.avs
  %i.dtf = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2375, i64 noundef %i.dte) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2377

bb.avu:                                           ; preds = %bb.avs
  %i.dtg = tail call noalias ptr @malloc(i64 noundef %i.dte) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2377

Vec_StrGrow.exit11.sink.split.i.i2377:            ; preds = %bb.avu, %bb.avt, %bb.avq, %bb.avp
  %i.dth = phi ptr [ %i.dtb, %bb.avq ], [ %i.dta, %bb.avp ], [ %i.dtf, %bb.avt ], [ %i.dtg, %bb.avu ] ; 2 uses
  %spec.select.sink.i.i2378 = phi i32 [ 16, %bb.avq ], [ 16, %bb.avp ], [ %spec.select.i.i2373, %bb.avt ], [ %spec.select.i.i2373, %bb.avu ]
  store ptr %i.dth, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2378, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2379 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2370

Vec_StrPush.exit.i2370:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2377, %bb.avr, %.Vec_StrPush.exit_crit_edge.i2368
  %i.dti = phi i32 [ %i.dsw, %.Vec_StrPush.exit_crit_edge.i2368 ], [ %i.dsv, %bb.avr ], [ %.pre9.i2379, %Vec_StrGrow.exit11.sink.split.i.i2377 ] ; 2 uses
  %i.dtj = phi ptr [ %.pre.i2369, %.Vec_StrPush.exit_crit_edge.i2368 ], [ %.pre8.i2375, %bb.avr ], [ %i.dth, %Vec_StrGrow.exit11.sink.split.i.i2377 ]
  %i.dtk = add nsw i32 %i.dti, 1
  store i32 %i.dtk, ptr %i.da, align 4, !tbaa !23
  %i.dtl = sext i32 %i.dti to i64
  %i.dtm = getelementptr inbounds i8, ptr %i.dtj, i64 %i.dtl
  store i8 59, ptr %i.dtm, align 1, !tbaa !20
  %i.dtn = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.dto = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dtp = icmp eq i32 %i.dtn, %i.dto
  br i1 %i.dtp, label %bb.avv, label %.Vec_StrPush.exit_crit_edge.i2368.1

.Vec_StrPush.exit_crit_edge.i2368.1:              ; preds = %Vec_StrPush.exit.i2370
  %.pre.i2369.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2370.1

bb.avv:                                           ; preds = %Vec_StrPush.exit.i2370
  %i.dtq = icmp slt i32 %i.dtn, 16
  br i1 %i.dtq, label %bb.awa, label %bb.avw

bb.avw:                                           ; preds = %bb.avv
  %i.dtr = icmp samesign ult i32 %i.dtn, 1073741823
  %i.dts = shl nuw nsw i32 %i.dtn, 1
  %spec.select.i.i2373.1 = select i1 %i.dtr, i32 %i.dts, i32 2147483647 ; 4 uses
  %.not.i9.i.i2374.1 = icmp samesign ult i32 %i.dtn, %spec.select.i.i2373.1
  %.pre8.i2375.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2374.1, label %bb.avx, label %Vec_StrPush.exit.i2370.1

bb.avx:                                           ; preds = %bb.avw
  %.not9.i10.i.i2376.1 = icmp eq ptr %.pre8.i2375.1, null
  %i.dtt = zext nneg i32 %spec.select.i.i2373.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2376.1, label %bb.avz, label %bb.avy

bb.avy:                                           ; preds = %bb.avx
  %i.dtu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2375.1, i64 noundef %i.dtt) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2377.1

bb.avz:                                           ; preds = %bb.avx
  %i.dtv = tail call noalias ptr @malloc(i64 noundef %i.dtt) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2377.1

bb.awa:                                           ; preds = %bb.avv
  %i.dtw = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2380.1 = icmp eq ptr %i.dtw, null
  br i1 %.not9.i.i.i2380.1, label %bb.awc, label %bb.awb

bb.awb:                                           ; preds = %bb.awa
  %i.dtx = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dtw, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2377.1

bb.awc:                                           ; preds = %bb.awa
  %i.dty = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2377.1

Vec_StrGrow.exit11.sink.split.i.i2377.1:          ; preds = %bb.awc, %bb.awb, %bb.avz, %bb.avy
  %i.dtz = phi ptr [ %i.dty, %bb.awc ], [ %i.dtx, %bb.awb ], [ %i.dtu, %bb.avy ], [ %i.dtv, %bb.avz ] ; 2 uses
  %spec.select.sink.i.i2378.1 = phi i32 [ 16, %bb.awc ], [ 16, %bb.awb ], [ %spec.select.i.i2373.1, %bb.avy ], [ %spec.select.i.i2373.1, %bb.avz ]
  store ptr %i.dtz, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2378.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2379.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2370.1

Vec_StrPush.exit.i2370.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2377.1, %bb.avw, %.Vec_StrPush.exit_crit_edge.i2368.1
  %i.dua = phi i32 [ %i.dtn, %.Vec_StrPush.exit_crit_edge.i2368.1 ], [ %i.dtn, %bb.avw ], [ %.pre9.i2379.1, %Vec_StrGrow.exit11.sink.split.i.i2377.1 ] ; 2 uses
  %i.dub = phi ptr [ %.pre.i2369.1, %.Vec_StrPush.exit_crit_edge.i2368.1 ], [ %.pre8.i2375.1, %bb.avw ], [ %i.dtz, %Vec_StrGrow.exit11.sink.split.i.i2377.1 ]
  %i.duc = add nsw i32 %i.dua, 1
  store i32 %i.duc, ptr %i.da, align 4, !tbaa !23
  %i.dud = sext i32 %i.dua to i64
  %i.due = getelementptr inbounds i8, ptr %i.dub, i64 %i.dud
  store i8 10, ptr %i.due, align 1, !tbaa !20
  br label %Vec_StrPrintStr.exit2381

Vec_StrPrintStr.exit2381:                         ; preds = %Vec_StrPush.exit.i2370.1, %Vec_StrPrintStr.exit2275
  %i.duf = or i1 %i.cxv, %i.daq                   ; 2 uses
  %i.dug = select i1 %i.duf, ptr @.str.135, ptr @.str.136
  %i.duh = select i1 %i.duf, i64 9, i64 4
  br label %bb.awd

bb.awd:                                           ; preds = %Vec_StrPush.exit.i2388, %Vec_StrPrintStr.exit2381
  %indvars.iv.i2385 = phi i64 [ 0, %Vec_StrPrintStr.exit2381 ], [ %indvars.iv.next.i2389, %Vec_StrPush.exit.i2388 ] ; 2 uses
  %i.dui = getelementptr inbounds nuw i8, ptr %i.dug, i64 %indvars.iv.i2385
  %i.duj = load i8, ptr %i.dui, align 1, !tbaa !20
  %i.duk = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.dul = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dum = icmp eq i32 %i.duk, %i.dul
  br i1 %i.dum, label %bb.awe, label %.Vec_StrPush.exit_crit_edge.i2386

.Vec_StrPush.exit_crit_edge.i2386:                ; preds = %bb.awd
  %.pre.i2387 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2388

bb.awe:                                           ; preds = %bb.awd
  %i.dun = icmp slt i32 %i.duk, 16
  br i1 %i.dun, label %bb.awf, label %bb.awi

bb.awf:                                           ; preds = %bb.awe
  %i.duo = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2398 = icmp eq ptr %i.duo, null
  br i1 %.not9.i.i.i2398, label %bb.awh, label %bb.awg

bb.awg:                                           ; preds = %bb.awf
  %i.dup = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.duo, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2395

bb.awh:                                           ; preds = %bb.awf
  %i.duq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2395

bb.awi:                                           ; preds = %bb.awe
  %i.dur = icmp samesign ult i32 %i.duk, 1073741823
  %i.dus = shl nuw nsw i32 %i.duk, 1
  %spec.select.i.i2391 = select i1 %i.dur, i32 %i.dus, i32 2147483647 ; 4 uses
  %.not.i9.i.i2392 = icmp samesign ult i32 %i.duk, %spec.select.i.i2391
  %.pre8.i2393 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2392, label %bb.awj, label %Vec_StrPush.exit.i2388

bb.awj:                                           ; preds = %bb.awi
  %.not9.i10.i.i2394 = icmp eq ptr %.pre8.i2393, null
  %i.dut = zext nneg i32 %spec.select.i.i2391 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2394, label %bb.awl, label %bb.awk

bb.awk:                                           ; preds = %bb.awj
  %i.duu = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2393, i64 noundef %i.dut) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2395

bb.awl:                                           ; preds = %bb.awj
  %i.duv = tail call noalias ptr @malloc(i64 noundef %i.dut) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2395

Vec_StrGrow.exit11.sink.split.i.i2395:            ; preds = %bb.awl, %bb.awk, %bb.awh, %bb.awg
  %i.duw = phi ptr [ %i.duq, %bb.awh ], [ %i.dup, %bb.awg ], [ %i.duu, %bb.awk ], [ %i.duv, %bb.awl ] ; 2 uses
  %spec.select.sink.i.i2396 = phi i32 [ 16, %bb.awh ], [ 16, %bb.awg ], [ %spec.select.i.i2391, %bb.awk ], [ %spec.select.i.i2391, %bb.awl ]
  store ptr %i.duw, ptr %i.db, align 8, !tbaa !25
end_hunk_9
begin_hunk_10_@Cba_ManWriteVerilogNtk:bb.a

bb.axk:                                           ; preds = %Vec_StrPush.exit.i2424.1
  %i.dxj = icmp slt i32 %i.dxg, 16
  br i1 %i.dxj, label %bb.axp, label %bb.axl

bb.axl:                                           ; preds = %bb.axk
  %i.dxk = icmp samesign ult i32 %i.dxg, 1073741823
  %i.dxl = shl nuw nsw i32 %i.dxg, 1
  %spec.select.i.i2427.2 = select i1 %i.dxk, i32 %i.dxl, i32 2147483647 ; 4 uses
  %.not.i9.i.i2428.2 = icmp samesign ult i32 %i.dxg, %spec.select.i.i2427.2
  %.pre8.i2429.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2428.2, label %bb.axm, label %Vec_StrPush.exit.i2424.2

bb.axm:                                           ; preds = %bb.axl
  %.not9.i10.i.i2430.2 = icmp eq ptr %.pre8.i2429.2, null
  %i.dxm = zext nneg i32 %spec.select.i.i2427.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2430.2, label %bb.axo, label %bb.axn

bb.axn:                                           ; preds = %bb.axm
  %i.dxn = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2429.2, i64 noundef %i.dxm) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2431.2

bb.axo:                                           ; preds = %bb.axm
  %i.dxo = tail call noalias ptr @malloc(i64 noundef %i.dxm) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2431.2

bb.axp:                                           ; preds = %bb.axk
  %i.dxp = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2434.2 = icmp eq ptr %i.dxp, null
  br i1 %.not9.i.i.i2434.2, label %bb.axr, label %bb.axq

bb.axq:                                           ; preds = %bb.axp
  %i.dxq = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dxp, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2431.2

bb.axr:                                           ; preds = %bb.axp
  %i.dxr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2431.2

Vec_StrGrow.exit11.sink.split.i.i2431.2:          ; preds = %bb.axr, %bb.axq, %bb.axo, %bb.axn
  %i.dxs = phi ptr [ %i.dxr, %bb.axr ], [ %i.dxq, %bb.axq ], [ %i.dxn, %bb.axn ], [ %i.dxo, %bb.axo ] ; 2 uses
  %spec.select.sink.i.i2432.2 = phi i32 [ 16, %bb.axr ], [ 16, %bb.axq ], [ %spec.select.i.i2427.2, %bb.axn ], [ %spec.select.i.i2427.2, %bb.axo ]
  store ptr %i.dxs, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2432.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2433.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2424.2

Vec_StrPush.exit.i2424.2:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2431.2, %bb.axl, %.Vec_StrPush.exit_crit_edge.i2422.2
  %i.dxt = phi i32 [ %i.dxg, %.Vec_StrPush.exit_crit_edge.i2422.2 ], [ %i.dxg, %bb.axl ], [ %.pre9.i2433.2, %Vec_StrGrow.exit11.sink.split.i.i2431.2 ] ; 2 uses
  %i.dxu = phi ptr [ %.pre.i2423.2, %.Vec_StrPush.exit_crit_edge.i2422.2 ], [ %.pre8.i2429.2, %bb.axl ], [ %i.dxs, %Vec_StrGrow.exit11.sink.split.i.i2431.2 ]
  %i.dxv = add nsw i32 %i.dxt, 1
  store i32 %i.dxv, ptr %i.da, align 4, !tbaa !23
  %i.dxw = sext i32 %i.dxt to i64
  %i.dxx = getelementptr inbounds i8, ptr %i.dxu, i64 %i.dxw
  store i8 32, ptr %i.dxx, align 1, !tbaa !20
  br label %Vec_StrPrintStr.exit2435

Vec_StrPrintStr.exit2435:                         ; preds = %Vec_StrPush.exit.i2424.2, %Vec_StrPrintStr.exit2399
  %i.dxy = phi ptr [ @.str.131, %Vec_StrPrintStr.exit2399 ], [ @.str.132, %Vec_StrPush.exit.i2424.2 ] ; 2 uses
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.cnm, i32 noundef 0, i32 noundef 0)
  %i.dxz = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dxy) #20 ; 2 uses
  %i.dya = trunc i64 %i.dxz to i32
  %i.dyb = icmp sgt i32 %i.dya, 0
  br i1 %i.dyb, label %.lr.ph.i2437, label %Vec_StrPrintStr.exit2453

.lr.ph.i2437:                                     ; preds = %Vec_StrPrintStr.exit2435
  %wide.trip.count.i2438 = and i64 %i.dxz, 2147483647
  br label %bb.axs

bb.axs:                                           ; preds = %Vec_StrPush.exit.i2442, %.lr.ph.i2437
  %indvars.iv.i2439 = phi i64 [ 0, %.lr.ph.i2437 ], [ %indvars.iv.next.i2443, %Vec_StrPush.exit.i2442 ] ; 2 uses
  %i.dyc = getelementptr inbounds nuw i8, ptr %i.dxy, i64 %indvars.iv.i2439
  %i.dyd = load i8, ptr %i.dyc, align 1, !tbaa !20
  %i.dye = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.dyf = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dyg = icmp eq i32 %i.dye, %i.dyf
  br i1 %i.dyg, label %bb.axt, label %.Vec_StrPush.exit_crit_edge.i2440

.Vec_StrPush.exit_crit_edge.i2440:                ; preds = %bb.axs
  %.pre.i2441 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2442

bb.axt:                                           ; preds = %bb.axs
  %i.dyh = icmp slt i32 %i.dye, 16
  br i1 %i.dyh, label %bb.axu, label %bb.axx

bb.axu:                                           ; preds = %bb.axt
  %i.dyi = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2452 = icmp eq ptr %i.dyi, null
  br i1 %.not9.i.i.i2452, label %bb.axw, label %bb.axv

bb.axv:                                           ; preds = %bb.axu
  %i.dyj = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dyi, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2449

bb.axw:                                           ; preds = %bb.axu
  %i.dyk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2449

bb.axx:                                           ; preds = %bb.axt
  %i.dyl = icmp samesign ult i32 %i.dye, 1073741823
  %i.dym = shl nuw nsw i32 %i.dye, 1
  %spec.select.i.i2445 = select i1 %i.dyl, i32 %i.dym, i32 2147483647 ; 4 uses
  %.not.i9.i.i2446 = icmp samesign ult i32 %i.dye, %spec.select.i.i2445
  %.pre8.i2447 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2446, label %bb.axy, label %Vec_StrPush.exit.i2442

bb.axy:                                           ; preds = %bb.axx
  %.not9.i10.i.i2448 = icmp eq ptr %.pre8.i2447, null
  %i.dyn = zext nneg i32 %spec.select.i.i2445 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2448, label %bb.aya, label %bb.axz

bb.axz:                                           ; preds = %bb.axy
  %i.dyo = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2447, i64 noundef %i.dyn) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2449

bb.aya:                                           ; preds = %bb.axy
  %i.dyp = tail call noalias ptr @malloc(i64 noundef %i.dyn) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2449

Vec_StrGrow.exit11.sink.split.i.i2449:            ; preds = %bb.aya, %bb.axz, %bb.axw, %bb.axv
  %i.dyq = phi ptr [ %i.dyk, %bb.axw ], [ %i.dyj, %bb.axv ], [ %i.dyo, %bb.axz ], [ %i.dyp, %bb.aya ] ; 2 uses
  %spec.select.sink.i.i2450 = phi i32 [ 16, %bb.axw ], [ 16, %bb.axv ], [ %spec.select.i.i2445, %bb.axz ], [ %spec.select.i.i2445, %bb.aya ]
  store ptr %i.dyq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2450, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2451 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2442

Vec_StrPush.exit.i2442:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2449, %bb.axx, %.Vec_StrPush.exit_crit_edge.i2440
  %i.dyr = phi i32 [ %i.dye, %.Vec_StrPush.exit_crit_edge.i2440 ], [ %i.dye, %bb.axx ], [ %.pre9.i2451, %Vec_StrGrow.exit11.sink.split.i.i2449 ] ; 2 uses
  %i.dys = phi ptr [ %.pre.i2441, %.Vec_StrPush.exit_crit_edge.i2440 ], [ %.pre8.i2447, %bb.axx ], [ %i.dyq, %Vec_StrGrow.exit11.sink.split.i.i2449 ]
  %i.dyt = add nsw i32 %i.dyr, 1
  store i32 %i.dyt, ptr %i.da, align 4, !tbaa !23
  %i.dyu = sext i32 %i.dyr to i64
  %i.dyv = getelementptr inbounds i8, ptr %i.dys, i64 %i.dyu
  store i8 %i.dyd, ptr %i.dyv, align 1, !tbaa !20
  %indvars.iv.next.i2443 = add nuw nsw i64 %indvars.iv.i2439, 1 ; 2 uses
  %exitcond.not.i2444 = icmp eq i64 %indvars.iv.next.i2443, %wide.trip.count.i2438
  br i1 %exitcond.not.i2444, label %Vec_StrPrintStr.exit2453, label %bb.axs, !llvm.loop !2

Vec_StrPrintStr.exit2453:                         ; preds = %Vec_StrPush.exit.i2442, %Vec_StrPrintStr.exit2435
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.cnr, i32 noundef %1, i32 noundef 0)
  %i.dyw = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.dyx = load i32, ptr %i.b, align 8, !tbaa !24
  %i.dyy = icmp eq i32 %i.dyw, %i.dyx
  br i1 %i.dyy, label %bb.ayb, label %.Vec_StrPush.exit_crit_edge.i2458

.Vec_StrPush.exit_crit_edge.i2458:                ; preds = %Vec_StrPrintStr.exit2453
  %.pre.i2459 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1354

bb.ayb:                                           ; preds = %Vec_StrPrintStr.exit2453
  %i.dyz = icmp slt i32 %i.dyw, 16
  br i1 %i.dyz, label %bb.ayc, label %bb.ayf

bb.ayc:                                           ; preds = %bb.ayb
  %i.dza = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2470 = icmp eq ptr %i.dza, null
  br i1 %.not9.i.i.i2470, label %bb.aye, label %bb.ayd

bb.ayd:                                           ; preds = %bb.ayc
  %i.dzb = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dza, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

bb.aye:                                           ; preds = %bb.ayc
  %i.dzc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

bb.ayf:                                           ; preds = %bb.ayb
  %i.dzd = icmp samesign ult i32 %i.dyw, 1073741823
  %i.dze = shl nuw nsw i32 %i.dyw, 1
  %spec.select.i.i2463 = select i1 %i.dzd, i32 %i.dze, i32 2147483647 ; 4 uses
  %.not.i9.i.i2464 = icmp samesign ult i32 %i.dyw, %spec.select.i.i2463
  %.pre8.i2465 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2464, label %bb.ayg, label %Vec_StrPrintStr.exit1354

bb.ayg:                                           ; preds = %bb.ayf
  %.not9.i10.i.i2466 = icmp eq ptr %.pre8.i2465, null
  %i.dzf = zext nneg i32 %spec.select.i.i2463 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2466, label %bb.ayi, label %bb.ayh

bb.ayh:                                           ; preds = %bb.ayg
  %i.dzg = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2465, i64 noundef %i.dzf) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

bb.ayi:                                           ; preds = %bb.ayg
  %i.dzh = tail call noalias ptr @malloc(i64 noundef %i.dzf) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2467

Vec_StrGrow.exit11.sink.split.i.i2467:            ; preds = %bb.ayi, %bb.ayh, %bb.aye, %bb.ayd
  %i.dzi = phi ptr [ %i.dzc, %bb.aye ], [ %i.dzb, %bb.ayd ], [ %i.dzg, %bb.ayh ], [ %i.dzh, %bb.ayi ] ; 2 uses
  %spec.select.sink.i.i2468 = phi i32 [ 16, %bb.aye ], [ 16, %bb.ayd ], [ %spec.select.i.i2463, %bb.ayh ], [ %spec.select.i.i2463, %bb.ayi ]
  store ptr %i.dzi, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2468, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2469 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.ayj:                                           ; preds = %bb.aic
  %i.dzj = add nsw i32 %i.cnm, 1                  ; 12 uses
  %i.dzk = tail call fastcc i32 @Cba_FonRangeSize(ptr noundef nonnull %0, i32 noundef %i.cnm) ; 2 uses
  %.val981 = load ptr, ptr %i.x, align 8, !tbaa !93 ; 2 uses
  %i.dzl = ashr i32 %i.cnm, 5
  %i.dzm = sext i32 %i.dzl to i64
  %i.dzn = getelementptr inbounds [4 x i8], ptr %.val981, i64 %i.dzm
  %i.dzo = load i32, ptr %i.dzn, align 4, !tbaa !28
  %i.dzp = and i32 %i.cnm, 31
  %i.dzq = shl nuw i32 1, %i.dzp
  %i.dzr = and i32 %i.dzo, %i.dzq
  %.not810 = icmp eq i32 %i.dzr, 0
  br i1 %.not810, label %bb.ayk, label %bb.ayl

bb.ayk:                                           ; preds = %bb.ayj
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.cnm)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.cnm, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.85)
  br label %bb.ayl

bb.ayl:                                           ; preds = %bb.ayk, %bb.ayj
  %i.dzs = ashr i32 %i.dzj, 5
  %i.dzt = sext i32 %i.dzs to i64
  %i.dzu = getelementptr inbounds [4 x i8], ptr %.val981, i64 %i.dzt
  %i.dzv = load i32, ptr %i.dzu, align 4, !tbaa !28
  %i.dzw = and i32 %i.dzj, 31
  %i.dzx = shl nuw i32 1, %i.dzw
  %i.dzy = and i32 %i.dzv, %i.dzx
  %.not811 = icmp eq i32 %i.dzy, 0
  br i1 %.not811, label %bb.aym, label %.lr.ph.i2473.preheader

bb.aym:                                           ; preds = %bb.ayl
  %i.dzz = tail call fastcc i32 @Cba_FonName(ptr noundef nonnull %0, i32 noundef %i.dzj)
  %.not812 = icmp eq i32 %i.dzz, 0
  br i1 %.not812, label %.lr.ph.i2473.preheader, label %bb.ayn

bb.ayn:                                           ; preds = %bb.aym
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.dzj)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.dzj, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.85)
  br label %.lr.ph.i2473.preheader

.lr.ph.i2473.preheader:                           ; preds = %bb.ayl, %bb.aym, %bb.ayn
  br label %.lr.ph.i2473

.lr.ph.i2473:                                     ; preds = %.lr.ph.i2473.preheader, %Vec_StrPush.exit.i2478
  %indvars.iv.i2475 = phi i64 [ %indvars.iv.next.i2479, %Vec_StrPush.exit.i2478 ], [ 0, %.lr.ph.i2473.preheader ] ; 2 uses
  %i.eaa = getelementptr inbounds nuw i8, ptr @.str.138, i64 %indvars.iv.i2475
  %i.eab = load i8, ptr %i.eaa, align 1, !tbaa !20
  %i.eac = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ead = load i32, ptr %i.b, align 8, !tbaa !24
  %i.eae = icmp eq i32 %i.eac, %i.ead
  br i1 %i.eae, label %bb.ayo, label %.Vec_StrPush.exit_crit_edge.i2476

.Vec_StrPush.exit_crit_edge.i2476:                ; preds = %.lr.ph.i2473
  %.pre.i2477 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2478

bb.ayo:                                           ; preds = %.lr.ph.i2473
  %i.eaf = icmp slt i32 %i.eac, 16
  br i1 %i.eaf, label %bb.ayp, label %bb.ays

bb.ayp:                                           ; preds = %bb.ayo
  %i.eag = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2488 = icmp eq ptr %i.eag, null
  br i1 %.not9.i.i.i2488, label %bb.ayr, label %bb.ayq

bb.ayq:                                           ; preds = %bb.ayp
  %i.eah = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.eag, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

bb.ayr:                                           ; preds = %bb.ayp
  %i.eai = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

bb.ays:                                           ; preds = %bb.ayo
  %i.eaj = icmp samesign ult i32 %i.eac, 1073741823
  %i.eak = shl nuw nsw i32 %i.eac, 1
  %spec.select.i.i2481 = select i1 %i.eaj, i32 %i.eak, i32 2147483647 ; 4 uses
  %.not.i9.i.i2482 = icmp samesign ult i32 %i.eac, %spec.select.i.i2481
  %.pre8.i2483 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2482, label %bb.ayt, label %Vec_StrPush.exit.i2478

bb.ayt:                                           ; preds = %bb.ays
  %.not9.i10.i.i2484 = icmp eq ptr %.pre8.i2483, null
  %i.eal = zext nneg i32 %spec.select.i.i2481 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2484, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.eam = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2483, i64 noundef %i.eal) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

bb.ayv:                                           ; preds = %bb.ayt
  %i.ean = tail call noalias ptr @malloc(i64 noundef %i.eal) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2485

Vec_StrGrow.exit11.sink.split.i.i2485:            ; preds = %bb.ayv, %bb.ayu, %bb.ayr, %bb.ayq
  %i.eao = phi ptr [ %i.eai, %bb.ayr ], [ %i.eah, %bb.ayq ], [ %i.eam, %bb.ayu ], [ %i.ean, %bb.ayv ] ; 2 uses
  %spec.select.sink.i.i2486 = phi i32 [ 16, %bb.ayr ], [ 16, %bb.ayq ], [ %spec.select.i.i2481, %bb.ayu ], [ %spec.select.i.i2481, %bb.ayv ]
  store ptr %i.eao, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2486, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2487 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2478

Vec_StrPush.exit.i2478:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2485, %bb.ays, %.Vec_StrPush.exit_crit_edge.i2476
  %i.eap = phi i32 [ %i.eac, %.Vec_StrPush.exit_crit_edge.i2476 ], [ %i.eac, %bb.ays ], [ %.pre9.i2487, %Vec_StrGrow.exit11.sink.split.i.i2485 ] ; 2 uses
  %i.eaq = phi ptr [ %.pre.i2477, %.Vec_StrPush.exit_crit_edge.i2476 ], [ %.pre8.i2483, %bb.ays ], [ %i.eao, %Vec_StrGrow.exit11.sink.split.i.i2485 ]
  %i.ear = add nsw i32 %i.eap, 1
  store i32 %i.ear, ptr %i.da, align 4, !tbaa !23
  %i.eas = sext i32 %i.eap to i64
  %i.eat = getelementptr inbounds i8, ptr %i.eaq, i64 %i.eas
  store i8 %i.eab, ptr %i.eat, align 1, !tbaa !20
  %indvars.iv.next.i2479 = add nuw nsw i64 %indvars.iv.i2475, 1 ; 2 uses
  %exitcond.not.i2480 = icmp eq i64 %indvars.iv.next.i2479, 8
  br i1 %exitcond.not.i2480, label %Vec_StrPrintStr.exit2489, label %.lr.ph.i2473, !llvm.loop !2

Vec_StrPrintStr.exit2489:                         ; preds = %Vec_StrPush.exit.i2478
  %i.eau = icmp sgt i32 %i.dzk, 1
  br i1 %i.eau, label %bb.ayw, label %.lr.ph.i2491

bb.ayw:                                           ; preds = %Vec_StrPrintStr.exit2489
  %i.eav = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.139, i32 noundef %i.dzk) ; 0 uses
  br label %.lr.ph.i2491

.lr.ph.i2491:                                     ; preds = %Vec_StrPrintStr.exit2489, %bb.ayw
  %i.eaw = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.eax = load i32, ptr %i.b, align 8, !tbaa !24
  %i.eay = icmp eq i32 %i.eaw, %i.eax
  br i1 %i.eay, label %bb.ayx, label %.Vec_StrPush.exit_crit_edge.i2494

.Vec_StrPush.exit_crit_edge.i2494:                ; preds = %.lr.ph.i2491
  %.pre.i2495 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2496

bb.ayx:                                           ; preds = %.lr.ph.i2491
  %i.eaz = icmp slt i32 %i.eaw, 16
  br i1 %i.eaz, label %bb.ayy, label %bb.azb

bb.ayy:                                           ; preds = %bb.ayx
  %i.eba = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2506 = icmp eq ptr %i.eba, null
  br i1 %.not9.i.i.i2506, label %bb.aza, label %bb.ayz

bb.ayz:                                           ; preds = %bb.ayy
  %i.ebb = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.eba, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

bb.aza:                                           ; preds = %bb.ayy
  %i.ebc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

bb.azb:                                           ; preds = %bb.ayx
  %i.ebd = icmp samesign ult i32 %i.eaw, 1073741823
  %i.ebe = shl nuw nsw i32 %i.eaw, 1
  %spec.select.i.i2499 = select i1 %i.ebd, i32 %i.ebe, i32 2147483647 ; 4 uses
  %.not.i9.i.i2500 = icmp samesign ult i32 %i.eaw, %spec.select.i.i2499
  %.pre8.i2501 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2500, label %bb.azc, label %Vec_StrPush.exit.i2496

bb.azc:                                           ; preds = %bb.azb
  %.not9.i10.i.i2502 = icmp eq ptr %.pre8.i2501, null
  %i.ebf = zext nneg i32 %spec.select.i.i2499 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2502, label %bb.aze, label %bb.azd

bb.azd:                                           ; preds = %bb.azc
  %i.ebg = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2501, i64 noundef %i.ebf) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

bb.aze:                                           ; preds = %bb.azc
  %i.ebh = tail call noalias ptr @malloc(i64 noundef %i.ebf) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2503

Vec_StrGrow.exit11.sink.split.i.i2503:            ; preds = %bb.aze, %bb.azd, %bb.aza, %bb.ayz
  %i.ebi = phi ptr [ %i.ebc, %bb.aza ], [ %i.ebb, %bb.ayz ], [ %i.ebg, %bb.azd ], [ %i.ebh, %bb.aze ] ; 2 uses
  %spec.select.sink.i.i2504 = phi i32 [ 16, %bb.aza ], [ 16, %bb.ayz ], [ %spec.select.i.i2499, %bb.azd ], [ %spec.select.i.i2499, %bb.aze ]
  store ptr %i.ebi, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2504, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2505 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2496

Vec_StrPush.exit.i2496:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2503, %bb.azb, %.Vec_StrPush.exit_crit_edge.i2494
  %i.ebj = phi i32 [ %i.eaw, %.Vec_StrPush.exit_crit_edge.i2494 ], [ %i.eaw, %bb.azb ], [ %.pre9.i2505, %Vec_StrGrow.exit11.sink.split.i.i2503 ] ; 2 uses
  %i.ebk = phi ptr [ %.pre.i2495, %.Vec_StrPush.exit_crit_edge.i2494 ], [ %.pre8.i2501, %bb.azb ], [ %i.ebi, %Vec_StrGrow.exit11.sink.split.i.i2503 ]
  %i.ebl = add nsw i32 %i.ebj, 1
  store i32 %i.ebl, ptr %i.da, align 4, !tbaa !23
  %i.ebm = sext i32 %i.ebj to i64
  %i.ebn = getelementptr inbounds i8, ptr %i.ebk, i64 %i.ebm
  store i8 32, ptr %i.ebn, align 1, !tbaa !20
  %i.ebo = add nuw nsw i64 %indvars.iv3111, 1     ; 3 uses
  %i.ebp = load i32, ptr %i.tv, align 4, !tbaa !26 ; 3 uses
  %i.ebq = sext i32 %i.ebp to i64                 ; 3 uses
  %.not.i.not.i.i2508 = icmp slt i64 %indvars.iv3111, %i.ebq
  br i1 %.not.i.not.i.i2508, label %Cba_ObjName.exit2524, label %bb.azf

bb.azf:                                           ; preds = %Vec_StrPush.exit.i2496
  %i.ebr = load i32, ptr %i.tu, align 8, !tbaa !42 ; 4 uses
  %i.ebs = shl nsw i32 %i.ebr, 1                  ; 2 uses
  %i.ebt = sext i32 %i.ebs to i64
  %.not.i.i2509 = icmp slt i64 %indvars.iv3111, %i.ebt
  br i1 %.not.i.i2509, label %bb.azk, label %bb.azg

bb.azg:                                           ; preds = %bb.azf
end_hunk_10
begin_hunk_11_@Cba_ManWriteVerilogNtk:bb.a
bb.bfu:                                           ; preds = %Vec_StrPush.exit.i2656.1
  %i.erp = icmp slt i32 %i.erm, 16
  br i1 %i.erp, label %bb.bfz, label %bb.bfv

bb.bfv:                                           ; preds = %bb.bfu
  %i.erq = icmp samesign ult i32 %i.erm, 1073741823
  %i.err = shl nuw nsw i32 %i.erm, 1
  %spec.select.i.i2659.2 = select i1 %i.erq, i32 %i.err, i32 2147483647 ; 4 uses
  %.not.i9.i.i2660.2 = icmp samesign ult i32 %i.erm, %spec.select.i.i2659.2
  %.pre8.i2661.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2660.2, label %bb.bfw, label %Vec_StrPush.exit.i2656.2

bb.bfw:                                           ; preds = %bb.bfv
  %.not9.i10.i.i2662.2 = icmp eq ptr %.pre8.i2661.2, null
  %i.ers = zext nneg i32 %spec.select.i.i2659.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2662.2, label %bb.bfy, label %bb.bfx

bb.bfx:                                           ; preds = %bb.bfw
  %i.ert = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2661.2, i64 noundef %i.ers) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.2

bb.bfy:                                           ; preds = %bb.bfw
  %i.eru = tail call noalias ptr @malloc(i64 noundef %i.ers) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.2

bb.bfz:                                           ; preds = %bb.bfu
  %i.erv = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2666.2 = icmp eq ptr %i.erv, null
  br i1 %.not9.i.i.i2666.2, label %bb.bgb, label %bb.bga

bb.bga:                                           ; preds = %bb.bfz
  %i.erw = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.erv, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.2

bb.bgb:                                           ; preds = %bb.bfz
  %i.erx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.2

Vec_StrGrow.exit11.sink.split.i.i2663.2:          ; preds = %bb.bgb, %bb.bga, %bb.bfy, %bb.bfx
  %i.ery = phi ptr [ %i.erx, %bb.bgb ], [ %i.erw, %bb.bga ], [ %i.ert, %bb.bfx ], [ %i.eru, %bb.bfy ] ; 2 uses
  %spec.select.sink.i.i2664.2 = phi i32 [ 16, %bb.bgb ], [ 16, %bb.bga ], [ %spec.select.i.i2659.2, %bb.bfx ], [ %spec.select.i.i2659.2, %bb.bfy ]
  store ptr %i.ery, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2664.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2665.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2656.2

Vec_StrPush.exit.i2656.2:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2663.2, %bb.bfv, %.Vec_StrPush.exit_crit_edge.i2654.2
  %i.erz = phi i32 [ %i.erm, %.Vec_StrPush.exit_crit_edge.i2654.2 ], [ %i.erm, %bb.bfv ], [ %.pre9.i2665.2, %Vec_StrGrow.exit11.sink.split.i.i2663.2 ] ; 2 uses
  %i.esa = phi ptr [ %.pre.i2655.2, %.Vec_StrPush.exit_crit_edge.i2654.2 ], [ %.pre8.i2661.2, %bb.bfv ], [ %i.ery, %Vec_StrGrow.exit11.sink.split.i.i2663.2 ]
  %i.esb = add nsw i32 %i.erz, 1
  store i32 %i.esb, ptr %i.da, align 4, !tbaa !23
  %i.esc = sext i32 %i.erz to i64
  %i.esd = getelementptr inbounds i8, ptr %i.esa, i64 %i.esc
  store i8 41, ptr %i.esd, align 1, !tbaa !20
  %i.ese = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.esf = load i32, ptr %i.b, align 8, !tbaa !24
  %i.esg = icmp eq i32 %i.ese, %i.esf
  br i1 %i.esg, label %bb.bgc, label %.Vec_StrPush.exit_crit_edge.i2654.3

.Vec_StrPush.exit_crit_edge.i2654.3:              ; preds = %Vec_StrPush.exit.i2656.2
  %.pre.i2655.3 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1354

bb.bgc:                                           ; preds = %Vec_StrPush.exit.i2656.2
  %i.esh = icmp slt i32 %i.ese, 16
  br i1 %i.esh, label %bb.bgh, label %bb.bgd

bb.bgd:                                           ; preds = %bb.bgc
  %i.esi = icmp samesign ult i32 %i.ese, 1073741823
  %i.esj = shl nuw nsw i32 %i.ese, 1
  %spec.select.i.i2659.3 = select i1 %i.esi, i32 %i.esj, i32 2147483647 ; 4 uses
  %.not.i9.i.i2660.3 = icmp samesign ult i32 %i.ese, %spec.select.i.i2659.3
  %.pre8.i2661.3 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2660.3, label %bb.bge, label %Vec_StrPrintStr.exit1354

bb.bge:                                           ; preds = %bb.bgd
  %.not9.i10.i.i2662.3 = icmp eq ptr %.pre8.i2661.3, null
  %i.esk = zext nneg i32 %spec.select.i.i2659.3 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2662.3, label %bb.bgg, label %bb.bgf

bb.bgf:                                           ; preds = %bb.bge
  %i.esl = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2661.3, i64 noundef %i.esk) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.3

bb.bgg:                                           ; preds = %bb.bge
  %i.esm = tail call noalias ptr @malloc(i64 noundef %i.esk) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.3

bb.bgh:                                           ; preds = %bb.bgc
  %i.esn = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2666.3 = icmp eq ptr %i.esn, null
  br i1 %.not9.i.i.i2666.3, label %bb.bgj, label %bb.bgi

bb.bgi:                                           ; preds = %bb.bgh
  %i.eso = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.esn, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.3

bb.bgj:                                           ; preds = %bb.bgh
  %i.esp = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2663.3

Vec_StrGrow.exit11.sink.split.i.i2663.3:          ; preds = %bb.bgj, %bb.bgi, %bb.bgg, %bb.bgf
  %i.esq = phi ptr [ %i.esp, %bb.bgj ], [ %i.eso, %bb.bgi ], [ %i.esl, %bb.bgf ], [ %i.esm, %bb.bgg ] ; 2 uses
  %spec.select.sink.i.i2664.3 = phi i32 [ 16, %bb.bgj ], [ 16, %bb.bgi ], [ %spec.select.i.i2659.3, %bb.bgf ], [ %spec.select.i.i2659.3, %bb.bgg ]
  store ptr %i.esq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2664.3, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2665.3 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.bgk:                                           ; preds = %bb.aic
  %i.esr = add nsw i32 %i.cnm, 1                  ; 11 uses
  %i.ess = add nsw i32 %i.cnm, 2                  ; 4 uses
  %i.est = load i32, ptr %i.ty, align 4, !tbaa !26 ; 4 uses
  %.not.i.not.i.i2668 = icmp slt i32 %i.esr, %i.est
  br i1 %.not.i.not.i.i2668, label %Cba_FonName.exit2684, label %bb.bgl

bb.bgl:                                           ; preds = %bb.bgk
  %i.esu = load i32, ptr %i.tx, align 8, !tbaa !42 ; 4 uses
  %i.esv = shl nsw i32 %i.esu, 1                  ; 2 uses
  %.not.i.i2669 = icmp slt i32 %i.esr, %i.esv
  %.not.i.i.not.i.i2670 = icmp sgt i32 %i.esu, %i.esr ; 2 uses
  br i1 %.not.i.i2669, label %bb.bgq, label %bb.bgm

bb.bgm:                                           ; preds = %bb.bgl
  br i1 %.not.i.i.not.i.i2670, label %Vec_IntGrow.exit.i.i.i2675, label %bb.bgn

bb.bgn:                                           ; preds = %bb.bgm
  %i.esw = load ptr, ptr %i.tz, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i2671 = icmp eq ptr %i.esw, null
  %i.esx = sext i32 %i.ess to i64
  %i.esy = shl nsw i64 %i.esx, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i2671, label %bb.bgp, label %bb.bgo

bb.bgo:                                           ; preds = %bb.bgn
  %i.esz = tail call ptr @realloc(ptr noundef nonnull %i.esw, i64 noundef %i.esy) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i2672

bb.bgp:                                           ; preds = %bb.bgn
  %i.eta = tail call noalias ptr @malloc(i64 noundef %i.esy) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i2672

bb.bgq:                                           ; preds = %bb.bgl
  br i1 %.not.i.i.not.i.i2670, label %Vec_IntGrow.exit.i.i.i2675, label %bb.bgr

bb.bgr:                                           ; preds = %bb.bgq
  %i.etb = icmp slt i32 %i.esu, 1073741823
  %spec.select.i.i.i2681 = select i1 %i.etb, i32 %i.esv, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i2682 = icmp slt i32 %i.esu, %spec.select.i.i.i2681
  br i1 %.not.i22.i.i.i2682, label %bb.bgs, label %Vec_IntGrow.exit.i.i.i2675

bb.bgs:                                           ; preds = %bb.bgr
  %i.etc = load ptr, ptr %i.tz, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i2683 = icmp eq ptr %i.etc, null
  %i.etd = sext i32 %spec.select.i.i.i2681 to i64
  %i.ete = shl nuw nsw i64 %i.etd, 2              ; 2 uses
  br i1 %.not9.i23.i.i.i2683, label %bb.bgu, label %bb.bgt

bb.bgt:                                           ; preds = %bb.bgs
  %i.etf = tail call ptr @realloc(ptr noundef nonnull %i.etc, i64 noundef %i.ete) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i2672

bb.bgu:                                           ; preds = %bb.bgs
  %i.etg = tail call noalias ptr @malloc(i64 noundef %i.ete) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i2672

Vec_IntGrow.exit.sink.split.i.i.i2672:            ; preds = %bb.bgt, %bb.bgu, %bb.bgo, %bb.bgp
  %storemerge3925 = phi ptr [ %i.eta, %bb.bgp ], [ %i.esz, %bb.bgo ], [ %i.etf, %bb.bgt ], [ %i.etg, %bb.bgu ]
  %spec.select.sink.i.i.i2673 = phi i32 [ %i.ess, %bb.bgp ], [ %i.ess, %bb.bgo ], [ %spec.select.i.i.i2681, %bb.bgt ], [ %spec.select.i.i.i2681, %bb.bgu ]
  store ptr %storemerge3925, ptr %i.tz, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i.i2673, ptr %i.tx, align 8, !tbaa !42
  %.pre.i.i2674 = load i32, ptr %i.ty, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i2675

Vec_IntGrow.exit.i.i.i2675:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i2672, %bb.bgr, %bb.bgq, %bb.bgm
  %i.eth = phi i32 [ %.pre.i.i2674, %Vec_IntGrow.exit.sink.split.i.i.i2672 ], [ %i.est, %bb.bgr ], [ %i.est, %bb.bgq ], [ %i.est, %bb.bgm ] ; 3 uses
  %.not3.i.i2676 = icmp sgt i32 %i.eth, %i.esr
  br i1 %.not3.i.i2676, label %._crit_edge.i.i.i2679, label %.lr.ph.i.i.i2677

.lr.ph.i.i.i2677:                                 ; preds = %Vec_IntGrow.exit.i.i.i2675
  %i.eti = load ptr, ptr %i.tz, align 8, !tbaa !27
  %i.etj = sext i32 %i.eth to i64
  %i.etk = shl nsw i64 %i.etj, 2
  %scevgep.i.i.i2678 = getelementptr i8, ptr %i.eti, i64 %i.etk
  %i.etl = sub i32 %i.esr, %i.eth
  %i.etm = zext i32 %i.etl to i64
  %i.etn = shl nuw nsw i64 %i.etm, 2
  %i.eto = add nuw nsw i64 %i.etn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i2678, i8 0, i64 %i.eto, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i2679

._crit_edge.i.i.i2679:                            ; preds = %.lr.ph.i.i.i2677, %Vec_IntGrow.exit.i.i.i2675
  store i32 %i.ess, ptr %i.ty, align 4, !tbaa !26
  br label %Cba_FonName.exit2684

Cba_FonName.exit2684:                             ; preds = %bb.bgk, %._crit_edge.i.i.i2679
  %.val.i.i2680 = load ptr, ptr %i.tz, align 8, !tbaa !27
  %i.etp = sext i32 %i.esr to i64
  %i.etq = getelementptr inbounds [4 x i8], ptr %.val.i.i2680, i64 %i.etp
  %i.etr = load i32, ptr %i.etq, align 4, !tbaa !28
  %.not804 = icmp eq i32 %i.etr, 0
  %.val977 = load ptr, ptr %i.x, align 8, !tbaa !93 ; 2 uses
  %i.ets = ashr i32 %i.cnm, 5
  %i.ett = sext i32 %i.ets to i64
  %i.etu = getelementptr inbounds [4 x i8], ptr %.val977, i64 %i.ett
  %i.etv = load i32, ptr %i.etu, align 4, !tbaa !28
  %i.etw = and i32 %i.cnm, 31
  %i.etx = shl nuw i32 1, %i.etw
  %i.ety = and i32 %i.etv, %i.etx
  %.not805 = icmp eq i32 %i.ety, 0                ; 2 uses
  br i1 %.not804, label %bb.bha, label %bb.bgv

bb.bgv:                                           ; preds = %Cba_FonName.exit2684
  br i1 %.not805, label %bb.bgw, label %bb.bgx

bb.bgw:                                           ; preds = %bb.bgv
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.cnm)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.cnm, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.85)
  br label %bb.bgx

bb.bgx:                                           ; preds = %bb.bgw, %bb.bgv
  %i.etz = ashr i32 %i.esr, 5
  %i.eua = sext i32 %i.etz to i64
  %i.eub = getelementptr inbounds [4 x i8], ptr %.val977, i64 %i.eua
  %i.euc = load i32, ptr %i.eub, align 4, !tbaa !28
  %i.eud = and i32 %i.esr, 31
  %i.eue = shl nuw i32 1, %i.eud
  %i.euf = and i32 %i.euc, %i.eue
  %.not807 = icmp eq i32 %i.euf, 0
  br i1 %.not807, label %bb.bgy, label %bb.bgz

bb.bgy:                                           ; preds = %bb.bgx
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.esr)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.esr, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.85)
  br label %bb.bgz

bb.bgz:                                           ; preds = %bb.bgy, %bb.bgx
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.147)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.esr, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.58)
  br label %bb.bhd

bb.bha:                                           ; preds = %Cba_FonName.exit2684
  br i1 %.not805, label %bb.bhc, label %bb.bhb

bb.bhb:                                           ; preds = %bb.bha
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.105)
  br label %bb.bhd

bb.bhc:                                           ; preds = %bb.bha
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.cnm)
  br label %bb.bhd

bb.bhd:                                           ; preds = %bb.bhb, %bb.bhc, %bb.bgz
  %.str.132.sink = phi ptr [ @.str.148, %bb.bgz ], [ @.str.132, %bb.bhc ], [ @.str.132, %bb.bhb ]
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.cnm, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull %.str.132.sink)
  %.val917 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val918 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.eug = getelementptr inbounds nuw [4 x i8], ptr %.val917, i64 %indvars.iv3111
  %i.euh = load i32, ptr %i.eug, align 4, !tbaa !28
  %i.eui = sext i32 %i.euh to i64
  %i.euj = getelementptr inbounds [4 x i8], ptr %.val918, i64 %i.eui
  %i.euk = load i32, ptr %i.euj, align 4, !tbaa !28
  switch i32 %i.euk, label %bb.bhe [
    i32 0, label %bb.bhf
    i32 -2, label %bb.bhf
  ]

bb.bhe:                                           ; preds = %bb.bhd
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val913 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val914 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.eul = getelementptr inbounds nuw [4 x i8], ptr %.val913, i64 %indvars.iv3111
  %i.eum = load i32, ptr %i.eul, align 4, !tbaa !28
  %i.eun = sext i32 %i.eum to i64
  %i.euo = getelementptr inbounds [4 x i8], ptr %.val914, i64 %i.eun
  %i.eup = load i32, ptr %i.euo, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.eup, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.26)
  br label %bb.bhf

bb.bhf:                                           ; preds = %bb.bhd, %bb.bhd, %bb.bhe
  %i.euq = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.eur = load i32, ptr %i.b, align 8, !tbaa !24
  %i.eus = icmp eq i32 %i.euq, %i.eur
  br i1 %i.eus, label %bb.bhg, label %.Vec_StrPush.exit2692_crit_edge

.Vec_StrPush.exit2692_crit_edge:                  ; preds = %bb.bhf
  %.pre3144 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit2692

bb.bhg:                                           ; preds = %bb.bhf
  %i.eut = icmp slt i32 %i.euq, 16
  br i1 %i.eut, label %bb.bhh, label %bb.bhk

bb.bhh:                                           ; preds = %bb.bhg
  %i.euu = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2690 = icmp eq ptr %i.euu, null
  br i1 %.not9.i.i2690, label %bb.bhj, label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh
  %i.euv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.euu, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2688

bb.bhj:                                           ; preds = %bb.bhh
  %i.euw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2688

bb.bhk:                                           ; preds = %bb.bhg
  %i.eux = icmp samesign ult i32 %i.euq, 1073741823
  %i.euy = shl nuw nsw i32 %i.euq, 1
  %spec.select.i2685 = select i1 %i.eux, i32 %i.euy, i32 2147483647 ; 4 uses
  %.not.i9.i2686 = icmp samesign ult i32 %i.euq, %spec.select.i2685
  %.pre3145 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2686, label %bb.bhl, label %Vec_StrPush.exit2692

bb.bhl:                                           ; preds = %bb.bhk
  %.not9.i10.i2687 = icmp eq ptr %.pre3145, null
  %i.euz = zext nneg i32 %spec.select.i2685 to i64 ; 2 uses
  br i1 %.not9.i10.i2687, label %bb.bhn, label %bb.bhm

bb.bhm:                                           ; preds = %bb.bhl
  %i.eva = tail call ptr @realloc(ptr noundef nonnull %.pre3145, i64 noundef %i.euz) #18
  br label %Vec_StrGrow.exit11.sink.split.i2688

bb.bhn:                                           ; preds = %bb.bhl
  %i.evb = tail call noalias ptr @malloc(i64 noundef %i.euz) #19
  br label %Vec_StrGrow.exit11.sink.split.i2688

Vec_StrGrow.exit11.sink.split.i2688:              ; preds = %bb.bhm, %bb.bhn, %bb.bhi, %bb.bhj
  %i.evc = phi ptr [ %i.euw, %bb.bhj ], [ %i.euv, %bb.bhi ], [ %i.eva, %bb.bhm ], [ %i.evb, %bb.bhn ] ; 2 uses
  %spec.select.sink.i2689 = phi i32 [ 16, %bb.bhj ], [ 16, %bb.bhi ], [ %spec.select.i2685, %bb.bhm ], [ %spec.select.i2685, %bb.bhn ]
  store ptr %i.evc, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2689, ptr %i.b, align 8, !tbaa !24
  %.pre3146 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit2692

Vec_StrPush.exit2692:                             ; preds = %.Vec_StrPush.exit2692_crit_edge, %bb.bhk, %Vec_StrGrow.exit11.sink.split.i2688
  %i.evd = phi i32 [ %i.euq, %.Vec_StrPush.exit2692_crit_edge ], [ %i.euq, %bb.bhk ], [ %.pre3146, %Vec_StrGrow.exit11.sink.split.i2688 ] ; 2 uses
  %i.eve = phi ptr [ %.pre3144, %.Vec_StrPush.exit2692_crit_edge ], [ %.pre3145, %bb.bhk ], [ %i.evc, %Vec_StrGrow.exit11.sink.split.i2688 ]
  %i.evf = add nsw i32 %i.evd, 1
  store i32 %i.evf, ptr %i.da, align 4, !tbaa !23
  %i.evg = sext i32 %i.evd to i64
  %i.evh = getelementptr inbounds i8, ptr %i.eve, i64 %i.evg
  store i8 32, ptr %i.evh, align 1, !tbaa !20
  %.val911 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val912 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.evi = getelementptr inbounds nuw [4 x i8], ptr %.val911, i64 %indvars.iv3111
  %i.evj = load i32, ptr %i.evi, align 4, !tbaa !28
  %i.evk = sext i32 %i.evj to i64
  %i.evl = getelementptr [4 x i8], ptr %.val912, i64 %i.evk
  %i.evm = getelementptr i8, ptr %i.evl, i64 4
  %i.evn = load i32, ptr %i.evm, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.evn, i32 noundef %1, i32 noundef 0)
  %i.evo = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.evp = load i32, ptr %i.b, align 8, !tbaa !24
  %i.evq = icmp eq i32 %i.evo, %i.evp
  br i1 %i.evq, label %bb.bho, label %Vec_StrPush.exit2692.Vec_StrPush.exit2700_crit_edge

Vec_StrPush.exit2692.Vec_StrPush.exit2700_crit_edge: ; preds = %Vec_StrPush.exit2692
  %.pre3147 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit2700

bb.bho:                                           ; preds = %Vec_StrPush.exit2692
  %i.evr = icmp slt i32 %i.evo, 16
  br i1 %i.evr, label %bb.bhp, label %bb.bhs

bb.bhp:                                           ; preds = %bb.bho
  %i.evs = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2698 = icmp eq ptr %i.evs, null
  br i1 %.not9.i.i2698, label %bb.bhr, label %bb.bhq

bb.bhq:                                           ; preds = %bb.bhp
  %i.evt = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.evs, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2696

bb.bhr:                                           ; preds = %bb.bhp
  %i.evu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2696

bb.bhs:                                           ; preds = %bb.bho
  %i.evv = icmp samesign ult i32 %i.evo, 1073741823
  %i.evw = shl nuw nsw i32 %i.evo, 1
  %spec.select.i2693 = select i1 %i.evv, i32 %i.evw, i32 2147483647 ; 4 uses
  %.not.i9.i2694 = icmp samesign ult i32 %i.evo, %spec.select.i2693
  %.pre3148 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2694, label %bb.bht, label %Vec_StrPush.exit2700

bb.bht:                                           ; preds = %bb.bhs
  %.not9.i10.i2695 = icmp eq ptr %.pre3148, null
  %i.evx = zext nneg i32 %spec.select.i2693 to i64 ; 2 uses
  br i1 %.not9.i10.i2695, label %bb.bhv, label %bb.bhu

bb.bhu:                                           ; preds = %bb.bht
  %i.evy = tail call ptr @realloc(ptr noundef nonnull %.pre3148, i64 noundef %i.evx) #18
end_hunk_11
begin_hunk_12_@Cba_ManWriteVerilogNtk:bb.a

Vec_StrPush.exit2700:                             ; preds = %Vec_StrPush.exit2692.Vec_StrPush.exit2700_crit_edge, %bb.bhs, %Vec_StrGrow.exit11.sink.split.i2696
  %i.ewa = phi i32 [ %i.evo, %Vec_StrPush.exit2692.Vec_StrPush.exit2700_crit_edge ], [ %i.evo, %bb.bhs ], [ %.pre3149, %Vec_StrGrow.exit11.sink.split.i2696 ] ; 2 uses
  %i.ewb = phi ptr [ %.pre3147, %Vec_StrPush.exit2692.Vec_StrPush.exit2700_crit_edge ], [ %.pre3148, %bb.bhs ], [ %storemerge2995, %Vec_StrGrow.exit11.sink.split.i2696 ]
  %i.ewc = add nsw i32 %i.ewa, 1
  store i32 %i.ewc, ptr %i.da, align 4, !tbaa !23
  %i.ewd = sext i32 %i.ewa to i64
  %i.ewe = getelementptr inbounds i8, ptr %i.ewb, i64 %i.ewd
  store i8 32, ptr %i.ewe, align 1, !tbaa !20
  %i.ewf = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ewg = load i32, ptr %i.b, align 8, !tbaa !24
  %i.ewh = icmp eq i32 %i.ewf, %i.ewg
  br i1 %i.ewh, label %bb.bhw, label %.Vec_StrPush.exit_crit_edge.i2705

.Vec_StrPush.exit_crit_edge.i2705:                ; preds = %Vec_StrPush.exit2700
  %.pre.i2706 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2707

bb.bhw:                                           ; preds = %Vec_StrPush.exit2700
  %i.ewi = icmp slt i32 %i.ewf, 16
  br i1 %i.ewi, label %bb.bhx, label %bb.bia

bb.bhx:                                           ; preds = %bb.bhw
  %i.ewj = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2717 = icmp eq ptr %i.ewj, null
  br i1 %.not9.i.i.i2717, label %bb.bhz, label %bb.bhy

bb.bhy:                                           ; preds = %bb.bhx
  %i.ewk = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ewj, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2714

bb.bhz:                                           ; preds = %bb.bhx
  %i.ewl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2714

bb.bia:                                           ; preds = %bb.bhw
  %i.ewm = icmp samesign ult i32 %i.ewf, 1073741823
  %i.ewn = shl nuw nsw i32 %i.ewf, 1
  %spec.select.i.i2710 = select i1 %i.ewm, i32 %i.ewn, i32 2147483647 ; 4 uses
  %.not.i9.i.i2711 = icmp samesign ult i32 %i.ewf, %spec.select.i.i2710
  %.pre8.i2712 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2711, label %bb.bib, label %Vec_StrPush.exit.i2707

bb.bib:                                           ; preds = %bb.bia
  %.not9.i10.i.i2713 = icmp eq ptr %.pre8.i2712, null
  %i.ewo = zext nneg i32 %spec.select.i.i2710 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2713, label %bb.bid, label %bb.bic

bb.bic:                                           ; preds = %bb.bib
  %i.ewp = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2712, i64 noundef %i.ewo) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2714

bb.bid:                                           ; preds = %bb.bib
  %i.ewq = tail call noalias ptr @malloc(i64 noundef %i.ewo) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2714

Vec_StrGrow.exit11.sink.split.i.i2714:            ; preds = %bb.bid, %bb.bic, %bb.bhz, %bb.bhy
  %i.ewr = phi ptr [ %i.ewl, %bb.bhz ], [ %i.ewk, %bb.bhy ], [ %i.ewp, %bb.bic ], [ %i.ewq, %bb.bid ] ; 2 uses
  %spec.select.sink.i.i2715 = phi i32 [ 16, %bb.bhz ], [ 16, %bb.bhy ], [ %spec.select.i.i2710, %bb.bic ], [ %spec.select.i.i2710, %bb.bid ]
  store ptr %i.ewr, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2715, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2716 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2707

Vec_StrPush.exit.i2707:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2714, %bb.bia, %.Vec_StrPush.exit_crit_edge.i2705
  %i.ews = phi i32 [ %i.ewf, %.Vec_StrPush.exit_crit_edge.i2705 ], [ %i.ewf, %bb.bia ], [ %.pre9.i2716, %Vec_StrGrow.exit11.sink.split.i.i2714 ] ; 2 uses
  %i.ewt = phi ptr [ %.pre.i2706, %.Vec_StrPush.exit_crit_edge.i2705 ], [ %.pre8.i2712, %bb.bia ], [ %i.ewr, %Vec_StrGrow.exit11.sink.split.i.i2714 ]
  %i.ewu = add nsw i32 %i.ews, 1
  store i32 %i.ewu, ptr %i.da, align 4, !tbaa !23
  %i.ewv = sext i32 %i.ews to i64
  %i.eww = getelementptr inbounds i8, ptr %i.ewt, i64 %i.ewv
  store i8 43, ptr %i.eww, align 1, !tbaa !20
  %i.ewx = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ewy = load i32, ptr %i.b, align 8, !tbaa !24
  %i.ewz = icmp eq i32 %i.ewx, %i.ewy
  br i1 %i.ewz, label %bb.bie, label %Vec_StrPush.exit.i2707.Vec_StrPush.exit2726_crit_edge

Vec_StrPush.exit.i2707.Vec_StrPush.exit2726_crit_edge: ; preds = %Vec_StrPush.exit.i2707
  %.pre3150 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit2726

bb.bie:                                           ; preds = %Vec_StrPush.exit.i2707
  %i.exa = icmp slt i32 %i.ewx, 16
  br i1 %i.exa, label %bb.bif, label %bb.bii

bb.bif:                                           ; preds = %bb.bie
  %i.exb = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2724 = icmp eq ptr %i.exb, null
  br i1 %.not9.i.i2724, label %bb.bih, label %bb.big

bb.big:                                           ; preds = %bb.bif
  %i.exc = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.exb, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2722

bb.bih:                                           ; preds = %bb.bif
  %i.exd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2722

bb.bii:                                           ; preds = %bb.bie
  %i.exe = icmp samesign ult i32 %i.ewx, 1073741823
  %i.exf = shl nuw nsw i32 %i.ewx, 1
  %spec.select.i2719 = select i1 %i.exe, i32 %i.exf, i32 2147483647 ; 4 uses
  %.not.i9.i2720 = icmp samesign ult i32 %i.ewx, %spec.select.i2719
  %.pre3151 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2720, label %bb.bij, label %Vec_StrPush.exit2726

bb.bij:                                           ; preds = %bb.bii
  %.not9.i10.i2721 = icmp eq ptr %.pre3151, null
  %i.exg = zext nneg i32 %spec.select.i2719 to i64 ; 2 uses
  br i1 %.not9.i10.i2721, label %bb.bil, label %bb.bik

bb.bik:                                           ; preds = %bb.bij
  %i.exh = tail call ptr @realloc(ptr noundef nonnull %.pre3151, i64 noundef %i.exg) #18
  br label %Vec_StrGrow.exit11.sink.split.i2722

bb.bil:                                           ; preds = %bb.bij
  %i.exi = tail call noalias ptr @malloc(i64 noundef %i.exg) #19
  br label %Vec_StrGrow.exit11.sink.split.i2722

Vec_StrGrow.exit11.sink.split.i2722:              ; preds = %bb.bik, %bb.bil, %bb.big, %bb.bih
  %storemerge2996 = phi ptr [ %i.exd, %bb.bih ], [ %i.exc, %bb.big ], [ %i.exh, %bb.bik ], [ %i.exi, %bb.bil ] ; 2 uses
  %spec.select.sink.i2723 = phi i32 [ 16, %bb.bih ], [ 16, %bb.big ], [ %spec.select.i2719, %bb.bik ], [ %spec.select.i2719, %bb.bil ]
  store ptr %storemerge2996, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2723, ptr %i.b, align 8, !tbaa !24
  %.pre3152 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit2726

Vec_StrPush.exit2726:                             ; preds = %Vec_StrPush.exit.i2707.Vec_StrPush.exit2726_crit_edge, %bb.bii, %Vec_StrGrow.exit11.sink.split.i2722
  %i.exj = phi i32 [ %i.ewx, %Vec_StrPush.exit.i2707.Vec_StrPush.exit2726_crit_edge ], [ %i.ewx, %bb.bii ], [ %.pre3152, %Vec_StrGrow.exit11.sink.split.i2722 ] ; 2 uses
  %i.exk = phi ptr [ %.pre3150, %Vec_StrPush.exit.i2707.Vec_StrPush.exit2726_crit_edge ], [ %.pre3151, %bb.bii ], [ %storemerge2996, %Vec_StrGrow.exit11.sink.split.i2722 ]
  %i.exl = add nsw i32 %i.exj, 1
  store i32 %i.exl, ptr %i.da, align 4, !tbaa !23
  %i.exm = sext i32 %i.exj to i64
  %i.exn = getelementptr inbounds i8, ptr %i.exk, i64 %i.exm
  store i8 32, ptr %i.exn, align 1, !tbaa !20
  %.val909 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val910 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.exo = getelementptr inbounds nuw [4 x i8], ptr %.val909, i64 %indvars.iv3111
  %i.exp = load i32, ptr %i.exo, align 4, !tbaa !28
  %i.exq = sext i32 %i.exp to i64
  %i.exr = getelementptr [4 x i8], ptr %.val910, i64 %i.exq
  %i.exs = getelementptr i8, ptr %i.exr, i64 8
  %i.ext = load i32, ptr %i.exs, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.ext, i32 noundef %1, i32 noundef 0)
  %i.exu = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.exv = load i32, ptr %i.b, align 8, !tbaa !24
  %i.exw = icmp eq i32 %i.exu, %i.exv
  br i1 %i.exw, label %bb.bim, label %Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge

Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge: ; preds = %Vec_StrPush.exit2726
  %.pre3153 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1354

bb.bim:                                           ; preds = %Vec_StrPush.exit2726
  %i.exx = icmp slt i32 %i.exu, 16
  br i1 %i.exx, label %bb.bin, label %bb.biq

bb.bin:                                           ; preds = %bb.bim
  %i.exy = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2732 = icmp eq ptr %i.exy, null
  br i1 %.not9.i.i2732, label %bb.bip, label %bb.bio

bb.bio:                                           ; preds = %bb.bin
  %i.exz = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.exy, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2730

bb.bip:                                           ; preds = %bb.bin
  %i.eya = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2730

bb.biq:                                           ; preds = %bb.bim
  %i.eyb = icmp samesign ult i32 %i.exu, 1073741823
  %i.eyc = shl nuw nsw i32 %i.exu, 1
  %spec.select.i2727 = select i1 %i.eyb, i32 %i.eyc, i32 2147483647 ; 4 uses
  %.not.i9.i2728 = icmp samesign ult i32 %i.exu, %spec.select.i2727
  %.pre3154 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2728, label %bb.bir, label %Vec_StrPrintStr.exit1354

bb.bir:                                           ; preds = %bb.biq
  %.not9.i10.i2729 = icmp eq ptr %.pre3154, null
  %i.eyd = zext nneg i32 %spec.select.i2727 to i64 ; 2 uses
  br i1 %.not9.i10.i2729, label %bb.bit, label %bb.bis

bb.bis:                                           ; preds = %bb.bir
  %i.eye = tail call ptr @realloc(ptr noundef nonnull %.pre3154, i64 noundef %i.eyd) #18
  br label %Vec_StrGrow.exit11.sink.split.i2730

bb.bit:                                           ; preds = %bb.bir
  %i.eyf = tail call noalias ptr @malloc(i64 noundef %i.eyd) #19
  br label %Vec_StrGrow.exit11.sink.split.i2730

Vec_StrGrow.exit11.sink.split.i2730:              ; preds = %bb.bis, %bb.bit, %bb.bio, %bb.bip
  %storemerge2997 = phi ptr [ %i.eya, %bb.bip ], [ %i.exz, %bb.bio ], [ %i.eye, %bb.bis ], [ %i.eyf, %bb.bit ] ; 2 uses
  %spec.select.sink.i2731 = phi i32 [ 16, %bb.bip ], [ 16, %bb.bio ], [ %spec.select.i2727, %bb.bis ], [ %spec.select.i2727, %bb.bit ]
  store ptr %storemerge2997, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2731, ptr %i.b, align 8, !tbaa !24
  %.pre3155 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

bb.biu:                                           ; preds = %bb.aic
  %.val976 = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.eyg = ashr i32 %i.cnm, 5
  %i.eyh = sext i32 %i.eyg to i64
  %i.eyi = getelementptr inbounds [4 x i8], ptr %.val976, i64 %i.eyh
  %i.eyj = load i32, ptr %i.eyi, align 4, !tbaa !28
  %i.eyk = and i32 %i.cnm, 31
  %i.eyl = shl nuw i32 1, %i.eyk
  %i.eym = and i32 %i.eyj, %i.eyl
  %.not798 = icmp eq i32 %i.eym, 0
  br i1 %.not798, label %bb.biw, label %bb.biv

bb.biv:                                           ; preds = %bb.biu
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.105)
  br label %.lr.ph.i2736

bb.biw:                                           ; preds = %bb.biu
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84)
  %.val959 = load ptr, ptr %i.to, align 8, !tbaa !27
  %i.eyn = getelementptr inbounds nuw [4 x i8], ptr %.val959, i64 %indvars.iv3111
  %i.eyo = load i32, ptr %i.eyn, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %i.eyo)
  br label %.lr.ph.i2736

.lr.ph.i2736:                                     ; preds = %bb.biw, %bb.biv
  %.val958 = load ptr, ptr %i.to, align 8, !tbaa !27
  %i.eyp = getelementptr inbounds nuw [4 x i8], ptr %.val958, i64 %indvars.iv3111
  %i.eyq = load i32, ptr %i.eyp, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.eyq, i32 noundef 0, i32 noundef 0)
  %i.eyr = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.eys = load i32, ptr %i.b, align 8, !tbaa !24
  %i.eyt = icmp eq i32 %i.eyr, %i.eys
  br i1 %i.eyt, label %bb.bix, label %.Vec_StrPush.exit_crit_edge.i2739

.Vec_StrPush.exit_crit_edge.i2739:                ; preds = %.lr.ph.i2736
  %.pre.i2740 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2741

bb.bix:                                           ; preds = %.lr.ph.i2736
  %i.eyu = icmp slt i32 %i.eyr, 16
  br i1 %i.eyu, label %bb.biy, label %bb.bjb

bb.biy:                                           ; preds = %bb.bix
  %i.eyv = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2751 = icmp eq ptr %i.eyv, null
  br i1 %.not9.i.i.i2751, label %bb.bja, label %bb.biz

bb.biz:                                           ; preds = %bb.biy
  %i.eyw = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.eyv, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2748

bb.bja:                                           ; preds = %bb.biy
  %i.eyx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2748

bb.bjb:                                           ; preds = %bb.bix
  %i.eyy = icmp samesign ult i32 %i.eyr, 1073741823
  %i.eyz = shl nuw nsw i32 %i.eyr, 1
  %spec.select.i.i2744 = select i1 %i.eyy, i32 %i.eyz, i32 2147483647 ; 4 uses
  %.not.i9.i.i2745 = icmp samesign ult i32 %i.eyr, %spec.select.i.i2744
  %.pre8.i2746 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2745, label %bb.bjc, label %Vec_StrPush.exit.i2741

bb.bjc:                                           ; preds = %bb.bjb
  %.not9.i10.i.i2747 = icmp eq ptr %.pre8.i2746, null
  %i.eza = zext nneg i32 %spec.select.i.i2744 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2747, label %bb.bje, label %bb.bjd

bb.bjd:                                           ; preds = %bb.bjc
  %i.ezb = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2746, i64 noundef %i.eza) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2748

bb.bje:                                           ; preds = %bb.bjc
  %i.ezc = tail call noalias ptr @malloc(i64 noundef %i.eza) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2748

Vec_StrGrow.exit11.sink.split.i.i2748:            ; preds = %bb.bje, %bb.bjd, %bb.bja, %bb.biz
  %i.ezd = phi ptr [ %i.eyx, %bb.bja ], [ %i.eyw, %bb.biz ], [ %i.ezb, %bb.bjd ], [ %i.ezc, %bb.bje ] ; 2 uses
  %spec.select.sink.i.i2749 = phi i32 [ 16, %bb.bja ], [ 16, %bb.biz ], [ %spec.select.i.i2744, %bb.bjd ], [ %spec.select.i.i2744, %bb.bje ]
  store ptr %i.ezd, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2749, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2750 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2741

Vec_StrPush.exit.i2741:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2748, %bb.bjb, %.Vec_StrPush.exit_crit_edge.i2739
  %i.eze = phi i32 [ %i.eyr, %.Vec_StrPush.exit_crit_edge.i2739 ], [ %i.eyr, %bb.bjb ], [ %.pre9.i2750, %Vec_StrGrow.exit11.sink.split.i.i2748 ] ; 2 uses
  %i.ezf = phi ptr [ %.pre.i2740, %.Vec_StrPush.exit_crit_edge.i2739 ], [ %.pre8.i2746, %bb.bjb ], [ %i.ezd, %Vec_StrGrow.exit11.sink.split.i.i2748 ]
  %i.ezg = add nsw i32 %i.eze, 1
  store i32 %i.ezg, ptr %i.da, align 4, !tbaa !23
  %i.ezh = sext i32 %i.eze to i64
  %i.ezi = getelementptr inbounds i8, ptr %i.ezf, i64 %i.ezh
  store i8 32, ptr %i.ezi, align 1, !tbaa !20
  %i.ezj = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ezk = load i32, ptr %i.b, align 8, !tbaa !24
  %i.ezl = icmp eq i32 %i.ezj, %i.ezk
  br i1 %i.ezl, label %bb.bjf, label %.Vec_StrPush.exit_crit_edge.i2739.1

.Vec_StrPush.exit_crit_edge.i2739.1:              ; preds = %Vec_StrPush.exit.i2741
  %.pre.i2740.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2741.1

bb.bjf:                                           ; preds = %Vec_StrPush.exit.i2741
  %i.ezm = icmp slt i32 %i.ezj, 16
  br i1 %i.ezm, label %bb.bjk, label %bb.bjg

bb.bjg:                                           ; preds = %bb.bjf
  %i.ezn = icmp samesign ult i32 %i.ezj, 1073741823
  %i.ezo = shl nuw nsw i32 %i.ezj, 1
  %spec.select.i.i2744.1 = select i1 %i.ezn, i32 %i.ezo, i32 2147483647 ; 4 uses
  %.not.i9.i.i2745.1 = icmp samesign ult i32 %i.ezj, %spec.select.i.i2744.1
  %.pre8.i2746.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2745.1, label %bb.bjh, label %Vec_StrPush.exit.i2741.1

bb.bjh:                                           ; preds = %bb.bjg
  %.not9.i10.i.i2747.1 = icmp eq ptr %.pre8.i2746.1, null
  %i.ezp = zext nneg i32 %spec.select.i.i2744.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2747.1, label %bb.bjj, label %bb.bji

bb.bji:                                           ; preds = %bb.bjh
  %i.ezq = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2746.1, i64 noundef %i.ezp) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.1

bb.bjj:                                           ; preds = %bb.bjh
  %i.ezr = tail call noalias ptr @malloc(i64 noundef %i.ezp) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.1

bb.bjk:                                           ; preds = %bb.bjf
  %i.ezs = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2751.1 = icmp eq ptr %i.ezs, null
  br i1 %.not9.i.i.i2751.1, label %bb.bjm, label %bb.bjl

bb.bjl:                                           ; preds = %bb.bjk
  %i.ezt = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ezs, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.1

bb.bjm:                                           ; preds = %bb.bjk
  %i.ezu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.1

Vec_StrGrow.exit11.sink.split.i.i2748.1:          ; preds = %bb.bjm, %bb.bjl, %bb.bjj, %bb.bji
  %i.ezv = phi ptr [ %i.ezu, %bb.bjm ], [ %i.ezt, %bb.bjl ], [ %i.ezq, %bb.bji ], [ %i.ezr, %bb.bjj ] ; 2 uses
  %spec.select.sink.i.i2749.1 = phi i32 [ 16, %bb.bjm ], [ 16, %bb.bjl ], [ %spec.select.i.i2744.1, %bb.bji ], [ %spec.select.i.i2744.1, %bb.bjj ]
  store ptr %i.ezv, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2749.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2750.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2741.1

Vec_StrPush.exit.i2741.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2748.1, %bb.bjg, %.Vec_StrPush.exit_crit_edge.i2739.1
  %i.ezw = phi i32 [ %i.ezj, %.Vec_StrPush.exit_crit_edge.i2739.1 ], [ %i.ezj, %bb.bjg ], [ %.pre9.i2750.1, %Vec_StrGrow.exit11.sink.split.i.i2748.1 ] ; 2 uses
  %i.ezx = phi ptr [ %.pre.i2740.1, %.Vec_StrPush.exit_crit_edge.i2739.1 ], [ %.pre8.i2746.1, %bb.bjg ], [ %i.ezv, %Vec_StrGrow.exit11.sink.split.i.i2748.1 ]
  %i.ezy = add nsw i32 %i.ezw, 1
  store i32 %i.ezy, ptr %i.da, align 4, !tbaa !23
  %i.ezz = sext i32 %i.ezw to i64
  %i.faa = getelementptr inbounds i8, ptr %i.ezx, i64 %i.ezz
  store i8 61, ptr %i.faa, align 1, !tbaa !20
  %i.fab = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fac = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fad = icmp eq i32 %i.fab, %i.fac
  br i1 %i.fad, label %bb.bjn, label %.Vec_StrPush.exit_crit_edge.i2739.2

.Vec_StrPush.exit_crit_edge.i2739.2:              ; preds = %Vec_StrPush.exit.i2741.1
  %.pre.i2740.2 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2741.2

bb.bjn:                                           ; preds = %Vec_StrPush.exit.i2741.1
  %i.fae = icmp slt i32 %i.fab, 16
  br i1 %i.fae, label %bb.bjs, label %bb.bjo

bb.bjo:                                           ; preds = %bb.bjn
  %i.faf = icmp samesign ult i32 %i.fab, 1073741823
  %i.fag = shl nuw nsw i32 %i.fab, 1
  %spec.select.i.i2744.2 = select i1 %i.faf, i32 %i.fag, i32 2147483647 ; 4 uses
  %.not.i9.i.i2745.2 = icmp samesign ult i32 %i.fab, %spec.select.i.i2744.2
  %.pre8.i2746.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2745.2, label %bb.bjp, label %Vec_StrPush.exit.i2741.2

bb.bjp:                                           ; preds = %bb.bjo
  %.not9.i10.i.i2747.2 = icmp eq ptr %.pre8.i2746.2, null
  %i.fah = zext nneg i32 %spec.select.i.i2744.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2747.2, label %bb.bjr, label %bb.bjq

bb.bjq:                                           ; preds = %bb.bjp
  %i.fai = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2746.2, i64 noundef %i.fah) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.2

bb.bjr:                                           ; preds = %bb.bjp
  %i.faj = tail call noalias ptr @malloc(i64 noundef %i.fah) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.2

bb.bjs:                                           ; preds = %bb.bjn
  %i.fak = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2751.2 = icmp eq ptr %i.fak, null
  br i1 %.not9.i.i.i2751.2, label %bb.bju, label %bb.bjt

bb.bjt:                                           ; preds = %bb.bjs
  %i.fal = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fak, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.2

bb.bju:                                           ; preds = %bb.bjs
  %i.fam = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2748.2

end_hunk_12
begin_hunk_13_@Cba_ManWriteVerilogNtk:bb.a
  br label %bb.bkc

bb.bkb:                                           ; preds = %bb.bjz
  %.val897 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val898 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fcg = getelementptr inbounds nuw [4 x i8], ptr %.val897, i64 %indvars.iv3111
  %i.fch = load i32, ptr %i.fcg, align 4, !tbaa !28
  %i.fci = sext i32 %i.fch to i64
  %i.fcj = getelementptr [4 x i8], ptr %.val898, i64 %i.fci
  %i.fck = getelementptr i8, ptr %i.fcj, i64 4
  %i.fcl = load i32, ptr %i.fck, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fcl, i32 noundef %1, i32 noundef 0)
  br label %bb.bkc

bb.bkc:                                           ; preds = %bb.bkb, %bb.bka
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.153)
  %.val895 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val896 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fcm = getelementptr inbounds nuw [4 x i8], ptr %.val895, i64 %indvars.iv3111
  %i.fcn = load i32, ptr %i.fcm, align 4, !tbaa !28
  %i.fco = sext i32 %i.fcn to i64
  %i.fcp = getelementptr inbounds [4 x i8], ptr %.val896, i64 %i.fco
  %i.fcq = load i32, ptr %i.fcp, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fcq, i32 noundef %1, i32 noundef 0)
  %i.fcr = select i1 %i.fbo, ptr @.str.152, ptr @.str.151
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.fcr)
  br i1 %.not802, label %bb.bke, label %bb.bkd

bb.bkd:                                           ; preds = %bb.bkc
  %.neg = add i32 %i.fbs, 1
  %i.fcs = add i32 %.neg, %i.fby
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.b, i32 noundef %i.fcs)
  br label %bb.bkf

bb.bke:                                           ; preds = %bb.bkc
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 40)
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.b, i32 noundef %i.fbs)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.154)
  %.val893 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val894 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fct = getelementptr inbounds nuw [4 x i8], ptr %.val893, i64 %indvars.iv3111
  %i.fcu = load i32, ptr %i.fct, align 4, !tbaa !28
  %i.fcv = sext i32 %i.fcu to i64
  %i.fcw = getelementptr [4 x i8], ptr %.val894, i64 %i.fcv
  %i.fcx = getelementptr i8, ptr %i.fcw, i64 4
  %i.fcy = load i32, ptr %i.fcx, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fcy, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 41)
  br label %bb.bkf

bb.bkf:                                           ; preds = %bb.bke, %bb.bkd
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 41)
  br label %bb.bkl

bb.bkg:                                           ; preds = %bb.bjy
  switch i8 %i.ul, label %Cba_TypeIsUnary.exit [
    i8 59, label %bb.bkh
    i8 57, label %Cba_TypeIsUnary.exit.thread
    i8 56, label %Cba_TypeIsUnary.exit.thread
    i8 55, label %Cba_TypeIsUnary.exit.thread
    i8 33, label %Cba_TypeIsUnary.exit.thread
    i8 9, label %Cba_TypeIsUnary.exit.thread
    i8 8, label %Cba_TypeIsUnary.exit.thread
  ]

bb.bkh:                                           ; preds = %bb.bkg
  %.val891 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val892 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fcz = getelementptr inbounds nuw [4 x i8], ptr %.val891, i64 %indvars.iv3111
  %i.fda = load i32, ptr %i.fcz, align 4, !tbaa !28
  %i.fdb = sext i32 %i.fda to i64
  %i.fdc = getelementptr inbounds [4 x i8], ptr %.val892, i64 %i.fdb
  %i.fdd = load i32, ptr %i.fdc, align 4, !tbaa !28
  %i.fde = icmp eq i32 %i.fdd, -2
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val889 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val890 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fdf = getelementptr inbounds nuw [4 x i8], ptr %.val889, i64 %indvars.iv3111
  %i.fdg = load i32, ptr %i.fdf, align 4, !tbaa !28
  %i.fdh = sext i32 %i.fdg to i64
  %i.fdi = getelementptr [4 x i8], ptr %.val890, i64 %i.fdh
  %i.fdj = getelementptr i8, ptr %i.fdi, i64 4
  %i.fdk = load i32, ptr %i.fdj, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fdk, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %i.fdl = select i1 %i.fde, ptr @.str.34, ptr @.str.35
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.fdl)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val887 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val888 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fdm = getelementptr inbounds nuw [4 x i8], ptr %.val887, i64 %indvars.iv3111
  %i.fdn = load i32, ptr %i.fdm, align 4, !tbaa !28
  %i.fdo = sext i32 %i.fdn to i64
  %i.fdp = getelementptr [4 x i8], ptr %.val888, i64 %i.fdo
  %i.fdq = getelementptr i8, ptr %i.fdp, i64 8
  %i.fdr = load i32, ptr %i.fdq, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fdr, i32 noundef %1, i32 noundef 0)
  br label %bb.bkl

Cba_TypeIsUnary.exit:                             ; preds = %bb.bkg
  %i.fds = add nsw i8 %i.ul, -33
  %i.fdt = icmp ult i8 %i.fds, -6
  br i1 %i.fdt, label %bb.bki, label %Cba_TypeIsUnary.exit.thread

Cba_TypeIsUnary.exit.thread:                      ; preds = %bb.bkg, %bb.bkg, %bb.bkg, %bb.bkg, %bb.bkg, %bb.bkg, %Cba_TypeIsUnary.exit
  %.val998 = load ptr, ptr %0, align 8, !tbaa !46
  %i.fdu = getelementptr inbounds nuw i8, ptr %.val998, i64 112
  %i.fdv = zext nneg i8 %i.ul to i64
  %i.fdw = getelementptr inbounds nuw [8 x i8], ptr %i.fdu, i64 %i.fdv
  %i.fdx = load ptr, ptr %i.fdw, align 8, !tbaa !13
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef %i.fdx)
  %.val885 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val886 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fdy = getelementptr inbounds nuw [4 x i8], ptr %.val885, i64 %indvars.iv3111
  %i.fdz = load i32, ptr %i.fdy, align 4, !tbaa !28
  %i.fea = sext i32 %i.fdz to i64
  %i.feb = getelementptr inbounds [4 x i8], ptr %.val886, i64 %i.fea
  %i.fec = load i32, ptr %i.feb, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fec, i32 noundef %1, i32 noundef 0)
  br label %bb.bkl

bb.bki:                                           ; preds = %Cba_TypeIsUnary.exit
  %.val997 = load ptr, ptr %0, align 8, !tbaa !46
  %i.fed = getelementptr inbounds nuw i8, ptr %.val997, i64 112
  %i.fee = zext nneg i8 %i.ul to i64              ; 3 uses
  %i.fef = getelementptr inbounds nuw [8 x i8], ptr %i.fed, i64 %i.fee
  %i.feg = load ptr, ptr %i.fef, align 8, !tbaa !13
  %.not801 = icmp eq ptr %i.feg, null
  br i1 %.not801, label %bb.bkk, label %bb.bkj

bb.bkj:                                           ; preds = %bb.bki
  switch i8 %i.ul, label %.critedge836.critedge [
    i8 13, label %switch.edge
    i8 11, label %switch.edge
    i8 15, label %switch.edge
  ]

.critedge836.critedge:                            ; preds = %bb.bkj
  %.val877 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val878 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.feh = getelementptr inbounds nuw [4 x i8], ptr %.val877, i64 %indvars.iv3111
  %i.fei = load i32, ptr %i.feh, align 4, !tbaa !28
  %i.fej = sext i32 %i.fei to i64
  %i.fek = getelementptr inbounds [4 x i8], ptr %.val878, i64 %i.fej
  %i.fel = load i32, ptr %i.fek, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fel, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val995 = load ptr, ptr %0, align 8, !tbaa !46
  %i.fem = getelementptr inbounds nuw i8, ptr %.val995, i64 112
  %i.fen = getelementptr inbounds nuw [8 x i8], ptr %i.fem, i64 %i.fee
  %i.feo = load ptr, ptr %i.fen, align 8, !tbaa !13
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef %i.feo)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val875 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val876 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fep = getelementptr inbounds nuw [4 x i8], ptr %.val875, i64 %indvars.iv3111
  %i.feq = load i32, ptr %i.fep, align 4, !tbaa !28
  %i.fer = sext i32 %i.feq to i64
  %i.fes = getelementptr [4 x i8], ptr %.val876, i64 %i.fer
  %i.fet = getelementptr i8, ptr %i.fes, i64 4
  %i.feu = load i32, ptr %i.fet, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.feu, i32 noundef %1, i32 noundef 0)
  br label %bb.bkl

switch.edge:                                      ; preds = %bb.bkj, %bb.bkj, %bb.bkj
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.155)
  %.val883 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val884 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.fev = getelementptr inbounds nuw [4 x i8], ptr %.val883, i64 %indvars.iv3111
  %i.few = load i32, ptr %i.fev, align 4, !tbaa !28
  %i.fex = sext i32 %i.few to i64
  %i.fey = getelementptr inbounds [4 x i8], ptr %.val884, i64 %i.fex
  %i.fez = load i32, ptr %i.fey, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fez, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val996 = load ptr, ptr %0, align 8, !tbaa !46
  %i.ffa = getelementptr inbounds nuw i8, ptr %.val996, i64 112
  %i.ffb = getelementptr inbounds nuw [8 x i8], ptr %i.ffa, i64 %i.fee
  %i.ffc = load ptr, ptr %i.ffb, align 8, !tbaa !13
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef %i.ffc)
  tail call fastcc void @Vec_StrPush(ptr noundef nonnull %i.b, i8 noundef signext 32)
  %.val881 = load ptr, ptr %i.tp, align 8, !tbaa !27
  %.val882 = load ptr, ptr %i.tq, align 8, !tbaa !27
  %i.ffd = getelementptr inbounds nuw [4 x i8], ptr %.val881, i64 %indvars.iv3111
  %i.ffe = load i32, ptr %i.ffd, align 4, !tbaa !28
  %i.fff = sext i32 %i.ffe to i64
  %i.ffg = getelementptr [4 x i8], ptr %.val882, i64 %i.fff
  %i.ffh = getelementptr i8, ptr %i.ffg, i64 4
  %i.ffi = load i32, ptr %i.ffh, align 4, !tbaa !28
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.ffi, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.156)
  br label %bb.bkl

bb.bkk:                                           ; preds = %bb.bki
  %.val956 = load ptr, ptr %i.to, align 8, !tbaa !27
  %i.ffj = getelementptr inbounds nuw [4 x i8], ptr %.val956, i64 %indvars.iv3111
  %i.ffk = load i32, ptr %i.ffj, align 4, !tbaa !28
  %i.ffl = tail call ptr @Cba_FonGetName(ptr noundef nonnull %0, i32 noundef %i.ffk)
  tail call fastcc void @Vec_StrPrintStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.157)
  %.val944 = load ptr, ptr %0, align 8, !tbaa !46
  %.val945 = load i32, ptr %i.dw, align 4, !tbaa !95
  %i.ffm = getelementptr i8, ptr %.val944, i64 16
  %.val944.val = load ptr, ptr %i.ffm, align 8, !tbaa !48
  %i.ffn = tail call ptr @Abc_NamStr(ptr noundef %.val944.val, i32 noundef %.val945) #17
  %i.ffo = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.ffp = tail call ptr @Cba_ObjGetName(ptr noundef nonnull %0, i32 noundef %i.ffo)
  %i.ffq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.158, ptr noundef %i.ffn, ptr noundef %i.ffp, ptr noundef %i.ffl) ; 0 uses
  br label %bb.bkl

bb.bkl:                                           ; preds = %switch.edge, %.critedge836.critedge, %bb.bjx, %bb.bkh, %bb.bkk, %Cba_TypeIsUnary.exit.thread, %bb.bkf, %bb.bjv
  %i.ffr = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ffs = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fft = icmp eq i32 %i.ffr, %i.ffs
  br i1 %i.fft, label %bb.bkm, label %.Vec_StrPush.exit2761_crit_edge

.Vec_StrPush.exit2761_crit_edge:                  ; preds = %bb.bkl
  %.pre3162 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPrintStr.exit1354

bb.bkm:                                           ; preds = %bb.bkl
  %i.ffu = icmp slt i32 %i.ffr, 16
  br i1 %i.ffu, label %bb.bkn, label %bb.bkq

bb.bkn:                                           ; preds = %bb.bkm
  %i.ffv = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2759 = icmp eq ptr %i.ffv, null
  br i1 %.not9.i.i2759, label %bb.bkp, label %bb.bko

bb.bko:                                           ; preds = %bb.bkn
  %i.ffw = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ffv, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2757

bb.bkp:                                           ; preds = %bb.bkn
  %i.ffx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2757

bb.bkq:                                           ; preds = %bb.bkm
  %i.ffy = icmp samesign ult i32 %i.ffr, 1073741823
  %i.ffz = shl nuw nsw i32 %i.ffr, 1
  %spec.select.i2754 = select i1 %i.ffy, i32 %i.ffz, i32 2147483647 ; 4 uses
  %.not.i9.i2755 = icmp samesign ult i32 %i.ffr, %spec.select.i2754
  %.pre3163 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2755, label %bb.bkr, label %Vec_StrPrintStr.exit1354

bb.bkr:                                           ; preds = %bb.bkq
  %.not9.i10.i2756 = icmp eq ptr %.pre3163, null
  %i.fga = zext nneg i32 %spec.select.i2754 to i64 ; 2 uses
  br i1 %.not9.i10.i2756, label %bb.bkt, label %bb.bks

bb.bks:                                           ; preds = %bb.bkr
  %i.fgb = tail call ptr @realloc(ptr noundef nonnull %.pre3163, i64 noundef %i.fga) #18
  br label %Vec_StrGrow.exit11.sink.split.i2757

bb.bkt:                                           ; preds = %bb.bkr
  %i.fgc = tail call noalias ptr @malloc(i64 noundef %i.fga) #19
  br label %Vec_StrGrow.exit11.sink.split.i2757

Vec_StrGrow.exit11.sink.split.i2757:              ; preds = %bb.bks, %bb.bkt, %bb.bko, %bb.bkp
  %i.fgd = phi ptr [ %i.ffx, %bb.bkp ], [ %i.ffw, %bb.bko ], [ %i.fgb, %bb.bks ], [ %i.fgc, %bb.bkt ] ; 2 uses
  %spec.select.sink.i2758 = phi i32 [ 16, %bb.bkp ], [ 16, %bb.bko ], [ %spec.select.i2754, %bb.bks ], [ %spec.select.i2754, %bb.bkt ]
  store ptr %i.fgd, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2758, ptr %i.b, align 8, !tbaa !24
  %.pre3164 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1354

Vec_StrPrintStr.exit1354:                         ; preds = %Vec_StrGrow.exit11.sink.split.i2757, %bb.bkq, %.Vec_StrPush.exit2761_crit_edge, %Vec_StrGrow.exit11.sink.split.i2730, %bb.biq, %Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge, %.Vec_StrPush.exit_crit_edge.i2654.3, %bb.bgd, %Vec_StrGrow.exit11.sink.split.i.i2663.3, %.Vec_StrPush.exit_crit_edge.i2458, %bb.ayf, %Vec_StrGrow.exit11.sink.split.i.i2467, %.Vec_StrPush.exit_crit_edge.i2012.2, %bb.ahv, %Vec_StrGrow.exit11.sink.split.i.i2021.2, %.Vec_StrPush.exit_crit_edge.i1760.2, %bb.zr, %Vec_StrGrow.exit11.sink.split.i.i1769.2, %.Vec_StrPush.exit_crit_edge.i1417.3, %bb.os, %Vec_StrGrow.exit11.sink.split.i.i1426.3, %.Vec_StrPush.exit_crit_edge.i1341.1, %bb.lp, %Vec_StrGrow.exit11.sink.split.i.i1350.1
  %.sink3943 = phi i32 [ %.pre9.i1352.1, %Vec_StrGrow.exit11.sink.split.i.i1350.1 ], [ %.pre9.i2665.3, %Vec_StrGrow.exit11.sink.split.i.i2663.3 ], [ %.pre9.i2469, %Vec_StrGrow.exit11.sink.split.i.i2467 ], [ %.pre9.i2023.2, %Vec_StrGrow.exit11.sink.split.i.i2021.2 ], [ %.pre9.i1771.2, %Vec_StrGrow.exit11.sink.split.i.i1769.2 ], [ %.pre9.i1428.3, %Vec_StrGrow.exit11.sink.split.i.i1426.3 ], [ %.pre3155, %Vec_StrGrow.exit11.sink.split.i2730 ], [ %i.aiw, %.Vec_StrPush.exit_crit_edge.i1341.1 ], [ %i.aiw, %bb.lp ], [ %i.arp, %.Vec_StrPush.exit_crit_edge.i1417.3 ], [ %i.arp, %bb.os ], [ %i.bth, %.Vec_StrPush.exit_crit_edge.i1760.2 ], [ %i.bth, %bb.zr ], [ %i.cmx, %.Vec_StrPush.exit_crit_edge.i2012.2 ], [ %i.cmx, %bb.ahv ], [ %i.dyw, %.Vec_StrPush.exit_crit_edge.i2458 ], [ %i.dyw, %bb.ayf ], [ %i.ese, %.Vec_StrPush.exit_crit_edge.i2654.3 ], [ %i.ese, %bb.bgd ], [ %i.exu, %Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge ], [ %i.exu, %bb.biq ], [ %i.ffr, %.Vec_StrPush.exit2761_crit_edge ], [ %i.ffr, %bb.bkq ], [ %.pre3164, %Vec_StrGrow.exit11.sink.split.i2757 ] ; 2 uses
  %.sink3939 = phi ptr [ %i.aji, %Vec_StrGrow.exit11.sink.split.i.i1350.1 ], [ %i.esq, %Vec_StrGrow.exit11.sink.split.i.i2663.3 ], [ %i.dzi, %Vec_StrGrow.exit11.sink.split.i.i2467 ], [ %i.cnj, %Vec_StrGrow.exit11.sink.split.i.i2021.2 ], [ %i.btt, %Vec_StrGrow.exit11.sink.split.i.i1769.2 ], [ %i.asb, %Vec_StrGrow.exit11.sink.split.i.i1426.3 ], [ %storemerge2997, %Vec_StrGrow.exit11.sink.split.i2730 ], [ %.pre.i1342.1, %.Vec_StrPush.exit_crit_edge.i1341.1 ], [ %.pre8.i1348.1, %bb.lp ], [ %.pre.i1418.3, %.Vec_StrPush.exit_crit_edge.i1417.3 ], [ %.pre8.i1424.3, %bb.os ], [ %.pre.i1761.2, %.Vec_StrPush.exit_crit_edge.i1760.2 ], [ %.pre8.i1767.2, %bb.zr ], [ %.pre.i2013.2, %.Vec_StrPush.exit_crit_edge.i2012.2 ], [ %.pre8.i2019.2, %bb.ahv ], [ %.pre.i2459, %.Vec_StrPush.exit_crit_edge.i2458 ], [ %.pre8.i2465, %bb.ayf ], [ %.pre.i2655.3, %.Vec_StrPush.exit_crit_edge.i2654.3 ], [ %.pre8.i2661.3, %bb.bgd ], [ %.pre3153, %Vec_StrPush.exit2726.Vec_StrPush.exit2734_crit_edge ], [ %.pre3154, %bb.biq ], [ %.pre3162, %.Vec_StrPush.exit2761_crit_edge ], [ %.pre3163, %bb.bkq ], [ %i.fgd, %Vec_StrGrow.exit11.sink.split.i2757 ]
  %i.fge = add nsw i32 %.sink3943, 1
  store i32 %i.fge, ptr %i.da, align 4, !tbaa !23
  %i.fgf = sext i32 %.sink3943 to i64
  %i.fgg = getelementptr inbounds i8, ptr %.sink3939, i64 %i.fgf
  store i8 59, ptr %i.fgg, align 1, !tbaa !20
  %i.fgh = load ptr, ptr %0, align 8, !tbaa !46
  %i.fgi = getelementptr inbounds nuw i8, ptr %i.fgh, i64 1584
  br i1 %.not.i, label %Cba_ManWriteLineFile.exit2767, label %bb.bku

bb.bku:                                           ; preds = %Vec_StrPrintStr.exit1354
  %i.fgj = trunc nuw nsw i64 %indvars.iv3111 to i32 ; 2 uses
  %i.fgk = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef %i.fgj, i32 noundef %i.d) ; 2 uses
  %.not14.i2763 = icmp eq i32 %i.fgk, 0
  br i1 %.not14.i2763, label %Cba_ManWriteLineFile.exit2767, label %bb.bkv

bb.bkv:                                           ; preds = %bb.bku
  %i.fgl = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef %i.fgj, i32 noundef %i.f)
  %.val.i2764 = load ptr, ptr %0, align 8, !tbaa !46
  %i.fgm = getelementptr i8, ptr %.val.i2764, i64 16
  %.val.val.i2765 = load ptr, ptr %i.fgm, align 8, !tbaa !48
  %i.fgn = tail call ptr @Abc_NamStr(ptr noundef %.val.val.i2765, i32 noundef %i.fgk) #17
  %i.fgo = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.fgi, ptr noundef nonnull @.str.69, ptr noundef %i.fgn, i32 noundef %i.fgl) ; 0 uses
  br label %Cba_ManWriteLineFile.exit2767

Cba_ManWriteLineFile.exit2767:                    ; preds = %Vec_StrPrintStr.exit1354, %bb.bku, %bb.bkv
  %.not825 = phi i1 [ false, %bb.bkv ], [ true, %bb.bku ], [ true, %Vec_StrPrintStr.exit1354 ]
  %.val974 = load ptr, ptr %i.tn, align 8, !tbaa !25
  %i.fgp = getelementptr inbounds nuw i8, ptr %.val974, i64 %indvars.iv3111
  %i.fgq = load i8, ptr %i.fgp, align 1, !tbaa !20
  %.not2999 = icmp eq i8 %i.fgq, 3
  br i1 %.not2999, label %Vec_StrPrintStr.exit2838, label %bb.bkw

bb.bkw:                                           ; preds = %Cba_ManWriteLineFile.exit2767
  %i.fgr = add nuw nsw i64 %indvars.iv3111, 1     ; 3 uses
  %i.fgs = load i32, ptr %i.tv, align 4, !tbaa !26 ; 3 uses
  %i.fgt = sext i32 %i.fgs to i64                 ; 3 uses
  %.not.i.not.i.i2768 = icmp slt i64 %indvars.iv3111, %i.fgt
  br i1 %.not.i.not.i.i2768, label %Cba_ObjName.exit2784, label %bb.bkx

bb.bkx:                                           ; preds = %bb.bkw
  %i.fgu = load i32, ptr %i.tu, align 8, !tbaa !42 ; 4 uses
  %i.fgv = shl nsw i32 %i.fgu, 1                  ; 2 uses
  %i.fgw = sext i32 %i.fgv to i64
  %.not.i.i2769 = icmp slt i64 %indvars.iv3111, %i.fgw
  br i1 %.not.i.i2769, label %bb.blc, label %bb.bky

bb.bky:                                           ; preds = %bb.bkx
  %i.fgx = load ptr, ptr %i.tw, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i2771 = icmp eq ptr %i.fgx, null
  %i.fgy = shl nuw nsw i64 %i.fgr, 2              ; 2 uses
  br i1 %.not9.i.i.i.i2771, label %bb.bla, label %bb.bkz

bb.bkz:                                           ; preds = %bb.bky
  %i.fgz = tail call ptr @realloc(ptr noundef nonnull %i.fgx, i64 noundef %i.fgy) #18
  br label %bb.blb

bb.bla:                                           ; preds = %bb.bky
  %i.fha = tail call noalias ptr @malloc(i64 noundef %i.fgy) #19
  br label %bb.blb

bb.blb:                                           ; preds = %bb.bla, %bb.bkz
  %i.fhb = phi ptr [ %i.fgz, %bb.bkz ], [ %i.fha, %bb.bla ]
  store ptr %i.fhb, ptr %i.tw, align 8, !tbaa !27
  %i.fhc = trunc nuw nsw i64 %i.fgr to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i2772

bb.blc:                                           ; preds = %bb.bkx
  %i.fhd = sext i32 %i.fgu to i64
  %.not.i.i.not.i.i2770 = icmp slt i64 %indvars.iv3111, %i.fhd
  br i1 %.not.i.i.not.i.i2770, label %Vec_IntGrow.exit.i.i.i2775, label %bb.bld

bb.bld:                                           ; preds = %bb.blc
  %i.fhe = icmp slt i32 %i.fgu, 1073741823
  %spec.select.i.i.i2781 = select i1 %i.fhe, i32 %i.fgv, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i2782 = icmp slt i32 %i.fgu, %spec.select.i.i.i2781
  br i1 %.not.i22.i.i.i2782, label %bb.ble, label %Vec_IntGrow.exit.i.i.i2775

bb.ble:                                           ; preds = %bb.bld
  %i.fhf = load ptr, ptr %i.tw, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i2783 = icmp eq ptr %i.fhf, null
  %i.fhg = sext i32 %spec.select.i.i.i2781 to i64
  %i.fhh = shl nuw nsw i64 %i.fhg, 2              ; 2 uses
  br i1 %.not9.i23.i.i.i2783, label %bb.blg, label %bb.blf

bb.blf:                                           ; preds = %bb.ble
  %i.fhi = tail call ptr @realloc(ptr noundef nonnull %i.fhf, i64 noundef %i.fhh) #18
  br label %bb.blh

bb.blg:                                           ; preds = %bb.ble
  %i.fhj = tail call noalias ptr @malloc(i64 noundef %i.fhh) #19
  br label %bb.blh

bb.blh:                                           ; preds = %bb.blg, %bb.blf
  %i.fhk = phi ptr [ %i.fhi, %bb.blf ], [ %i.fhj, %bb.blg ]
  store ptr %i.fhk, ptr %i.tw, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i2772

Vec_IntGrow.exit.sink.split.i.i.i2772:            ; preds = %bb.blh, %bb.blb
  %spec.select.sink.i.i.i2773 = phi i32 [ %spec.select.i.i.i2781, %bb.blh ], [ %i.fhc, %bb.blb ]
  store i32 %spec.select.sink.i.i.i2773, ptr %i.tu, align 8, !tbaa !42
  %.pre.i.i2774 = load i32, ptr %i.tv, align 4, !tbaa !26 ; 2 uses
  %.pre3193 = sext i32 %.pre.i.i2774 to i64
  br label %Vec_IntGrow.exit.i.i.i2775

Vec_IntGrow.exit.i.i.i2775:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i2772, %bb.bld, %bb.blc
  %.pre-phi = phi i64 [ %.pre3193, %Vec_IntGrow.exit.sink.split.i.i.i2772 ], [ %i.fgt, %bb.bld ], [ %i.fgt, %bb.blc ] ; 2 uses
  %i.fhl = phi i32 [ %.pre.i.i2774, %Vec_IntGrow.exit.sink.split.i.i.i2772 ], [ %i.fgs, %bb.bld ], [ %i.fgs, %bb.blc ]
  %.not3.i.i2776 = icmp sgt i64 %.pre-phi, %indvars.iv3111
  br i1 %.not3.i.i2776, label %._crit_edge.i.i.i2779, label %.lr.ph.i.i.i2777

.lr.ph.i.i.i2777:                                 ; preds = %Vec_IntGrow.exit.i.i.i2775
  %i.fhm = load ptr, ptr %i.tw, align 8, !tbaa !27
  %i.fhn = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i2778 = getelementptr i8, ptr %i.fhm, i64 %i.fhn
  %i.fho = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.fhp = sub i32 %i.fho, %i.fhl
  %i.fhq = zext i32 %i.fhp to i64
  %i.fhr = shl nuw nsw i64 %i.fhq, 2
  %i.fhs = add nuw nsw i64 %i.fhr, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i2778, i8 0, i64 %i.fhs, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i2779

._crit_edge.i.i.i2779:                            ; preds = %.lr.ph.i.i.i2777, %Vec_IntGrow.exit.i.i.i2775
  %i.fht = trunc nuw nsw i64 %i.fgr to i32
  store i32 %i.fht, ptr %i.tv, align 4, !tbaa !26
  br label %Cba_ObjName.exit2784

Cba_ObjName.exit2784:                             ; preds = %bb.bkw, %._crit_edge.i.i.i2779
  %.val.i.i2780 = load ptr, ptr %i.tw, align 8, !tbaa !27
  %i.fhu = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2780, i64 %indvars.iv3111
  %i.fhv = load i32, ptr %i.fhu, align 4, !tbaa !28
  %.not824 = icmp eq i32 %i.fhv, 0
  br i1 %.not824, label %Vec_StrPrintStr.exit2838, label %bb.bli
end_hunk_13
begin_hunk_14_@Cba_ManWriteVerilogNtk:bb.a
  %.not.i9.i.i2813.5 = icmp samesign ult i32 %i.foc, %spec.select.i.i2812.5
  %.pre8.i2814.5 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2813.5, label %bb.bof, label %Vec_StrPush.exit.i2809.5

bb.bof:                                           ; preds = %bb.boe
  %.not9.i10.i.i2815.5 = icmp eq ptr %.pre8.i2814.5, null
  %i.foi = zext nneg i32 %spec.select.i.i2812.5 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2815.5, label %bb.boh, label %bb.bog

bb.bog:                                           ; preds = %bb.bof
  %i.foj = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2814.5, i64 noundef %i.foi) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2816.5

bb.boh:                                           ; preds = %bb.bof
  %i.fok = tail call noalias ptr @malloc(i64 noundef %i.foi) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2816.5

bb.boi:                                           ; preds = %bb.bod
  %i.fol = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2819.5 = icmp eq ptr %i.fol, null
  br i1 %.not9.i.i.i2819.5, label %bb.bok, label %bb.boj

bb.boj:                                           ; preds = %bb.boi
  %i.fom = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fol, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2816.5

bb.bok:                                           ; preds = %bb.boi
  %i.fon = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2816.5

Vec_StrGrow.exit11.sink.split.i.i2816.5:          ; preds = %bb.bok, %bb.boj, %bb.boh, %bb.bog
  %i.foo = phi ptr [ %i.fon, %bb.bok ], [ %i.fom, %bb.boj ], [ %i.foj, %bb.bog ], [ %i.fok, %bb.boh ] ; 2 uses
  %spec.select.sink.i.i2817.5 = phi i32 [ 16, %bb.bok ], [ 16, %bb.boj ], [ %spec.select.i.i2812.5, %bb.bog ], [ %spec.select.i.i2812.5, %bb.boh ]
  store ptr %i.foo, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2817.5, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2818.5 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2809.5

Vec_StrPush.exit.i2809.5:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2816.5, %bb.boe, %.Vec_StrPush.exit_crit_edge.i2807.5
  %i.fop = phi i32 [ %i.foc, %.Vec_StrPush.exit_crit_edge.i2807.5 ], [ %i.foc, %bb.boe ], [ %.pre9.i2818.5, %Vec_StrGrow.exit11.sink.split.i.i2816.5 ] ; 2 uses
  %i.foq = phi ptr [ %.pre.i2808.5, %.Vec_StrPush.exit_crit_edge.i2807.5 ], [ %.pre8.i2814.5, %bb.boe ], [ %i.foo, %Vec_StrGrow.exit11.sink.split.i.i2816.5 ]
  %i.for = add nsw i32 %i.fop, 1
  store i32 %i.for, ptr %i.da, align 4, !tbaa !23
  %i.fos = sext i32 %i.fop to i64
  %i.fot = getelementptr inbounds i8, ptr %i.foq, i64 %i.fos
  store i8 61, ptr %i.fot, align 1, !tbaa !20
  %i.fou = trunc nuw nsw i64 %indvars.iv3111 to i32
  %i.fov = tail call ptr @Cba_ObjGetName(ptr noundef nonnull %0, i32 noundef %i.fou) ; 2 uses
  %i.fow = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fov) #20 ; 2 uses
  %i.fox = trunc i64 %i.fow to i32
  %i.foy = icmp sgt i32 %i.fox, 0
  br i1 %i.foy, label %.lr.ph.i2822, label %Vec_StrPrintStr.exit2838

.lr.ph.i2822:                                     ; preds = %Vec_StrPush.exit.i2809.5
  %wide.trip.count.i2823 = and i64 %i.fow, 2147483647
  br label %bb.bol

bb.bol:                                           ; preds = %Vec_StrPush.exit.i2827, %.lr.ph.i2822
  %indvars.iv.i2824 = phi i64 [ 0, %.lr.ph.i2822 ], [ %indvars.iv.next.i2828, %Vec_StrPush.exit.i2827 ] ; 2 uses
  %i.foz = getelementptr inbounds nuw i8, ptr %i.fov, i64 %indvars.iv.i2824
  %i.fpa = load i8, ptr %i.foz, align 1, !tbaa !20
  %i.fpb = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fpc = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fpd = icmp eq i32 %i.fpb, %i.fpc
  br i1 %i.fpd, label %bb.bom, label %.Vec_StrPush.exit_crit_edge.i2825

.Vec_StrPush.exit_crit_edge.i2825:                ; preds = %bb.bol
  %.pre.i2826 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2827

bb.bom:                                           ; preds = %bb.bol
  %i.fpe = icmp slt i32 %i.fpb, 16
  br i1 %i.fpe, label %bb.bon, label %bb.boq

bb.bon:                                           ; preds = %bb.bom
  %i.fpf = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2837 = icmp eq ptr %i.fpf, null
  br i1 %.not9.i.i.i2837, label %bb.bop, label %bb.boo

bb.boo:                                           ; preds = %bb.bon
  %i.fpg = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fpf, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2834

bb.bop:                                           ; preds = %bb.bon
  %i.fph = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2834

bb.boq:                                           ; preds = %bb.bom
  %i.fpi = icmp samesign ult i32 %i.fpb, 1073741823
  %i.fpj = shl nuw nsw i32 %i.fpb, 1
  %spec.select.i.i2830 = select i1 %i.fpi, i32 %i.fpj, i32 2147483647 ; 4 uses
  %.not.i9.i.i2831 = icmp samesign ult i32 %i.fpb, %spec.select.i.i2830
  %.pre8.i2832 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2831, label %bb.bor, label %Vec_StrPush.exit.i2827

bb.bor:                                           ; preds = %bb.boq
  %.not9.i10.i.i2833 = icmp eq ptr %.pre8.i2832, null
  %i.fpk = zext nneg i32 %spec.select.i.i2830 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2833, label %bb.bot, label %bb.bos

bb.bos:                                           ; preds = %bb.bor
  %i.fpl = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2832, i64 noundef %i.fpk) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2834

bb.bot:                                           ; preds = %bb.bor
  %i.fpm = tail call noalias ptr @malloc(i64 noundef %i.fpk) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2834

Vec_StrGrow.exit11.sink.split.i.i2834:            ; preds = %bb.bot, %bb.bos, %bb.bop, %bb.boo
  %i.fpn = phi ptr [ %i.fph, %bb.bop ], [ %i.fpg, %bb.boo ], [ %i.fpl, %bb.bos ], [ %i.fpm, %bb.bot ] ; 2 uses
  %spec.select.sink.i.i2835 = phi i32 [ 16, %bb.bop ], [ 16, %bb.boo ], [ %spec.select.i.i2830, %bb.bos ], [ %spec.select.i.i2830, %bb.bot ]
  store ptr %i.fpn, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2835, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2836 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2827

Vec_StrPush.exit.i2827:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2834, %bb.boq, %.Vec_StrPush.exit_crit_edge.i2825
  %i.fpo = phi i32 [ %i.fpb, %.Vec_StrPush.exit_crit_edge.i2825 ], [ %i.fpb, %bb.boq ], [ %.pre9.i2836, %Vec_StrGrow.exit11.sink.split.i.i2834 ] ; 2 uses
  %i.fpp = phi ptr [ %.pre.i2826, %.Vec_StrPush.exit_crit_edge.i2825 ], [ %.pre8.i2832, %bb.boq ], [ %i.fpn, %Vec_StrGrow.exit11.sink.split.i.i2834 ]
  %i.fpq = add nsw i32 %i.fpo, 1
  store i32 %i.fpq, ptr %i.da, align 4, !tbaa !23
  %i.fpr = sext i32 %i.fpo to i64
  %i.fps = getelementptr inbounds i8, ptr %i.fpp, i64 %i.fpr
  store i8 %i.fpa, ptr %i.fps, align 1, !tbaa !20
  %indvars.iv.next.i2828 = add nuw nsw i64 %indvars.iv.i2824, 1 ; 2 uses
  %exitcond.not.i2829 = icmp eq i64 %indvars.iv.next.i2828, %wide.trip.count.i2823
  br i1 %exitcond.not.i2829, label %Vec_StrPrintStr.exit2838, label %bb.bol, !llvm.loop !2

Vec_StrPrintStr.exit2838:                         ; preds = %Vec_StrPush.exit.i2827, %Vec_StrPush.exit.i2809.5, %Cba_ObjName.exit2784, %Cba_ManWriteLineFile.exit2767
  %i.fpt = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fpu = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fpv = icmp eq i32 %i.fpt, %i.fpu
  br i1 %i.fpv, label %bb.bou, label %Vec_StrPrintStr.exit2838.Vec_StrPush.exit2846_crit_edge

Vec_StrPrintStr.exit2838.Vec_StrPush.exit2846_crit_edge: ; preds = %Vec_StrPrintStr.exit2838
  %.pre3177 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit2846

bb.bou:                                           ; preds = %Vec_StrPrintStr.exit2838
  %i.fpw = icmp slt i32 %i.fpt, 16
  br i1 %i.fpw, label %bb.bov, label %bb.boy

bb.bov:                                           ; preds = %bb.bou
  %i.fpx = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2844 = icmp eq ptr %i.fpx, null
  br i1 %.not9.i.i2844, label %bb.box, label %bb.bow

bb.bow:                                           ; preds = %bb.bov
  %i.fpy = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fpx, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2842

bb.box:                                           ; preds = %bb.bov
  %i.fpz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2842

bb.boy:                                           ; preds = %bb.bou
  %i.fqa = icmp samesign ult i32 %i.fpt, 1073741823
  %i.fqb = shl nuw nsw i32 %i.fpt, 1
  %spec.select.i2839 = select i1 %i.fqa, i32 %i.fqb, i32 2147483647 ; 4 uses
  %.not.i9.i2840 = icmp samesign ult i32 %i.fpt, %spec.select.i2839
  %.pre3178 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2840, label %bb.boz, label %Vec_StrPush.exit2846

bb.boz:                                           ; preds = %bb.boy
  %.not9.i10.i2841 = icmp eq ptr %.pre3178, null
  %i.fqc = zext nneg i32 %spec.select.i2839 to i64 ; 2 uses
  br i1 %.not9.i10.i2841, label %bb.bpb, label %bb.bpa

bb.bpa:                                           ; preds = %bb.boz
  %i.fqd = tail call ptr @realloc(ptr noundef nonnull %.pre3178, i64 noundef %i.fqc) #18
  br label %Vec_StrGrow.exit11.sink.split.i2842

bb.bpb:                                           ; preds = %bb.boz
  %i.fqe = tail call noalias ptr @malloc(i64 noundef %i.fqc) #19
  br label %Vec_StrGrow.exit11.sink.split.i2842

Vec_StrGrow.exit11.sink.split.i2842:              ; preds = %bb.bpa, %bb.bpb, %bb.bow, %bb.box
  %i.fqf = phi ptr [ %i.fpz, %bb.box ], [ %i.fpy, %bb.bow ], [ %i.fqd, %bb.bpa ], [ %i.fqe, %bb.bpb ] ; 2 uses
  %spec.select.sink.i2843 = phi i32 [ 16, %bb.box ], [ 16, %bb.bow ], [ %spec.select.i2839, %bb.bpa ], [ %spec.select.i2839, %bb.bpb ]
  store ptr %i.fqf, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2843, ptr %i.b, align 8, !tbaa !24
  %.pre3179 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit2846

Vec_StrPush.exit2846:                             ; preds = %Vec_StrPrintStr.exit2838.Vec_StrPush.exit2846_crit_edge, %bb.boy, %Vec_StrGrow.exit11.sink.split.i2842
  %i.fqg = phi i32 [ %i.fpt, %Vec_StrPrintStr.exit2838.Vec_StrPush.exit2846_crit_edge ], [ %i.fpt, %bb.boy ], [ %.pre3179, %Vec_StrGrow.exit11.sink.split.i2842 ] ; 2 uses
  %i.fqh = phi ptr [ %.pre3177, %Vec_StrPrintStr.exit2838.Vec_StrPush.exit2846_crit_edge ], [ %.pre3178, %bb.boy ], [ %i.fqf, %Vec_StrGrow.exit11.sink.split.i2842 ]
  %i.fqi = add nsw i32 %i.fqg, 1
  store i32 %i.fqi, ptr %i.da, align 4, !tbaa !23
  %i.fqj = sext i32 %i.fqg to i64
  %i.fqk = getelementptr inbounds i8, ptr %i.fqh, i64 %i.fqj
  store i8 10, ptr %i.fqk, align 1, !tbaa !20
  %.val841.pre = load i32, ptr %i.tl, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1208

Vec_StrPrintStr.exit1208:                         ; preds = %Vec_StrPush.exit2846, %bb.gk
  %.val841 = phi i32 [ %.val841.pre, %Vec_StrPush.exit2846 ], [ %.val8413180, %bb.gk ] ; 2 uses
  %indvars.iv.next3112 = add nuw nsw i64 %indvars.iv3111, 1 ; 2 uses
  %i.fql = sext i32 %.val841 to i64
  %i.fqm = icmp slt i64 %indvars.iv.next3112, %i.fql
  br i1 %i.fqm, label %bb.gk, label %.preheader, !llvm.loop !89

bb.bpc:                                           ; preds = %.lr.ph3065, %bb.bsd
  %indvars.iv3114 = phi i64 [ 0, %.lr.ph3065 ], [ %indvars.iv.next3115, %bb.bsd ] ; 2 uses
  %.val872 = load ptr, ptr %i.ub, align 8, !tbaa !27
  %i.fqn = getelementptr inbounds nuw [4 x i8], ptr %.val872, i64 %indvars.iv3114
  %i.fqo = load i32, ptr %i.fqn, align 4, !tbaa !28 ; 8 uses
  %.val879 = load ptr, ptr %i.uc, align 8, !tbaa !27
  %.val880 = load ptr, ptr %i.ud, align 8, !tbaa !27
  %i.fqp = sext i32 %i.fqo to i64                 ; 2 uses
  %i.fqq = getelementptr inbounds [4 x i8], ptr %.val879, i64 %i.fqp
  %i.fqr = load i32, ptr %i.fqq, align 4, !tbaa !28
  %i.fqs = sext i32 %i.fqr to i64
  %i.fqt = getelementptr inbounds [4 x i8], ptr %.val880, i64 %i.fqs
  %i.fqu = load i32, ptr %i.fqt, align 4, !tbaa !28 ; 10 uses
  %.not = icmp eq i32 %i.fqu, 0
  br i1 %.not, label %bb.bsd, label %bb.bpd

bb.bpd:                                           ; preds = %bb.bpc
  %.not792 = icmp sgt i32 %i.fqu, -1
  br i1 %.not792, label %bb.bpe, label %.lr.ph.i2883.preheader

bb.bpe:                                           ; preds = %bb.bpd
  %i.fqv = add nuw nsw i32 %i.fqu, 1              ; 4 uses
  %i.fqw = load i32, ptr %i.uf, align 4, !tbaa !26 ; 3 uses
  %.not.i.not.i.i2848 = icmp slt i32 %i.fqu, %i.fqw
  br i1 %.not.i.not.i.i2848, label %Cba_FonName.exit2864, label %bb.bpf

bb.bpf:                                           ; preds = %bb.bpe
  %i.fqx = load i32, ptr %i.ue, align 8, !tbaa !42 ; 4 uses
  %i.fqy = shl nsw i32 %i.fqx, 1                  ; 2 uses
  %.not.i.i2849 = icmp slt i32 %i.fqu, %i.fqy
  br i1 %.not.i.i2849, label %bb.bpj, label %bb.bpg

bb.bpg:                                           ; preds = %bb.bpf
  %i.fqz = load ptr, ptr %i.ug, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i2851 = icmp eq ptr %i.fqz, null
  %i.fra = zext nneg i32 %i.fqv to i64
  %i.frb = shl nuw nsw i64 %i.fra, 2              ; 2 uses
  br i1 %.not9.i.i.i.i2851, label %bb.bpi, label %bb.bph

bb.bph:                                           ; preds = %bb.bpg
  %i.frc = tail call ptr @realloc(ptr noundef nonnull %i.fqz, i64 noundef %i.frb) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i2852

bb.bpi:                                           ; preds = %bb.bpg
  %i.frd = tail call noalias ptr @malloc(i64 noundef %i.frb) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i2852

bb.bpj:                                           ; preds = %bb.bpf
  %.not.i.i.not.i.i2850 = icmp sgt i32 %i.fqx, %i.fqu
  br i1 %.not.i.i.not.i.i2850, label %Vec_IntGrow.exit.i.i.i2855, label %bb.bpk

bb.bpk:                                           ; preds = %bb.bpj
  %i.fre = icmp slt i32 %i.fqx, 1073741823
  %spec.select.i.i.i2861 = select i1 %i.fre, i32 %i.fqy, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i2862 = icmp slt i32 %i.fqx, %spec.select.i.i.i2861
  br i1 %.not.i22.i.i.i2862, label %bb.bpl, label %Vec_IntGrow.exit.i.i.i2855

bb.bpl:                                           ; preds = %bb.bpk
  %i.frf = load ptr, ptr %i.ug, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i2863 = icmp eq ptr %i.frf, null
  %i.frg = zext nneg i32 %spec.select.i.i.i2861 to i64
  %i.frh = shl nuw nsw i64 %i.frg, 2              ; 2 uses
  br i1 %.not9.i23.i.i.i2863, label %bb.bpn, label %bb.bpm

bb.bpm:                                           ; preds = %bb.bpl
  %i.fri = tail call ptr @realloc(ptr noundef nonnull %i.frf, i64 noundef %i.frh) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i2852

bb.bpn:                                           ; preds = %bb.bpl
  %i.frj = tail call noalias ptr @malloc(i64 noundef %i.frh) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i2852

Vec_IntGrow.exit.sink.split.i.i.i2852:            ; preds = %bb.bpm, %bb.bpn, %bb.bph, %bb.bpi
  %storemerge3933 = phi ptr [ %i.frd, %bb.bpi ], [ %i.frc, %bb.bph ], [ %i.fri, %bb.bpm ], [ %i.frj, %bb.bpn ]
  %spec.select.sink.i.i.i2853 = phi i32 [ %i.fqv, %bb.bpi ], [ %i.fqv, %bb.bph ], [ %spec.select.i.i.i2861, %bb.bpm ], [ %spec.select.i.i.i2861, %bb.bpn ]
  store ptr %storemerge3933, ptr %i.ug, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i.i2853, ptr %i.ue, align 8, !tbaa !42
  %.pre.i.i2854 = load i32, ptr %i.uf, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i2855

Vec_IntGrow.exit.i.i.i2855:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i2852, %bb.bpk, %bb.bpj
  %i.frk = phi i32 [ %.pre.i.i2854, %Vec_IntGrow.exit.sink.split.i.i.i2852 ], [ %i.fqw, %bb.bpk ], [ %i.fqw, %bb.bpj ] ; 3 uses
  %.not3.i.i2856 = icmp sgt i32 %i.frk, %i.fqu
  br i1 %.not3.i.i2856, label %._crit_edge.i.i.i2859, label %.lr.ph.i.i.i2857

.lr.ph.i.i.i2857:                                 ; preds = %Vec_IntGrow.exit.i.i.i2855
  %i.frl = load ptr, ptr %i.ug, align 8, !tbaa !27
  %i.frm = sext i32 %i.frk to i64
  %i.frn = shl nsw i64 %i.frm, 2
  %scevgep.i.i.i2858 = getelementptr i8, ptr %i.frl, i64 %i.frn
  %i.fro = sub i32 %i.fqu, %i.frk
  %i.frp = zext i32 %i.fro to i64
  %i.frq = shl nuw nsw i64 %i.frp, 2
  %i.frr = add nuw nsw i64 %i.frq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i2858, i8 0, i64 %i.frr, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i2859

._crit_edge.i.i.i2859:                            ; preds = %.lr.ph.i.i.i2857, %Vec_IntGrow.exit.i.i.i2855
  store i32 %i.fqv, ptr %i.uf, align 4, !tbaa !26
  br label %Cba_FonName.exit2864

Cba_FonName.exit2864:                             ; preds = %bb.bpe, %._crit_edge.i.i.i2859
  %.val.i.i2860 = load ptr, ptr %i.ug, align 8, !tbaa !27
  %i.frs = zext nneg i32 %i.fqu to i64
  %i.frt = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2860, i64 %i.frs
  %i.fru = load i32, ptr %i.frt, align 4, !tbaa !28
  %i.frv = add nsw i32 %i.fqo, 1                  ; 4 uses
  %i.frw = load i32, ptr %i.ui, align 4, !tbaa !26 ; 4 uses
  %.not.i.not.i.i2865 = icmp slt i32 %i.fqo, %i.frw
  br i1 %.not.i.not.i.i2865, label %Cba_ObjName.exit2881, label %bb.bpo

bb.bpo:                                           ; preds = %Cba_FonName.exit2864
  %i.frx = load i32, ptr %i.uh, align 8, !tbaa !42 ; 4 uses
  %i.fry = shl nsw i32 %i.frx, 1                  ; 2 uses
  %.not.i.i2866 = icmp slt i32 %i.fqo, %i.fry
  %.not.i.i.not.i.i2867 = icmp sgt i32 %i.frx, %i.fqo ; 2 uses
  br i1 %.not.i.i2866, label %bb.bpt, label %bb.bpp

bb.bpp:                                           ; preds = %bb.bpo
  br i1 %.not.i.i.not.i.i2867, label %Vec_IntGrow.exit.i.i.i2872, label %bb.bpq

bb.bpq:                                           ; preds = %bb.bpp
  %i.frz = load ptr, ptr %i.uj, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i2868 = icmp eq ptr %i.frz, null
  %i.fsa = sext i32 %i.frv to i64
  %i.fsb = shl nsw i64 %i.fsa, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i2868, label %bb.bps, label %bb.bpr

bb.bpr:                                           ; preds = %bb.bpq
  %i.fsc = tail call ptr @realloc(ptr noundef nonnull %i.frz, i64 noundef %i.fsb) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i2869

bb.bps:                                           ; preds = %bb.bpq
  %i.fsd = tail call noalias ptr @malloc(i64 noundef %i.fsb) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i2869

bb.bpt:                                           ; preds = %bb.bpo
  br i1 %.not.i.i.not.i.i2867, label %Vec_IntGrow.exit.i.i.i2872, label %bb.bpu

bb.bpu:                                           ; preds = %bb.bpt
  %i.fse = icmp slt i32 %i.frx, 1073741823
  %spec.select.i.i.i2878 = select i1 %i.fse, i32 %i.fry, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i2879 = icmp slt i32 %i.frx, %spec.select.i.i.i2878
  br i1 %.not.i22.i.i.i2879, label %bb.bpv, label %Vec_IntGrow.exit.i.i.i2872

bb.bpv:                                           ; preds = %bb.bpu
  %i.fsf = load ptr, ptr %i.uj, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i2880 = icmp eq ptr %i.fsf, null
  %i.fsg = sext i32 %spec.select.i.i.i2878 to i64
  %i.fsh = shl nuw nsw i64 %i.fsg, 2              ; 2 uses
  br i1 %.not9.i23.i.i.i2880, label %bb.bpx, label %bb.bpw

bb.bpw:                                           ; preds = %bb.bpv
  %i.fsi = tail call ptr @realloc(ptr noundef nonnull %i.fsf, i64 noundef %i.fsh) #18
  br label %Vec_IntGrow.exit.sink.split.i.i.i2869

bb.bpx:                                           ; preds = %bb.bpv
  %i.fsj = tail call noalias ptr @malloc(i64 noundef %i.fsh) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i2869

Vec_IntGrow.exit.sink.split.i.i.i2869:            ; preds = %bb.bpw, %bb.bpx, %bb.bpr, %bb.bps
  %storemerge3934 = phi ptr [ %i.fsd, %bb.bps ], [ %i.fsc, %bb.bpr ], [ %i.fsi, %bb.bpw ], [ %i.fsj, %bb.bpx ]
  %spec.select.sink.i.i.i2870 = phi i32 [ %i.frv, %bb.bps ], [ %i.frv, %bb.bpr ], [ %spec.select.i.i.i2878, %bb.bpw ], [ %spec.select.i.i.i2878, %bb.bpx ]
  store ptr %storemerge3934, ptr %i.uj, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i.i2870, ptr %i.uh, align 8, !tbaa !42
  %.pre.i.i2871 = load i32, ptr %i.ui, align 4, !tbaa !26
  br label %Vec_IntGrow.exit.i.i.i2872

Vec_IntGrow.exit.i.i.i2872:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i2869, %bb.bpu, %bb.bpt, %bb.bpp
  %i.fsk = phi i32 [ %.pre.i.i2871, %Vec_IntGrow.exit.sink.split.i.i.i2869 ], [ %i.frw, %bb.bpu ], [ %i.frw, %bb.bpt ], [ %i.frw, %bb.bpp ] ; 3 uses
  %.not3.i.i2873 = icmp sgt i32 %i.fsk, %i.fqo
  br i1 %.not3.i.i2873, label %._crit_edge.i.i.i2876, label %.lr.ph.i.i.i2874

.lr.ph.i.i.i2874:                                 ; preds = %Vec_IntGrow.exit.i.i.i2872
  %i.fsl = load ptr, ptr %i.uj, align 8, !tbaa !27
  %i.fsm = sext i32 %i.fsk to i64
  %i.fsn = shl nsw i64 %i.fsm, 2
  %scevgep.i.i.i2875 = getelementptr i8, ptr %i.fsl, i64 %i.fsn
  %i.fso = sub i32 %i.fqo, %i.fsk
  %i.fsp = zext i32 %i.fso to i64
  %i.fsq = shl nuw nsw i64 %i.fsp, 2
  %i.fsr = add nuw nsw i64 %i.fsq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i2875, i8 0, i64 %i.fsr, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i2876

._crit_edge.i.i.i2876:                            ; preds = %.lr.ph.i.i.i2874, %Vec_IntGrow.exit.i.i.i2872
  store i32 %i.frv, ptr %i.ui, align 4, !tbaa !26
  br label %Cba_ObjName.exit2881

Cba_ObjName.exit2881:                             ; preds = %Cba_FonName.exit2864, %._crit_edge.i.i.i2876
  %.val.i.i2877 = load ptr, ptr %i.uj, align 8, !tbaa !27
  %i.fss = getelementptr inbounds [4 x i8], ptr %.val.i.i2877, i64 %i.fqp
  %i.fst = load i32, ptr %i.fss, align 4, !tbaa !28
  %i.fsu = icmp eq i32 %i.fru, %i.fst
  br i1 %i.fsu, label %bb.bsd, label %.lr.ph.i2883.preheader

.lr.ph.i2883.preheader:                           ; preds = %bb.bpd, %Cba_ObjName.exit2881
  br label %.lr.ph.i2883

end_hunk_14
begin_hunk_15_@Cba_ManWriteVerilogNtk:bb.a
  %i.fvv = sext i32 %i.fvs to i64
  %i.fvw = getelementptr inbounds i8, ptr %i.fvt, i64 %i.fvv
  store i8 61, ptr %i.fvw, align 1, !tbaa !20
  %i.fvx = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fvy = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fvz = icmp eq i32 %i.fvx, %i.fvy
  br i1 %i.fvz, label %bb.brf, label %.Vec_StrPush.exit_crit_edge.i2922.2

.Vec_StrPush.exit_crit_edge.i2922.2:              ; preds = %Vec_StrPush.exit.i2924.1
  %.pre.i2923.2 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2924.2

bb.brf:                                           ; preds = %Vec_StrPush.exit.i2924.1
  %i.fwa = icmp slt i32 %i.fvx, 16
  br i1 %i.fwa, label %bb.brk, label %bb.brg

bb.brg:                                           ; preds = %bb.brf
  %i.fwb = icmp samesign ult i32 %i.fvx, 1073741823
  %i.fwc = shl nuw nsw i32 %i.fvx, 1
  %spec.select.i.i2927.2 = select i1 %i.fwb, i32 %i.fwc, i32 2147483647 ; 4 uses
  %.not.i9.i.i2928.2 = icmp samesign ult i32 %i.fvx, %spec.select.i.i2927.2
  %.pre8.i2929.2 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2928.2, label %bb.brh, label %Vec_StrPush.exit.i2924.2

bb.brh:                                           ; preds = %bb.brg
  %.not9.i10.i.i2930.2 = icmp eq ptr %.pre8.i2929.2, null
  %i.fwd = zext nneg i32 %spec.select.i.i2927.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2930.2, label %bb.brj, label %bb.bri

bb.bri:                                           ; preds = %bb.brh
  %i.fwe = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2929.2, i64 noundef %i.fwd) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2931.2

bb.brj:                                           ; preds = %bb.brh
  %i.fwf = tail call noalias ptr @malloc(i64 noundef %i.fwd) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2931.2

bb.brk:                                           ; preds = %bb.brf
  %i.fwg = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2934.2 = icmp eq ptr %i.fwg, null
  br i1 %.not9.i.i.i2934.2, label %bb.brm, label %bb.brl

bb.brl:                                           ; preds = %bb.brk
  %i.fwh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fwg, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2931.2

bb.brm:                                           ; preds = %bb.brk
  %i.fwi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2931.2

Vec_StrGrow.exit11.sink.split.i.i2931.2:          ; preds = %bb.brm, %bb.brl, %bb.brj, %bb.bri
  %i.fwj = phi ptr [ %i.fwi, %bb.brm ], [ %i.fwh, %bb.brl ], [ %i.fwe, %bb.bri ], [ %i.fwf, %bb.brj ] ; 2 uses
  %spec.select.sink.i.i2932.2 = phi i32 [ 16, %bb.brm ], [ 16, %bb.brl ], [ %spec.select.i.i2927.2, %bb.bri ], [ %spec.select.i.i2927.2, %bb.brj ]
  store ptr %i.fwj, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2932.2, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2933.2 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2924.2

Vec_StrPush.exit.i2924.2:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i2931.2, %bb.brg, %.Vec_StrPush.exit_crit_edge.i2922.2
  %i.fwk = phi i32 [ %i.fvx, %.Vec_StrPush.exit_crit_edge.i2922.2 ], [ %i.fvx, %bb.brg ], [ %.pre9.i2933.2, %Vec_StrGrow.exit11.sink.split.i.i2931.2 ] ; 2 uses
  %i.fwl = phi ptr [ %.pre.i2923.2, %.Vec_StrPush.exit_crit_edge.i2922.2 ], [ %.pre8.i2929.2, %bb.brg ], [ %i.fwj, %Vec_StrGrow.exit11.sink.split.i.i2931.2 ]
  %i.fwm = add nsw i32 %i.fwk, 1
  store i32 %i.fwm, ptr %i.da, align 4, !tbaa !23
  %i.fwn = sext i32 %i.fwk to i64
  %i.fwo = getelementptr inbounds i8, ptr %i.fwl, i64 %i.fwn
  store i8 32, ptr %i.fwo, align 1, !tbaa !20
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %i.fqu, i32 noundef %1, i32 noundef 0)
  %i.fwp = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fwq = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fwr = icmp eq i32 %i.fwp, %i.fwq
  br i1 %i.fwr, label %bb.brn, label %Vec_StrPush.exit.i2924.2.Vec_StrPush.exit2943_crit_edge

Vec_StrPush.exit.i2924.2.Vec_StrPush.exit2943_crit_edge: ; preds = %Vec_StrPush.exit.i2924.2
  %.pre3182 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit2943

bb.brn:                                           ; preds = %Vec_StrPush.exit.i2924.2
  %i.fws = icmp slt i32 %i.fwp, 16
  br i1 %i.fws, label %bb.bro, label %bb.brr

bb.bro:                                           ; preds = %bb.brn
  %i.fwt = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2941 = icmp eq ptr %i.fwt, null
  br i1 %.not9.i.i2941, label %bb.brq, label %bb.brp

bb.brp:                                           ; preds = %bb.bro
  %i.fwu = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fwt, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2939

bb.brq:                                           ; preds = %bb.bro
  %i.fwv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2939

bb.brr:                                           ; preds = %bb.brn
  %i.fww = icmp samesign ult i32 %i.fwp, 1073741823
  %i.fwx = shl nuw nsw i32 %i.fwp, 1
  %spec.select.i2936 = select i1 %i.fww, i32 %i.fwx, i32 2147483647 ; 4 uses
  %.not.i9.i2937 = icmp samesign ult i32 %i.fwp, %spec.select.i2936
  %.pre3183 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2937, label %bb.brs, label %Vec_StrPush.exit2943

bb.brs:                                           ; preds = %bb.brr
  %.not9.i10.i2938 = icmp eq ptr %.pre3183, null
  %i.fwy = zext nneg i32 %spec.select.i2936 to i64 ; 2 uses
  br i1 %.not9.i10.i2938, label %bb.bru, label %bb.brt

bb.brt:                                           ; preds = %bb.brs
  %i.fwz = tail call ptr @realloc(ptr noundef nonnull %.pre3183, i64 noundef %i.fwy) #18
  br label %Vec_StrGrow.exit11.sink.split.i2939

bb.bru:                                           ; preds = %bb.brs
  %i.fxa = tail call noalias ptr @malloc(i64 noundef %i.fwy) #19
  br label %Vec_StrGrow.exit11.sink.split.i2939

Vec_StrGrow.exit11.sink.split.i2939:              ; preds = %bb.brt, %bb.bru, %bb.brp, %bb.brq
  %i.fxb = phi ptr [ %i.fwv, %bb.brq ], [ %i.fwu, %bb.brp ], [ %i.fwz, %bb.brt ], [ %i.fxa, %bb.bru ] ; 2 uses
  %spec.select.sink.i2940 = phi i32 [ 16, %bb.brq ], [ 16, %bb.brp ], [ %spec.select.i2936, %bb.brt ], [ %spec.select.i2936, %bb.bru ]
  store ptr %i.fxb, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2940, ptr %i.b, align 8, !tbaa !24
  %.pre3184 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit2943

Vec_StrPush.exit2943:                             ; preds = %Vec_StrPush.exit.i2924.2.Vec_StrPush.exit2943_crit_edge, %bb.brr, %Vec_StrGrow.exit11.sink.split.i2939
  %i.fxc = phi i32 [ %i.fwp, %Vec_StrPush.exit.i2924.2.Vec_StrPush.exit2943_crit_edge ], [ %i.fwp, %bb.brr ], [ %.pre3184, %Vec_StrGrow.exit11.sink.split.i2939 ] ; 2 uses
  %i.fxd = phi ptr [ %.pre3182, %Vec_StrPush.exit.i2924.2.Vec_StrPush.exit2943_crit_edge ], [ %.pre3183, %bb.brr ], [ %i.fxb, %Vec_StrGrow.exit11.sink.split.i2939 ]
  %i.fxe = add nsw i32 %i.fxc, 1
  store i32 %i.fxe, ptr %i.da, align 4, !tbaa !23
  %i.fxf = sext i32 %i.fxc to i64
  %i.fxg = getelementptr inbounds i8, ptr %i.fxd, i64 %i.fxf
  store i8 59, ptr %i.fxg, align 1, !tbaa !20
  %i.fxh = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fxi = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fxj = icmp eq i32 %i.fxh, %i.fxi
  br i1 %i.fxj, label %bb.brv, label %Vec_StrPush.exit2943.Vec_StrPush.exit2951_crit_edge

Vec_StrPush.exit2943.Vec_StrPush.exit2951_crit_edge: ; preds = %Vec_StrPush.exit2943
  %.pre3185 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit2951

bb.brv:                                           ; preds = %Vec_StrPush.exit2943
  %i.fxk = icmp slt i32 %i.fxh, 16
  br i1 %i.fxk, label %bb.brw, label %bb.brz

bb.brw:                                           ; preds = %bb.brv
  %i.fxl = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i2949 = icmp eq ptr %i.fxl, null
  br i1 %.not9.i.i2949, label %bb.bry, label %bb.brx

bb.brx:                                           ; preds = %bb.brw
  %i.fxm = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fxl, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i2947

bb.bry:                                           ; preds = %bb.brw
  %i.fxn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i2947

bb.brz:                                           ; preds = %bb.brv
  %i.fxo = icmp samesign ult i32 %i.fxh, 1073741823
  %i.fxp = shl nuw nsw i32 %i.fxh, 1
  %spec.select.i2944 = select i1 %i.fxo, i32 %i.fxp, i32 2147483647 ; 4 uses
  %.not.i9.i2945 = icmp samesign ult i32 %i.fxh, %spec.select.i2944
  %.pre3186 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i2945, label %bb.bsa, label %Vec_StrPush.exit2951

bb.bsa:                                           ; preds = %bb.brz
  %.not9.i10.i2946 = icmp eq ptr %.pre3186, null
  %i.fxq = zext nneg i32 %spec.select.i2944 to i64 ; 2 uses
  br i1 %.not9.i10.i2946, label %bb.bsc, label %bb.bsb

bb.bsb:                                           ; preds = %bb.bsa
  %i.fxr = tail call ptr @realloc(ptr noundef nonnull %.pre3186, i64 noundef %i.fxq) #18
  br label %Vec_StrGrow.exit11.sink.split.i2947

bb.bsc:                                           ; preds = %bb.bsa
  %i.fxs = tail call noalias ptr @malloc(i64 noundef %i.fxq) #19
  br label %Vec_StrGrow.exit11.sink.split.i2947

Vec_StrGrow.exit11.sink.split.i2947:              ; preds = %bb.bsb, %bb.bsc, %bb.brx, %bb.bry
  %storemerge = phi ptr [ %i.fxn, %bb.bry ], [ %i.fxm, %bb.brx ], [ %i.fxr, %bb.bsb ], [ %i.fxs, %bb.bsc ] ; 2 uses
  %spec.select.sink.i2948 = phi i32 [ 16, %bb.bry ], [ 16, %bb.brx ], [ %spec.select.i2944, %bb.bsb ], [ %spec.select.i2944, %bb.bsc ]
  store ptr %storemerge, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i2948, ptr %i.b, align 8, !tbaa !24
  %.pre3187 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit2951

Vec_StrPush.exit2951:                             ; preds = %Vec_StrPush.exit2943.Vec_StrPush.exit2951_crit_edge, %bb.brz, %Vec_StrGrow.exit11.sink.split.i2947
  %i.fxt = phi i32 [ %i.fxh, %Vec_StrPush.exit2943.Vec_StrPush.exit2951_crit_edge ], [ %i.fxh, %bb.brz ], [ %.pre3187, %Vec_StrGrow.exit11.sink.split.i2947 ] ; 2 uses
  %i.fxu = phi ptr [ %.pre3185, %Vec_StrPush.exit2943.Vec_StrPush.exit2951_crit_edge ], [ %.pre3186, %bb.brz ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i2947 ]
  %i.fxv = add nsw i32 %i.fxt, 1
  store i32 %i.fxv, ptr %i.da, align 4, !tbaa !23
  %i.fxw = sext i32 %i.fxt to i64
  %i.fxx = getelementptr inbounds i8, ptr %i.fxu, i64 %i.fxw
  store i8 10, ptr %i.fxx, align 1, !tbaa !20
  br label %bb.bsd

bb.bsd:                                           ; preds = %bb.bpc, %Cba_ObjName.exit2881, %Vec_StrPush.exit2951
  %indvars.iv.next3115 = add nuw nsw i64 %indvars.iv3114, 1 ; 2 uses
  %.val867 = load i32, ptr %i.h, align 4, !tbaa !26
  %i.fxy = sext i32 %.val867 to i64
  %i.fxz = icmp slt i64 %indvars.iv.next3115, %i.fxy
  br i1 %i.fxz, label %bb.bpc, label %.lr.ph.i2953, !llvm.loop !90

.lr.ph.i2953:                                     ; preds = %bb.bsd, %.preheader
  %i.fya = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fyb = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fyc = icmp eq i32 %i.fya, %i.fyb
  br i1 %i.fyc, label %bb.bse, label %.Vec_StrPush.exit_crit_edge.i2956

.Vec_StrPush.exit_crit_edge.i2956:                ; preds = %.lr.ph.i2953
  %.pre.i2957 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2958

bb.bse:                                           ; preds = %.lr.ph.i2953
  %i.fyd = icmp slt i32 %i.fya, 16
  br i1 %i.fyd, label %bb.bsf, label %bb.bsi

bb.bsf:                                           ; preds = %bb.bse
  %i.fye = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2968 = icmp eq ptr %i.fye, null
  br i1 %.not9.i.i.i2968, label %bb.bsh, label %bb.bsg

bb.bsg:                                           ; preds = %bb.bsf
  %i.fyf = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fye, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2965

bb.bsh:                                           ; preds = %bb.bsf
  %i.fyg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2965

bb.bsi:                                           ; preds = %bb.bse
  %i.fyh = icmp samesign ult i32 %i.fya, 1073741823
  %i.fyi = shl nuw nsw i32 %i.fya, 1
  %spec.select.i.i2961 = select i1 %i.fyh, i32 %i.fyi, i32 2147483647 ; 4 uses
  %.not.i9.i.i2962 = icmp samesign ult i32 %i.fya, %spec.select.i.i2961
  %.pre8.i2963 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2962, label %bb.bsj, label %Vec_StrPush.exit.i2958

bb.bsj:                                           ; preds = %bb.bsi
  %.not9.i10.i.i2964 = icmp eq ptr %.pre8.i2963, null
  %i.fyj = zext nneg i32 %spec.select.i.i2961 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2964, label %bb.bsl, label %bb.bsk

bb.bsk:                                           ; preds = %bb.bsj
  %i.fyk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2963, i64 noundef %i.fyj) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2965

bb.bsl:                                           ; preds = %bb.bsj
  %i.fyl = tail call noalias ptr @malloc(i64 noundef %i.fyj) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2965

Vec_StrGrow.exit11.sink.split.i.i2965:            ; preds = %bb.bsl, %bb.bsk, %bb.bsh, %bb.bsg
  %i.fym = phi ptr [ %i.fyg, %bb.bsh ], [ %i.fyf, %bb.bsg ], [ %i.fyk, %bb.bsk ], [ %i.fyl, %bb.bsl ] ; 2 uses
  %spec.select.sink.i.i2966 = phi i32 [ 16, %bb.bsh ], [ 16, %bb.bsg ], [ %spec.select.i.i2961, %bb.bsk ], [ %spec.select.i.i2961, %bb.bsl ]
  store ptr %i.fym, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2966, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2967 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2958

Vec_StrPush.exit.i2958:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2965, %bb.bsi, %.Vec_StrPush.exit_crit_edge.i2956
  %i.fyn = phi i32 [ %i.fya, %.Vec_StrPush.exit_crit_edge.i2956 ], [ %i.fya, %bb.bsi ], [ %.pre9.i2967, %Vec_StrGrow.exit11.sink.split.i.i2965 ] ; 2 uses
  %i.fyo = phi ptr [ %.pre.i2957, %.Vec_StrPush.exit_crit_edge.i2956 ], [ %.pre8.i2963, %bb.bsi ], [ %i.fym, %Vec_StrGrow.exit11.sink.split.i.i2965 ]
  %i.fyp = add nsw i32 %i.fyn, 1
  store i32 %i.fyp, ptr %i.da, align 4, !tbaa !23
  %i.fyq = sext i32 %i.fyn to i64
  %i.fyr = getelementptr inbounds i8, ptr %i.fyo, i64 %i.fyq
  store i8 10, ptr %i.fyr, align 1, !tbaa !20
  br label %bb.bsm

bb.bsm:                                           ; preds = %Vec_StrPush.exit.i2976, %Vec_StrPush.exit.i2958
  %indvars.iv.i2973 = phi i64 [ 0, %Vec_StrPush.exit.i2958 ], [ %indvars.iv.next.i2977, %Vec_StrPush.exit.i2976 ] ; 2 uses
  %i.fys = getelementptr inbounds nuw i8, ptr @.str.161, i64 %indvars.iv.i2973
  %i.fyt = load i8, ptr %i.fys, align 1, !tbaa !20
  %i.fyu = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fyv = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fyw = icmp eq i32 %i.fyu, %i.fyv
  br i1 %i.fyw, label %bb.bsn, label %.Vec_StrPush.exit_crit_edge.i2974

.Vec_StrPush.exit_crit_edge.i2974:                ; preds = %bb.bsm
  %.pre.i2975 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i2976

bb.bsn:                                           ; preds = %bb.bsm
  %i.fyx = icmp slt i32 %i.fyu, 16
  br i1 %i.fyx, label %bb.bso, label %bb.bsr

bb.bso:                                           ; preds = %bb.bsn
  %i.fyy = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i2986 = icmp eq ptr %i.fyy, null
  br i1 %.not9.i.i.i2986, label %bb.bsq, label %bb.bsp

bb.bsp:                                           ; preds = %bb.bso
  %i.fyz = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fyy, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2983

bb.bsq:                                           ; preds = %bb.bso
  %i.fza = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2983

bb.bsr:                                           ; preds = %bb.bsn
  %i.fzb = icmp samesign ult i32 %i.fyu, 1073741823
  %i.fzc = shl nuw nsw i32 %i.fyu, 1
  %spec.select.i.i2979 = select i1 %i.fzb, i32 %i.fzc, i32 2147483647 ; 4 uses
  %.not.i9.i.i2980 = icmp samesign ult i32 %i.fyu, %spec.select.i.i2979
  %.pre8.i2981 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i2980, label %bb.bss, label %Vec_StrPush.exit.i2976

bb.bss:                                           ; preds = %bb.bsr
  %.not9.i10.i.i2982 = icmp eq ptr %.pre8.i2981, null
  %i.fzd = zext nneg i32 %spec.select.i.i2979 to i64 ; 2 uses
  br i1 %.not9.i10.i.i2982, label %bb.bsu, label %bb.bst

bb.bst:                                           ; preds = %bb.bss
  %i.fze = tail call ptr @realloc(ptr noundef nonnull %.pre8.i2981, i64 noundef %i.fzd) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i2983

bb.bsu:                                           ; preds = %bb.bss
  %i.fzf = tail call noalias ptr @malloc(i64 noundef %i.fzd) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i2983

Vec_StrGrow.exit11.sink.split.i.i2983:            ; preds = %bb.bsu, %bb.bst, %bb.bsq, %bb.bsp
  %i.fzg = phi ptr [ %i.fza, %bb.bsq ], [ %i.fyz, %bb.bsp ], [ %i.fze, %bb.bst ], [ %i.fzf, %bb.bsu ] ; 2 uses
  %spec.select.sink.i.i2984 = phi i32 [ 16, %bb.bsq ], [ 16, %bb.bsp ], [ %spec.select.i.i2979, %bb.bst ], [ %spec.select.i.i2979, %bb.bsu ]
  store ptr %i.fzg, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i2984, ptr %i.b, align 8, !tbaa !24
  %.pre9.i2985 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i2976

Vec_StrPush.exit.i2976:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i2983, %bb.bsr, %.Vec_StrPush.exit_crit_edge.i2974
  %i.fzh = phi i32 [ %i.fyu, %.Vec_StrPush.exit_crit_edge.i2974 ], [ %i.fyu, %bb.bsr ], [ %.pre9.i2985, %Vec_StrGrow.exit11.sink.split.i.i2983 ] ; 2 uses
  %i.fzi = phi ptr [ %.pre.i2975, %.Vec_StrPush.exit_crit_edge.i2974 ], [ %.pre8.i2981, %bb.bsr ], [ %i.fzg, %Vec_StrGrow.exit11.sink.split.i.i2983 ]
  %i.fzj = add nsw i32 %i.fzh, 1
  store i32 %i.fzj, ptr %i.da, align 4, !tbaa !23
  %i.fzk = sext i32 %i.fzh to i64
  %i.fzl = getelementptr inbounds i8, ptr %i.fzi, i64 %i.fzk
  store i8 %i.fyt, ptr %i.fzl, align 1, !tbaa !20
  %indvars.iv.next.i2977 = add nuw nsw i64 %indvars.iv.i2973, 1 ; 2 uses
  %exitcond.not.i2978 = icmp eq i64 %indvars.iv.next.i2977, 11
  br i1 %exitcond.not.i2978, label %Vec_StrPrintStr.exit2987, label %bb.bsm, !llvm.loop !2

Vec_StrPrintStr.exit2987:                         ; preds = %Vec_StrPush.exit.i2976
  %i.fzm = load ptr, ptr %i.x, align 8, !tbaa !93 ; 2 uses
  %.not.i2988 = icmp eq ptr %i.fzm, null
  br i1 %.not.i2988, label %Vec_BitFree.exit, label %bb.bsv

bb.bsv:                                           ; preds = %Vec_StrPrintStr.exit2987
  tail call void @free(ptr noundef nonnull %i.fzm) #17
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %Vec_StrPrintStr.exit2987, %bb.bsv
  tail call void @free(ptr noundef nonnull %i.q) #17
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_StrPrintNum(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 7 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !24
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %Vec_StrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.d, 16
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.i, i64 noundef 16) #18
  br label %Vec_StrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  store ptr %i.l, ptr %i.h, align 8, !tbaa !25
  br label %Vec_StrGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i32 %i.d, 1073741823
  %i.n = shl nuw nsw i32 %i.d, 1
  %spec.select.i = select i1 %i.m, i32 %i.n, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.d, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_StrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.p, null
  %i.q = zext nneg i32 %spec.select.i to i64      ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.q) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = phi ptr [ %i.r, %bb.i ], [ %i.s, %bb.j ]
  store ptr %i.t, ptr %i.o, align 8, !tbaa !25
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_StrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !24
  %.pre45 = load i32, ptr %i.c, align 4, !tbaa !23
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_StrGrow.exit11.sink.split.i
  %i.u = phi i32 [ %i.d, %bb.b ], [ %i.d, %bb.g ], [ %.pre45, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.c, align 4, !tbaa !23
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  store i8 48, ptr %i.z, align 1, !tbaa !20
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.aa = icmp slt i32 %1, 0
  br i1 %i.aa, label %bb.m, label %.preheader56

.preheader56:                                     ; preds = %Vec_StrPush.exit24, %bb.l
  %.11533.ph = phi i32 [ %1, %bb.l ], [ %i.az, %Vec_StrPush.exit24 ]
  br label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23 ; 7 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !24
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.n, label %Vec_StrPush.exit24

bb.n:                                             ; preds = %bb.m
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i22 = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 16) #18
  br label %Vec_StrGrow.exit.i23

bb.q:                                             ; preds = %bb.o
  %i.aj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit.i23

Vec_StrGrow.exit.i23:                             ; preds = %bb.q, %bb.p
  %i.ak = phi ptr [ %i.ai, %bb.p ], [ %i.aj, %bb.q ]
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !25
  br label %Vec_StrGrow.exit11.sink.split.i20

bb.r:                                             ; preds = %bb.n
  %i.al = icmp samesign ult i32 %i.ac, 1073741823
  %i.am = shl nuw nsw i32 %i.ac, 1
  %spec.select.i17 = select i1 %i.al, i32 %i.am, i32 2147483647 ; 3 uses
  %.not.i9.i18 = icmp samesign ult i32 %i.ac, %spec.select.i17
  br i1 %.not.i9.i18, label %bb.s, label %Vec_StrPush.exit24

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25 ; 2 uses
  %.not9.i10.i19 = icmp eq ptr %i.ao, null
  %i.ap = zext nneg i32 %spec.select.i17 to i64   ; 2 uses
  br i1 %.not9.i10.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.ap) #18
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ap) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.as = phi ptr [ %i.aq, %bb.t ], [ %i.ar, %bb.u ]
  store ptr %i.as, ptr %i.an, align 8, !tbaa !25
  br label %Vec_StrGrow.exit11.sink.split.i20

Vec_StrGrow.exit11.sink.split.i20:                ; preds = %bb.v, %Vec_StrGrow.exit.i23
  %spec.select.sink.i21 = phi i32 [ %spec.select.i17, %bb.v ], [ 16, %Vec_StrGrow.exit.i23 ]
  store i32 %spec.select.sink.i21, ptr %0, align 8, !tbaa !24
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !23
  br label %Vec_StrPush.exit24

Vec_StrPush.exit24:                               ; preds = %bb.m, %bb.r, %Vec_StrGrow.exit11.sink.split.i20
  %i.at = phi i32 [ %i.ac, %bb.m ], [ %i.ac, %bb.r ], [ %.pre, %Vec_StrGrow.exit11.sink.split.i20 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = add nsw i32 %i.at, 1
  store i32 %i.aw, ptr %i.ab, align 4, !tbaa !23
  %i.ax = sext i32 %i.at to i64
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ax
  store i8 45, ptr %i.ay, align 1, !tbaa !20
  %i.az = sub nsw i32 0, %1
  br label %.preheader56

.preheader:                                       ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.x

bb.w:                                             ; preds = %.preheader56, %bb.w
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.w ], [ 1, %.preheader56 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %.preheader56 ] ; 2 uses
  %.11533 = phi i32 [ %i.bf, %bb.w ], [ %.11533.ph, %.preheader56 ] ; 3 uses
  %i.bc = urem i32 %.11533, 10
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !20
  %i.bf = udiv i32 %.11533, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp ult i32 %.11533, 10
  %indvars.iv.next38 = add nuw i64 %indvars.iv37, 1
  br i1 %.not, label %.preheader, label %bb.w, !llvm.loop !98

bb.x:                                             ; preds = %.preheader, %Vec_StrPush.exit32
  %indvars.iv39 = phi i64 [ %indvars.iv37, %.preheader ], [ %indvars.iv.next40, %Vec_StrPush.exit32 ] ; 2 uses
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next40
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !20
  %i.bi = add i8 %i.bh, 48
  %i.bj = load i32, ptr %i.ba, align 4, !tbaa !23 ; 7 uses
  %i.bk = load i32, ptr %0, align 8, !tbaa !24
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.y, label %.Vec_StrPush.exit32_crit_edge

.Vec_StrPush.exit32_crit_edge:                    ; preds = %bb.x
  %.pre42 = load ptr, ptr %i.bb, align 8, !tbaa !25
  br label %Vec_StrPush.exit32

bb.y:                                             ; preds = %bb.x
  %i.bm = icmp slt i32 %i.bj, 16
  br i1 %i.bm, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i30 = icmp eq ptr %i.bn, null
  br i1 %.not9.i.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i28

bb.ab:                                            ; preds = %bb.z
  %i.bp = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i28

bb.ac:                                            ; preds = %bb.y
  %i.bq = icmp samesign ult i32 %i.bj, 1073741823
  %i.br = shl nuw nsw i32 %i.bj, 1
  %spec.select.i25 = select i1 %i.bq, i32 %i.br, i32 2147483647 ; 4 uses
  %.not.i9.i26 = icmp samesign ult i32 %i.bj, %spec.select.i25
  %.pre43 = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i26, label %bb.ad, label %Vec_StrPush.exit32

bb.ad:                                            ; preds = %bb.ac
  %.not9.i10.i27 = icmp eq ptr %.pre43, null
  %i.bs = zext nneg i32 %spec.select.i25 to i64   ; 2 uses
  br i1 %.not9.i10.i27, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %.pre43, i64 noundef %i.bs) #18
  br label %Vec_StrGrow.exit11.sink.split.i28

bb.af:                                            ; preds = %bb.ad
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #19
  br label %Vec_StrGrow.exit11.sink.split.i28

Vec_StrGrow.exit11.sink.split.i28:                ; preds = %bb.ae, %bb.af, %bb.aa, %bb.ab
  %i.bv = phi ptr [ %i.bp, %bb.ab ], [ %i.bo, %bb.aa ], [ %i.bt, %bb.ae ], [ %i.bu, %bb.af ] ; 2 uses
  %spec.select.sink.i29 = phi i32 [ 16, %bb.ab ], [ 16, %bb.aa ], [ %spec.select.i25, %bb.ae ], [ %spec.select.i25, %bb.af ]
  store ptr %i.bv, ptr %i.bb, align 8, !tbaa !25
  store i32 %spec.select.sink.i29, ptr %0, align 8, !tbaa !24
  %.pre44 = load i32, ptr %i.ba, align 4, !tbaa !23
  br label %Vec_StrPush.exit32

Vec_StrPush.exit32:                               ; preds = %.Vec_StrPush.exit32_crit_edge, %bb.ac, %Vec_StrGrow.exit11.sink.split.i28
  %i.bw = phi i32 [ %i.bj, %.Vec_StrPush.exit32_crit_edge ], [ %i.bj, %bb.ac ], [ %.pre44, %Vec_StrGrow.exit11.sink.split.i28 ] ; 2 uses
  %i.bx = phi ptr [ %.pre42, %.Vec_StrPush.exit32_crit_edge ], [ %.pre43, %bb.ac ], [ %i.bv, %Vec_StrGrow.exit11.sink.split.i28 ]
  %i.by = add nsw i32 %i.bw, 1
  store i32 %i.by, ptr %i.ba, align 4, !tbaa !23
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz
  store i8 %i.bi, ptr %i.ca, align 1, !tbaa !20
  %i.cb = trunc nuw i64 %indvars.iv39 to i32
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.x, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %Vec_StrPush.exit32, %Vec_StrPush.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cba_ManWriteVerilog(ptr noundef %0, ptr nofree noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (...) @Abc_FrameReadLibGen() #17
  %.not28 = icmp eq ptr %i.b, %i.c
  br i1 %.not28, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bf

.lr.ph.i:                                         ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.d, i8 0, i64 696, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 816
  store ptr @.str, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 824
  store ptr @.str.1, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr @.str.3, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr @.str.4, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr @.str.4, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr @.str.5, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @.str.5, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr @.str.6, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr @.str.6, ptr %i.n, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr @.str.4, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr @.str.4, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @.str.7, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr @.str.8, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr @.str.4, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr @.str.9, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr @.str.5, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr @.str.10, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr @.str.6, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr @.str.11, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr @.str.12, ptr %i.y, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr @.str.13, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr @.str.14, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr @.str.15, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr @.str.16, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 416
  store ptr @.str.17, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 424
  store ptr @.str.18, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr @.str.19, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 440
  store ptr @.str.20, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr @.str.21, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr @.str.22, ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr @.str.23, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr @.str.24, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 480
  store ptr @.str.25, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 488
  store ptr @.str.26, ptr %i.am, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr @.str.27, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 504
  store ptr @.str.28, ptr %i.ao, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr @.str.29, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr @.str.30, ptr %i.aq, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr @.str.30, ptr %i.ar, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr @.str.31, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr @.str.27, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 560
  store ptr @.str.32, ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 568
  store ptr @.str.33, ptr %i.av, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 584
  store ptr @.str.34, ptr %i.aw, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr @.str.35, ptr %i.ax, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr @.str.36, ptr %i.ay, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 608
  store ptr @.str.37, ptr %i.az, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 616
  store ptr @.str.38, ptr %i.ba, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr @.str.39, ptr %i.bb, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr @.str.40, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 640
  store ptr @.str.41, ptr %i.bd, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 648
  store ptr @.str.42, ptr %i.be, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 656
  store ptr @.str.43, ptr %i.bf, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 664
  store ptr @.str.44, ptr %i.bg, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 672
  store ptr @.str.45, ptr %i.bh, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 712
  store ptr @.str.46, ptr %i.bi, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 720
  store ptr @.str.47, ptr %i.bj, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 728
  store ptr @.str.48, ptr %i.bk, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 736
  store ptr @.str.49, ptr %i.bl, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr @.str.50, ptr %i.bm, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr @.str.51, ptr %i.bn, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr @.str.52, ptr %i.bo, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr @.str.53, ptr %i.bp, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 792
  store ptr @.str.54, ptr %i.bq, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 808
  store ptr @.str.55, ptr %i.br, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1576
  store i32 1, ptr %i.bs, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 12 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1588 ; 21 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1604
  store i32 0, ptr %i.bv, align 4, !tbaa !23
  %i.bw = getelementptr i8, ptr %1, i64 1592      ; 25 uses
  br label %bb.d

thread-pre-split:                                 ; preds = %Vec_StrPush.exit.i
  %.pr = load i32, ptr %i.bu, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %.lr.ph.i
  %i.bx = phi i32 [ %.pr, %thread-pre-split ], [ 0, %.lr.ph.i ] ; 7 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %thread-pre-split ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr @.str.163, i64 %indvars.iv.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !20
  %i.ca = load i32, ptr %i.bt, align 8, !tbaa !24
  %i.cb = icmp eq i32 %i.bx, %i.ca
  br i1 %i.cb, label %bb.e, label %.Vec_StrPush.exit_crit_edge.i

.Vec_StrPush.exit_crit_edge.i:                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.bw, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i

bb.e:                                             ; preds = %bb.d
  %i.cc = icmp slt i32 %i.bx, 16
  br i1 %i.cc, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cd, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.cf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.i:                                             ; preds = %bb.e
  %i.cg = icmp samesign ult i32 %i.bx, 1073741823
  %i.ch = shl nuw nsw i32 %i.bx, 1
  %spec.select.i.i = select i1 %i.cg, i32 %i.ch, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bx, %spec.select.i.i
  %.pre8.i = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.j, label %Vec_StrPush.exit.i

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i.i = icmp eq ptr %.pre8.i, null
  %i.ci = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = tail call ptr @realloc(ptr noundef nonnull %.pre8.i, i64 noundef %i.ci) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.l:                                             ; preds = %bb.j
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.ci) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  %i.cl = phi ptr [ %i.cf, %bb.h ], [ %i.ce, %bb.g ], [ %i.cj, %bb.k ], [ %i.ck, %bb.l ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i.i, %bb.k ], [ %spec.select.i.i, %bb.l ]
  store ptr %i.cl, ptr %i.bw, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i, ptr %i.bt, align 8, !tbaa !24
  %.pre9.i = load i32, ptr %i.bu, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %Vec_StrGrow.exit11.sink.split.i.i, %bb.i, %.Vec_StrPush.exit_crit_edge.i
  %i.cm = phi i32 [ %i.bx, %.Vec_StrPush.exit_crit_edge.i ], [ %i.bx, %bb.i ], [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.cn = phi ptr [ %.pre.i, %.Vec_StrPush.exit_crit_edge.i ], [ %.pre8.i, %bb.i ], [ %i.cl, %Vec_StrGrow.exit11.sink.split.i.i ]
  %i.co = add nsw i32 %i.cm, 1
  store i32 %i.co, ptr %i.bu, align 4, !tbaa !23
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp
  store i8 %i.bz, ptr %i.cq, align 1, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 11
  br i1 %exitcond.not.i, label %Vec_StrPrintStr.exit, label %thread-pre-split, !llvm.loop !2

Vec_StrPrintStr.exit:                             ; preds = %Vec_StrPush.exit.i
  %.val32 = load ptr, ptr %1, align 8, !tbaa !102 ; 2 uses
  %i.cr = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val32) #20 ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i34, label %.lr.ph.i51.preheader

.lr.ph.i34:                                       ; preds = %Vec_StrPrintStr.exit
  %wide.trip.count.i35 = and i64 %i.cr, 2147483647
  br label %bb.m

bb.m:                                             ; preds = %Vec_StrPush.exit.i39, %.lr.ph.i34
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i40, %Vec_StrPush.exit.i39 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val32, i64 %indvars.iv.i36
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !20
  %i.cw = load i32, ptr %i.bu, align 4, !tbaa !23 ; 7 uses
  %i.cx = load i32, ptr %i.bt, align 8, !tbaa !24
  %i.cy = icmp eq i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.n, label %.Vec_StrPush.exit_crit_edge.i37

.Vec_StrPush.exit_crit_edge.i37:                  ; preds = %bb.m
  %.pre.i38 = load ptr, ptr %i.bw, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i39

bb.n:                                             ; preds = %bb.m
  %i.cz = icmp slt i32 %i.cw, 16
  br i1 %i.cz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i49 = icmp eq ptr %i.da, null
  br i1 %.not9.i.i.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.da, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i46

bb.q:                                             ; preds = %bb.o
  %i.dc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i46

bb.r:                                             ; preds = %bb.n
  %i.dd = icmp samesign ult i32 %i.cw, 1073741823
  %i.de = shl nuw nsw i32 %i.cw, 1
  %spec.select.i.i42 = select i1 %i.dd, i32 %i.de, i32 2147483647 ; 4 uses
  %.not.i9.i.i43 = icmp samesign ult i32 %i.cw, %spec.select.i.i42
  %.pre8.i44 = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i43, label %bb.s, label %Vec_StrPush.exit.i39

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i.i45 = icmp eq ptr %.pre8.i44, null
  %i.df = zext nneg i32 %spec.select.i.i42 to i64 ; 2 uses
  br i1 %.not9.i10.i.i45, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = tail call ptr @realloc(ptr noundef nonnull %.pre8.i44, i64 noundef %i.df) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i46

bb.u:                                             ; preds = %bb.s
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.df) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i46

Vec_StrGrow.exit11.sink.split.i.i46:              ; preds = %bb.u, %bb.t, %bb.q, %bb.p
  %i.di = phi ptr [ %i.dc, %bb.q ], [ %i.db, %bb.p ], [ %i.dg, %bb.t ], [ %i.dh, %bb.u ] ; 2 uses
  %spec.select.sink.i.i47 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i.i42, %bb.t ], [ %spec.select.i.i42, %bb.u ]
  store ptr %i.di, ptr %i.bw, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i47, ptr %i.bt, align 8, !tbaa !24
  %.pre9.i48 = load i32, ptr %i.bu, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i39

Vec_StrPush.exit.i39:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i46, %bb.r, %.Vec_StrPush.exit_crit_edge.i37
  %i.dj = phi i32 [ %i.cw, %.Vec_StrPush.exit_crit_edge.i37 ], [ %i.cw, %bb.r ], [ %.pre9.i48, %Vec_StrGrow.exit11.sink.split.i.i46 ] ; 2 uses
  %i.dk = phi ptr [ %.pre.i38, %.Vec_StrPush.exit_crit_edge.i37 ], [ %.pre8.i44, %bb.r ], [ %i.di, %Vec_StrGrow.exit11.sink.split.i.i46 ]
  %i.dl = add nsw i32 %i.dj, 1
  store i32 %i.dl, ptr %i.bu, align 4, !tbaa !23
  %i.dm = sext i32 %i.dj to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dk, i64 %i.dm
  store i8 %i.cv, ptr %i.dn, align 1, !tbaa !20
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i35
  br i1 %exitcond.not.i41, label %.lr.ph.i51.preheader, label %bb.m, !llvm.loop !2

.lr.ph.i51.preheader:                             ; preds = %Vec_StrPush.exit.i39, %Vec_StrPrintStr.exit
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %Vec_StrPush.exit.i56
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i57, %Vec_StrPush.exit.i56 ], [ 0, %.lr.ph.i51.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr @.str.164, i64 %indvars.iv.i53
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !20
  %i.dq = load i32, ptr %i.bu, align 4, !tbaa !23 ; 7 uses
  %i.dr = load i32, ptr %i.bt, align 8, !tbaa !24
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.v, label %.Vec_StrPush.exit_crit_edge.i54

.Vec_StrPush.exit_crit_edge.i54:                  ; preds = %.lr.ph.i51
  %.pre.i55 = load ptr, ptr %i.bw, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i56

bb.v:                                             ; preds = %.lr.ph.i51
  %i.dt = icmp slt i32 %i.dq, 16
  br i1 %i.dt, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.du = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i66 = icmp eq ptr %i.du, null
  br i1 %.not9.i.i.i66, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.du, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i63

bb.y:                                             ; preds = %bb.w
  %i.dw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i63

bb.z:                                             ; preds = %bb.v
  %i.dx = icmp samesign ult i32 %i.dq, 1073741823
  %i.dy = shl nuw nsw i32 %i.dq, 1
  %spec.select.i.i59 = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 4 uses
  %.not.i9.i.i60 = icmp samesign ult i32 %i.dq, %spec.select.i.i59
  %.pre8.i61 = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i60, label %bb.aa, label %Vec_StrPush.exit.i56

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i.i62 = icmp eq ptr %.pre8.i61, null
  %i.dz = zext nneg i32 %spec.select.i.i59 to i64 ; 2 uses
  br i1 %.not9.i10.i.i62, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = tail call ptr @realloc(ptr noundef nonnull %.pre8.i61, i64 noundef %i.dz) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i63

bb.ac:                                            ; preds = %bb.aa
  %i.eb = tail call noalias ptr @malloc(i64 noundef %i.dz) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i63

Vec_StrGrow.exit11.sink.split.i.i63:              ; preds = %bb.ac, %bb.ab, %bb.y, %bb.x
  %i.ec = phi ptr [ %i.dw, %bb.y ], [ %i.dv, %bb.x ], [ %i.ea, %bb.ab ], [ %i.eb, %bb.ac ] ; 2 uses
  %spec.select.sink.i.i64 = phi i32 [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i.i59, %bb.ab ], [ %spec.select.i.i59, %bb.ac ]
  store ptr %i.ec, ptr %i.bw, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i64, ptr %i.bt, align 8, !tbaa !24
  %.pre9.i65 = load i32, ptr %i.bu, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i56

Vec_StrPush.exit.i56:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i63, %bb.z, %.Vec_StrPush.exit_crit_edge.i54
  %i.ed = phi i32 [ %i.dq, %.Vec_StrPush.exit_crit_edge.i54 ], [ %i.dq, %bb.z ], [ %.pre9.i65, %Vec_StrGrow.exit11.sink.split.i.i63 ] ; 2 uses
  %i.ee = phi ptr [ %.pre.i55, %.Vec_StrPush.exit_crit_edge.i54 ], [ %.pre8.i61, %bb.z ], [ %i.ec, %Vec_StrGrow.exit11.sink.split.i.i63 ]
  %i.ef = add nsw i32 %i.ed, 1
  store i32 %i.ef, ptr %i.bu, align 4, !tbaa !23
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.eg
  store i8 %i.dp, ptr %i.eh, align 1, !tbaa !20
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, 36
  br i1 %exitcond.not.i58, label %Vec_StrPrintStr.exit67, label %.lr.ph.i51, !llvm.loop !2

Vec_StrPrintStr.exit67:                           ; preds = %Vec_StrPush.exit.i56
  %i.ei = tail call ptr (...) @Extra_TimeStamp() #17 ; 2 uses
  %i.ej = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ei) #20 ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i68, label %.lr.ph.i85

.lr.ph.i68:                                       ; preds = %Vec_StrPrintStr.exit67
  %wide.trip.count.i69 = and i64 %i.ej, 2147483647
  br label %bb.ad

bb.ad:                                            ; preds = %Vec_StrPush.exit.i73, %.lr.ph.i68
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.i68 ], [ %indvars.iv.next.i74, %Vec_StrPush.exit.i73 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.i70
  %i.en = load i8, ptr %i.em, align 1, !tbaa !20
  %i.eo = load i32, ptr %i.bu, align 4, !tbaa !23 ; 7 uses
  %i.ep = load i32, ptr %i.bt, align 8, !tbaa !24
  %i.eq = icmp eq i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ae, label %.Vec_StrPush.exit_crit_edge.i71

.Vec_StrPush.exit_crit_edge.i71:                  ; preds = %bb.ad
  %.pre.i72 = load ptr, ptr %i.bw, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i73

bb.ae:                                            ; preds = %bb.ad
  %i.er = icmp slt i32 %i.eo, 16
  br i1 %i.er, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.es = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i83 = icmp eq ptr %i.es, null
  br i1 %.not9.i.i.i83, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.et = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.es, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i80

bb.ah:                                            ; preds = %bb.af
  %i.eu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i80

bb.ai:                                            ; preds = %bb.ae
  %i.ev = icmp samesign ult i32 %i.eo, 1073741823
  %i.ew = shl nuw nsw i32 %i.eo, 1
  %spec.select.i.i76 = select i1 %i.ev, i32 %i.ew, i32 2147483647 ; 4 uses
  %.not.i9.i.i77 = icmp samesign ult i32 %i.eo, %spec.select.i.i76
  %.pre8.i78 = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i77, label %bb.aj, label %Vec_StrPush.exit.i73

bb.aj:                                            ; preds = %bb.ai
  %.not9.i10.i.i79 = icmp eq ptr %.pre8.i78, null
  %i.ex = zext nneg i32 %spec.select.i.i76 to i64 ; 2 uses
  br i1 %.not9.i10.i.i79, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ey = tail call ptr @realloc(ptr noundef nonnull %.pre8.i78, i64 noundef %i.ex) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i80

bb.al:                                            ; preds = %bb.aj
  %i.ez = tail call noalias ptr @malloc(i64 noundef %i.ex) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i80

Vec_StrGrow.exit11.sink.split.i.i80:              ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ag
  %i.fa = phi ptr [ %i.eu, %bb.ah ], [ %i.et, %bb.ag ], [ %i.ey, %bb.ak ], [ %i.ez, %bb.al ] ; 2 uses
  %spec.select.sink.i.i81 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i76, %bb.ak ], [ %spec.select.i.i76, %bb.al ]
  store ptr %i.fa, ptr %i.bw, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i81, ptr %i.bt, align 8, !tbaa !24
  %.pre9.i82 = load i32, ptr %i.bu, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i73

Vec_StrPush.exit.i73:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i80, %bb.ai, %.Vec_StrPush.exit_crit_edge.i71
  %i.fb = phi i32 [ %i.eo, %.Vec_StrPush.exit_crit_edge.i71 ], [ %i.eo, %bb.ai ], [ %.pre9.i82, %Vec_StrGrow.exit11.sink.split.i.i80 ] ; 2 uses
  %i.fc = phi ptr [ %.pre.i72, %.Vec_StrPush.exit_crit_edge.i71 ], [ %.pre8.i78, %bb.ai ], [ %i.fa, %Vec_StrGrow.exit11.sink.split.i.i80 ]
  %i.fd = add nsw i32 %i.fb, 1
  store i32 %i.fd, ptr %i.bu, align 4, !tbaa !23
  %i.fe = sext i32 %i.fb to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 %i.fe
  store i8 %i.en, ptr %i.ff, align 1, !tbaa !20
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i69
  br i1 %exitcond.not.i75, label %.lr.ph.i85, label %bb.ad, !llvm.loop !2

.lr.ph.i85:                                       ; preds = %Vec_StrPush.exit.i73, %Vec_StrPrintStr.exit67
  %i.fg = load i32, ptr %i.bu, align 4, !tbaa !23 ; 7 uses
  %i.fh = load i32, ptr %i.bt, align 8, !tbaa !24
  %i.fi = icmp eq i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.am, label %.Vec_StrPush.exit_crit_edge.i88

.Vec_StrPush.exit_crit_edge.i88:                  ; preds = %.lr.ph.i85
  %.pre.i89 = load ptr, ptr %i.bw, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i90

bb.am:                                            ; preds = %.lr.ph.i85
  %i.fj = icmp slt i32 %i.fg, 16
  br i1 %i.fj, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fk = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i100 = icmp eq ptr %i.fk, null
  br i1 %.not9.i.i.i100, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fk, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i97

bb.ap:                                            ; preds = %bb.an
  %i.fm = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i97

bb.aq:                                            ; preds = %bb.am
  %i.fn = icmp samesign ult i32 %i.fg, 1073741823
  %i.fo = shl nuw nsw i32 %i.fg, 1
  %spec.select.i.i93 = select i1 %i.fn, i32 %i.fo, i32 2147483647 ; 4 uses
  %.not.i9.i.i94 = icmp samesign ult i32 %i.fg, %spec.select.i.i93
  %.pre8.i95 = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i94, label %bb.ar, label %Vec_StrPush.exit.i90

bb.ar:                                            ; preds = %bb.aq
  %.not9.i10.i.i96 = icmp eq ptr %.pre8.i95, null
  %i.fp = zext nneg i32 %spec.select.i.i93 to i64 ; 2 uses
  br i1 %.not9.i10.i.i96, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = tail call ptr @realloc(ptr noundef nonnull %.pre8.i95, i64 noundef %i.fp) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i97

bb.at:                                            ; preds = %bb.ar
  %i.fr = tail call noalias ptr @malloc(i64 noundef %i.fp) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i97

Vec_StrGrow.exit11.sink.split.i.i97:              ; preds = %bb.at, %bb.as, %bb.ap, %bb.ao
  %i.fs = phi ptr [ %i.fm, %bb.ap ], [ %i.fl, %bb.ao ], [ %i.fq, %bb.as ], [ %i.fr, %bb.at ] ; 2 uses
  %spec.select.sink.i.i98 = phi i32 [ 16, %bb.ap ], [ 16, %bb.ao ], [ %spec.select.i.i93, %bb.as ], [ %spec.select.i.i93, %bb.at ]
  store ptr %i.fs, ptr %i.bw, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i98, ptr %i.bt, align 8, !tbaa !24
  %.pre9.i99 = load i32, ptr %i.bu, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i90

Vec_StrPush.exit.i90:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i97, %bb.aq, %.Vec_StrPush.exit_crit_edge.i88
  %i.ft = phi i32 [ %i.fg, %.Vec_StrPush.exit_crit_edge.i88 ], [ %i.fg, %bb.aq ], [ %.pre9.i99, %Vec_StrGrow.exit11.sink.split.i.i97 ] ; 2 uses
  %i.fu = phi ptr [ %.pre.i89, %.Vec_StrPush.exit_crit_edge.i88 ], [ %.pre8.i95, %bb.aq ], [ %i.fs, %Vec_StrGrow.exit11.sink.split.i.i97 ]
  %i.fv = add nsw i32 %i.ft, 1
  store i32 %i.fv, ptr %i.bu, align 4, !tbaa !23
  %i.fw = sext i32 %i.ft to i64
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 %i.fw
  store i8 10, ptr %i.fx, align 1, !tbaa !20
  %i.fy = load i32, ptr %i.bu, align 4, !tbaa !23 ; 7 uses
  %i.fz = load i32, ptr %i.bt, align 8, !tbaa !24
  %i.ga = icmp eq i32 %i.fy, %i.fz
  br i1 %i.ga, label %bb.au, label %.Vec_StrPush.exit_crit_edge.i88.1

.Vec_StrPush.exit_crit_edge.i88.1:                ; preds = %Vec_StrPush.exit.i90
  %.pre.i89.1 = load ptr, ptr %i.bw, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i90.1

bb.au:                                            ; preds = %Vec_StrPush.exit.i90
  %i.gb = icmp slt i32 %i.fy, 16
  br i1 %i.gb, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gc = icmp samesign ult i32 %i.fy, 1073741823
  %i.gd = shl nuw nsw i32 %i.fy, 1
  %spec.select.i.i93.1 = select i1 %i.gc, i32 %i.gd, i32 2147483647 ; 4 uses
  %.not.i9.i.i94.1 = icmp samesign ult i32 %i.fy, %spec.select.i.i93.1
  %.pre8.i95.1 = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i94.1, label %bb.aw, label %Vec_StrPush.exit.i90.1

bb.aw:                                            ; preds = %bb.av
  %.not9.i10.i.i96.1 = icmp eq ptr %.pre8.i95.1, null
  %i.ge = zext nneg i32 %spec.select.i.i93.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i96.1, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gf = tail call ptr @realloc(ptr noundef nonnull %.pre8.i95.1, i64 noundef %i.ge) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i97.1

bb.ay:                                            ; preds = %bb.aw
  %i.gg = tail call noalias ptr @malloc(i64 noundef %i.ge) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i97.1

bb.az:                                            ; preds = %bb.au
  %i.gh = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i100.1 = icmp eq ptr %i.gh, null
  br i1 %.not9.i.i.i100.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gi = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.gh, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i97.1

bb.bb:                                            ; preds = %bb.az
  %i.gj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i97.1

Vec_StrGrow.exit11.sink.split.i.i97.1:            ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.ax
  %i.gk = phi ptr [ %i.gj, %bb.bb ], [ %i.gi, %bb.ba ], [ %i.gf, %bb.ax ], [ %i.gg, %bb.ay ] ; 2 uses
  %spec.select.sink.i.i98.1 = phi i32 [ 16, %bb.bb ], [ 16, %bb.ba ], [ %spec.select.i.i93.1, %bb.ax ], [ %spec.select.i.i93.1, %bb.ay ]
  store ptr %i.gk, ptr %i.bw, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i98.1, ptr %i.bt, align 8, !tbaa !24
  %.pre9.i99.1 = load i32, ptr %i.bu, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i90.1

Vec_StrPush.exit.i90.1:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i97.1, %bb.av, %.Vec_StrPush.exit_crit_edge.i88.1
  %i.gl = phi i32 [ %i.fy, %.Vec_StrPush.exit_crit_edge.i88.1 ], [ %i.fy, %bb.av ], [ %.pre9.i99.1, %Vec_StrGrow.exit11.sink.split.i.i97.1 ] ; 2 uses
  %i.gm = phi ptr [ %.pre.i89.1, %.Vec_StrPush.exit_crit_edge.i88.1 ], [ %.pre8.i95.1, %bb.av ], [ %i.gk, %Vec_StrGrow.exit11.sink.split.i.i97.1 ]
  %i.gn = add nsw i32 %i.gl, 1
  store i32 %i.gn, ptr %i.bu, align 4, !tbaa !23
  %i.go = sext i32 %i.gl to i64
  %i.gp = getelementptr inbounds i8, ptr %i.gm, i64 %i.go
  store i8 10, ptr %i.gp, align 1, !tbaa !20
  %i.gq = getelementptr i8, ptr %1, i64 1564      ; 2 uses
  %.val31102 = load i32, ptr %i.gq, align 4, !tbaa !39
  %.not29.not103 = icmp sgt i32 %.val31102, 1
  br i1 %.not29.not103, label %Cba_ManNtk.exit.lr.ph, label %.critedge

Cba_ManNtk.exit.lr.ph:                            ; preds = %Vec_StrPush.exit.i90.1
  %i.gr = getelementptr i8, ptr %1, i64 1568
  br label %Cba_ManNtk.exit

Cba_ManNtk.exit:                                  ; preds = %Cba_ManNtk.exit.lr.ph, %Cba_ManNtk.exit
  %indvars.iv = phi i64 [ 1, %Cba_ManNtk.exit.lr.ph ], [ %indvars.iv.next, %Cba_ManNtk.exit ] ; 2 uses
  %.val.i = load ptr, ptr %i.gr, align 8, !tbaa !40
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !41
  tail call void @Cba_ManWriteVerilogNtk(ptr noundef %i.gt, i32 noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val31 = load i32, ptr %i.gq, align 4, !tbaa !39
  %i.gu = sext i32 %.val31 to i64
  %.not29.not = icmp slt i64 %indvars.iv.next, %i.gu
  br i1 %.not29.not, label %Cba_ManNtk.exit, label %.critedge, !llvm.loop !100

.critedge:                                        ; preds = %Cba_ManNtk.exit, %Vec_StrPush.exit.i90.1
  %.val30 = load i32, ptr %i.bu, align 4, !tbaa !23
  %i.gv = icmp sgt i32 %.val30, 0
  br i1 %i.gv, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %.critedge
  %i.gw = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.59) ; 3 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef %0) ; 0 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %.val33 = load ptr, ptr %i.bw, align 8, !tbaa !25
  %.val = load i32, ptr %i.bu, align 4, !tbaa !23
  %i.gz = sext i32 %.val to i64
  %i.ha = tail call i64 @fwrite(ptr noundef %.val33, i64 noundef 1, i64 noundef %i.gz, ptr noundef nonnull %i.gw) ; 0 uses
  %i.hb = tail call i32 @fclose(ptr noundef nonnull %i.gw) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge, %bb.be, %bb.bd, %bb.c
  ret void
}

declare ptr @Abc_FrameReadLibGen(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @Abc_NamStr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare i32 @Abc_NamStrFind(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS10Abc_Nam_t_", !11, i64 0}
!15 = !{!"p1 _ZTS14Hash_IntMan_t_", !11, i64 0}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !16, i64 8}
!18 = !{!"Prs_Ntk_t_", !8, i64 0, !8, i64 4, !8, i64 4, !8, i64 4, !8, i64 4, !8, i64 4, !8, i64 4, !14, i64 8, !14, i64 16, !15, i64 24, !17, i64 32, !17, i64 48, !17, i64 64, !17, i64 80, !17, i64 96, !17, i64 112, !17, i64 128, !17, i64 144, !17, i64 160, !17, i64 176, !17, i64 192, !17, i64 208, !17, i64 224}
!19 = !{!18, !14, i64 8}
!20 = !{!7, !7, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"Vec_Str_t_", !8, i64 0, !8, i64 4, !12, i64 8}
!23 = !{!22, !8, i64 4}
!24 = !{!22, !8, i64 0}
!25 = !{!22, !12, i64 8}
!26 = !{!17, !8, i64 4}
!27 = !{!17, !16, i64 8}
!28 = !{!8, !8, i64 0}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{!18, !15, i64 24}
!31 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!32 = !{!"Hash_IntMan_t_", !31, i64 0, !31, i64 8, !8, i64 16}
!33 = !{!32, !31, i64 8}
!34 = !{!"Hash_IntObj_t_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!35 = !{!34, !8, i64 0}
!36 = !{!34, !8, i64 4}
!37 = !{!"any p2 pointer", !11, i64 0}
!38 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !37, i64 8}
!39 = !{!38, !8, i64 4}
!40 = !{!38, !37, i64 8}
!41 = !{!11, !11, i64 0}
!42 = !{!17, !8, i64 0}
!43 = !{!"p1 _ZTS10Cba_Man_t_", !11, i64 0}
!44 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!45 = !{!"Cba_Ntk_t_", !43, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 20, !8, i64 20, !17, i64 24, !17, i64 40, !17, i64 56, !17, i64 72, !22, i64 88, !17, i64 104, !17, i64 120, !17, i64 136, !17, i64 152, !17, i64 168, !17, i64 184, !17, i64 200, !17, i64 216, !17, i64 232, !17, i64 248, !17, i64 264, !17, i64 280, !17, i64 296, !17, i64 312, !17, i64 328, !17, i64 344, !17, i64 360, !17, i64 376, !44, i64 392, !17, i64 400, !17, i64 416}
!46 = !{!45, !43, i64 0}
!47 = !{!"Cba_Man_t_", !12, i64 0, !12, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !15, i64 40, !17, i64 48, !17, i64 64, !17, i64 80, !17, i64 96, !7, i64 112, !7, i64 832, !7, i64 1192, !8, i64 1552, !38, i64 1560, !8, i64 1576, !22, i64 1584, !22, i64 1600, !11, i64 1616}
!48 = !{!47, !14, i64 16}
!49 = !{!47, !15, i64 40}
!50 = !{!47, !14, i64 24}
!51 = !{!47, !8, i64 1576}
!52 = distinct !{!52, !21, !29}
!53 = distinct !{!53, !21}
!54 = distinct !{null}
!55 = distinct !{ptr @Prs_ManWriteVerilogArray, null}
!56 = distinct !{!56, !21, !29}
!57 = !{!18, !14, i64 16}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21, !29}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = !{!18, !8, i64 0}
!67 = !{!31, !31, i64 0}
!68 = distinct !{null}
!69 = distinct !{!69, !21, !29}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21, !29}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21, !29}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21, !96}
!80 = distinct !{!80, !97}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21, !29}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, !97}
!88 = distinct !{!88, !97}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = !{!"Vec_Bit_t_", !8, i64 0, !8, i64 4, !16, i64 8}
!92 = !{!91, !8, i64 0}
!93 = !{!91, !16, i64 8}
!94 = !{!91, !8, i64 4}
!95 = !{!45, !8, i64 12}
!96 = !{!"llvm.loop.peeled.count", i32 2}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = !{!47, !11, i64 1616}
!102 = !{!47, !12, i64 0}
end_hunk_15
