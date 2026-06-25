inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@X509_NAME_oneline:bb.a
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @BUF_MEM_new() #6          ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @BUF_MEM_grow(ptr noundef nonnull %i.d, i64 noundef 200) #6
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.aj, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  store i8 0, ptr %i.i, align 1, !tbaa !14
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %bb.f, label %.preheader

.thread:                                          ; preds = %bb.d
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %.thread149, label %.preheader

.preheader:                                       ; preds = %bb.e, %.thread
  %.0148.ph = phi ptr [ null, %.thread ], [ %i.d, %bb.e ] ; 9 uses
  %.0118146.ph = phi i32 [ %2, %.thread ], [ 200, %bb.e ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = tail call i32 @OPENSSL_sk_num(ptr noundef %i.l) #6
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph176, label %._crit_edge177

.lr.ph176:                                        ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not132 = icmp eq ptr %.0148.ph, null
  %i.q = getelementptr inbounds nuw i8, ptr %.0148.ph, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !9
  tail call void @CRYPTO_free(ptr noundef nonnull %i.d, ptr noundef nonnull @.str, i32 noundef 54) #6
  br label %.thread149

.thread149:                                       ; preds = %.thread, %bb.f
  %.0118145153 = phi i32 [ 200, %bb.f ], [ %2, %.thread ]
  %.0115 = phi ptr [ %i.r, %bb.f ], [ %1, %.thread ] ; 3 uses
  %i.s = sext i32 %.0118145153 to i64             ; 2 uses
  %i.t = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0115, ptr noundef nonnull dereferenceable(13) @.str.1, i64 noundef %i.s) #6 ; 0 uses
  %i.u = getelementptr i8, ptr %.0115, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  store i8 0, ptr %i.v, align 1, !tbaa !14
  br label %bb.aj

bb.g:                                             ; preds = %.lr.ph176, %._crit_edge171
  %.0110175 = phi i32 [ -1, %.lr.ph176 ], [ %i.cv, %._crit_edge171 ]
  %.0119174 = phi i32 [ 0, %.lr.ph176 ], [ %i.bo, %._crit_edge171 ] ; 2 uses
  %.0120173 = phi i32 [ 0, %.lr.ph176 ], [ %i.cw, %._crit_edge171 ] ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !15
  %i.x = call ptr @OPENSSL_sk_value(ptr noundef %i.w, i32 noundef %.0120173) #6 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = call i32 @OBJ_obj2nid(ptr noundef %i.y) #6 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call ptr @OBJ_nid2sn(i32 noundef %i.z) #6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ae = call i32 @i2t_ASN1_OBJECT(ptr noundef nonnull %i.b, i32 noundef 80, ptr noundef %i.ad) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0109 = phi ptr [ %i.b, %bb.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0109) #7 ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !24 ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 1048576
  br i1 %i.ak, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 3 uses
  %i.ap = icmp eq i32 %i.am, 27
  %i.aq = and i32 %i.aj, 3
  %i.ar = icmp eq i32 %i.aq, 0
  %or.cond141 = and i1 %i.ar, %i.ap
  br i1 %or.cond141, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.as = icmp sgt i32 %i.aj, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.aj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %bb.o ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %.not138 = icmp eq i8 %i.au, 0
  br i1 %.not138, label %.lr.ph.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.av = and i64 %indvars.iv, 2
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.av
  store i32 1, ptr %i.aw, align 8, !tbaa !5
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.m
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %.not138.1 = icmp eq i8 %i.ay, 0
  br i1 %.not138.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %i.az = and i64 %indvars.iv.next, 3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az
  store i32 1, ptr %i.ba, align 4, !tbaa !5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i32, ptr %i.a, align 16, !tbaa !5
  %.pre194 = load i32, ptr %i.p, align 4, !tbaa !5
  %.pre195 = load i32, ptr %i.o, align 8, !tbaa !5
  %i.bb = or i32 %.pre194, %.pre
  %i.bc = or i32 %i.bb, %.pre195
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !5
  br label %bb.r

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.a, align 16, !tbaa !5
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !5
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %._crit_edge.thread, %bb.q
  %i.be = icmp sgt i32 %i.aj, 0                   ; 2 uses
  br i1 %i.be, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %bb.r
  %wide.trip.count187 = zext nneg i32 %i.aj to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.v
  %indvars.iv184 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next185, %bb.v ] ; 3 uses
  %.0116162 = phi i32 [ 0, %.lr.ph165.preheader ], [ %.1117, %bb.v ] ; 3 uses
  %i.bf = and i64 %indvars.iv184, 3
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !5
  %.not137 = icmp eq i32 %i.bh, 0
  br i1 %.not137, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph165
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv184
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.bj, label %bb.u [
    i8 47, label %bb.t
    i8 43, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bk = add nsw i32 %.0116162, 2
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bl = add i8 %i.bj, -127
  %or.cond142 = icmp ult i8 %i.bl, -95
  %spec.select.v = select i1 %or.cond142, i32 4, i32 1
  %spec.select = add nsw i32 %spec.select.v, %.0116162
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph165
  %.1117 = phi i32 [ %i.bk, %bb.t ], [ %.0116162, %.lr.ph165 ], [ %spec.select, %bb.u ] ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !30

._crit_edge166:                                   ; preds = %bb.v, %bb.r
  %.0116.lcssa = phi i32 [ 0, %bb.r ], [ %.1117, %bb.v ]
  %i.bm = add nsw i32 %.0119174, 2
  %i.bn = add i32 %i.bm, %i.ag
  %i.bo = add i32 %i.bn, %.0116.lcssa             ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 1048576
  br i1 %i.bp, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %._crit_edge166
  br i1 %.not132, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = add nsw i32 %i.bo, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = call i64 @BUF_MEM_grow(ptr noundef nonnull %.0148.ph, i64 noundef %i.br) #6
  %.not135 = icmp eq i64 %i.bs, 0
  br i1 %.not135, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !9
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %.not133 = icmp slt i32 %i.bo, %.0118146.ph
  br i1 %.not133, label %bb.aa, label %.thread154

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink = phi ptr [ %i.bt, %bb.y ], [ %1, %bb.z ]
  %i.bu = sext i32 %.0119174 to i64
  %i.bv = getelementptr inbounds i8, ptr %.sink, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !31
  %i.by = icmp eq i32 %.0110175, %i.bx
  %i.bz = select i1 %i.by, i8 43, i8 47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !14
  %i.cb = and i64 %i.af, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %.0109, i64 %i.cb, i1 false)
  %sext = shl i64 %i.af, 32
  %i.cc = ashr exact i64 %sext, 32
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  store i8 61, ptr %i.cd, align 1, !tbaa !14
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !27
  br i1 %i.be, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %bb.aa
  %wide.trip.count192 = zext nneg i32 %i.aj to i64
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %bb.ag
  %indvars.iv189 = phi i64 [ 0, %.lr.ph170.preheader ], [ %indvars.iv.next190, %bb.ag ] ; 3 uses
  %.1107168 = phi ptr [ %i.ce, %.lr.ph170.preheader ], [ %.3, %bb.ag ] ; 7 uses
  %i.ci = and i64 %indvars.iv189, 3
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !5
  %.not136 = icmp eq i32 %i.ck, 0
  br i1 %.not136, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph170
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv189
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !14  ; 4 uses
  %i.cn = add i8 %i.cm, -127
  %or.cond = icmp ult i8 %i.cn, -95
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %.1107168, i64 1
  store i8 92, ptr %.1107168, align 1, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %.1107168, i64 2 ; 2 uses
  store i8 120, ptr %i.co, align 1, !tbaa !14
  %i.cq = call i64 @ossl_to_hex(ptr noundef nonnull %i.cp, i8 noundef zeroext %i.cm) #6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.cs = and i8 %i.cm, 123
  %or.cond3 = icmp eq i8 %i.cs, 43
  br i1 %or.cond3, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %.1107168, i64 1
  store i8 92, ptr %.1107168, align 1, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.2108 = phi ptr [ %i.ct, %bb.ae ], [ %.1107168, %bb.ad ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2108, i64 1
  store i8 %i.cm, ptr %.2108, align 1, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af, %.lr.ph170
  %.3 = phi ptr [ %i.cr, %bb.ac ], [ %i.cu, %bb.af ], [ %.1107168, %.lr.ph170 ] ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !32

._crit_edge171:                                   ; preds = %bb.ag, %bb.aa
  %.1107.lcssa = phi ptr [ %i.ce, %bb.aa ], [ %.3, %bb.ag ]
  store i8 0, ptr %.1107.lcssa, align 1, !tbaa !14
  %i.cv = load i32, ptr %i.bw, align 8, !tbaa !31
  %i.cw = add nuw nsw i32 %.0120173, 1            ; 3 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !15
  %i.cy = call i32 @OPENSSL_sk_num(ptr noundef %i.cx) #6
  %i.cz = icmp slt i32 %i.cw, %i.cy
  br i1 %i.cz, label %bb.g, label %._crit_edge177, !llvm.loop !33

._crit_edge177:                                   ; preds = %._crit_edge171, %.preheader
  %.0120.lcssa = phi i32 [ 0, %.preheader ], [ %i.cw, %._crit_edge171 ] ; 2 uses
  %.not134 = icmp eq ptr %.0148.ph, null
  br i1 %.not134, label %.thread154, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge177
  %i.da = getelementptr inbounds nuw i8, ptr %.0148.ph, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !9
  call void @CRYPTO_free(ptr noundef nonnull %.0148.ph, ptr noundef nonnull @.str, i32 noundef 168) #6
  br label %.thread154

.thread154:                                       ; preds = %bb.z, %._crit_edge177, %bb.ah
  %.0120160 = phi i32 [ %.0120.lcssa, %bb.ah ], [ %.0120.lcssa, %._crit_edge177 ], [ %.0120173, %bb.z ]
  %.4 = phi ptr [ %i.db, %bb.ah ], [ %1, %._crit_edge177 ], [ %1, %bb.z ] ; 3 uses
  %i.dc = icmp eq i32 %.0120160, 0
  br i1 %i.dc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread154
  store i8 0, ptr %.4, align 1, !tbaa !14
  br label %bb.aj

.loopexit:                                        ; preds = %bb.x, %._crit_edge166, %bb.j, %bb.b, %bb.c
  %.sink211 = phi i32 [ 175, %bb.b ], [ 175, %bb.c ], [ 116, %._crit_edge166 ], [ 75, %bb.j ], [ 175, %bb.x ]
  %.sink210 = phi i32 [ 524295, %bb.b ], [ 524295, %bb.c ], [ 134, %._crit_edge166 ], [ 134, %bb.j ], [ 524295, %bb.x ]
  %.2 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ], [ %.0148.ph, %bb.j ], [ %.0148.ph, %._crit_edge166 ], [ %.0148.ph, %bb.x ]
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink211, ptr noundef nonnull @__func__.X509_NAME_oneline) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef %.sink210, ptr noundef null) #6
  call void @BUF_MEM_free(ptr noundef %.2) #6
  br label %bb.aj

bb.aj:                                            ; preds = %.thread154, %bb.ai, %bb.d, %.loopexit, %.thread149
  %.0111 = phi ptr [ null, %.loopexit ], [ %.0115, %.thread149 ], [ null, %bb.d ], [ %.4, %bb.ai ], [ %.4, %.thread154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @BUF_MEM_new() local_unnamed_addr #2

declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @i2t_ASN1_OBJECT(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @ossl_to_hex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 8}
!10 = !{!"buf_mem_st", !11, i64 0, !12, i64 8, !11, i64 16, !11, i64 24}
!11 = !{!"long", !7, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"X509_name_st", !17, i64 0, !6, i64 8, !18, i64 16, !12, i64 24, !6, i64 32}
!17 = !{!"p1 _ZTS24stack_st_X509_NAME_ENTRY", !13, i64 0}
!18 = !{!"p1 _ZTS10buf_mem_st", !13, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"X509_name_entry_st", !21, i64 0, !22, i64 8, !6, i64 16, !6, i64 20}
!21 = !{!"p1 _ZTS14asn1_object_st", !13, i64 0}
!22 = !{!"p1 _ZTS14asn1_string_st", !13, i64 0}
!23 = !{!20, !22, i64 8}
!24 = !{!25, !6, i64 0}
!25 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !12, i64 8, !11, i64 16}
!26 = !{!25, !6, i64 4}
!27 = !{!25, !12, i64 8}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = !{!20, !6, i64 16}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
end_hunk_0
