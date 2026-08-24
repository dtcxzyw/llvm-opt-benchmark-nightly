Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/htmltable?download=true
inline.NumInlined: 100
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@free_html_label:bb.a
  tail call void %i.k(ptr noundef %i.p) #22, !inline_history !161
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = add nuw i64 %.024.i9, 1                  ; 2 uses
  %.val.i = load i64, ptr %i.h, align 8, !tbaa !159
  %i.r = icmp ult i64 %i.q, %.val.i
  br i1 %i.r, label %bb.c, label %._crit_edge11, !llvm.loop !163

bb.g:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.u) #22, !inline_history !161
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !165
  tail call void @free(ptr noundef %i.w) #22, !inline_history !161
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !98   ; 2 uses
  %.not.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.y = phi ptr [ %i.ao, %.lr.ph ], [ %i.x, %bb.g ] ; 9 uses
  %.0.i7 = phi ptr [ %i.an, %.lr.ph ], [ %i.s, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  tail call void @free_html_label(ptr noundef nonnull %i.z, i32 noundef 0), !inline_history !166
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !149
  tail call void @free(ptr noundef %i.aa) #22, !inline_history !166
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !150
  tail call void @free(ptr noundef %i.ac) #22, !inline_history !166
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !151
  tail call void @free(ptr noundef %i.ae) #22, !inline_history !166
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !152
  tail call void @free(ptr noundef %i.ag) #22, !inline_history !166
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !153
  tail call void @free(ptr noundef %i.ai) #22, !inline_history !166
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.ak) #22, !inline_history !166
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.am) #22, !inline_history !166
  tail call void @free(ptr noundef nonnull %i.y) #22, !inline_history !166
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !98 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.ap) #22, !inline_history !161
  br label %free_html_tbl.exit

free_html_tbl.exit:                               ; preds = %._crit_edge11, %._crit_edge
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !149
  tail call void @free(ptr noundef %i.aq) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !150
  tail call void @free(ptr noundef %i.as) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !151
  tail call void @free(ptr noundef %i.au) #22
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !152
  tail call void @free(ptr noundef %i.aw) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !153
  tail call void @free(ptr noundef %i.ay) #22
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.ba) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.bc) #22
  tail call void @free(ptr noundef nonnull %i.c) #22, !inline_history !161
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !112
  tail call void @free(ptr noundef %i.be) #22
  tail call void @free(ptr noundef %i.c) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @free_html_text(ptr noundef %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %free_html_tbl.exit
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef %0) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite) uwtable
define ptr @html_port(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.k = tail call fastcc ptr @portToTbl(ptr noundef %i.j, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 63
  %i.n = load i8, ptr %i.m, align 1, !tbaa !181
  store i8 %i.n, ptr %2, align 1, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.010 = phi ptr [ null, %bb.a ], [ %i.l, %bb.c ], [ null, %bb.b ]
  ret ptr %.010
}

; Function Attrs: nofree nounwind memory(read) uwtable
define internal fastcc ptr @portToTbl(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcasecmp(ptr noundef nonnull %i.b, ptr noundef %1) #25
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %portToCell.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %portToCell.exit, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.h, %portToCell.exit ] ; 2 uses
  %i.g = load ptr, ptr %.0, align 8, !tbaa !98    ; 5 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %portToCell.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcasecmp(ptr noundef nonnull %i.j, ptr noundef %1) #25, !inline_history !184
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %portToCell.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.n = load i32, ptr %i.m, align 8, !tbaa !109
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %portToCell.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = tail call fastcc ptr @portToTbl(ptr noundef %i.q, ptr noundef %1), !inline_history !184
  br label %portToCell.exit

portToCell.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %.not15 = icmp eq ptr %.0.i, null
  br i1 %.not15, label %bb.d, label %portToCell.exit.thread, !llvm.loop !185

portToCell.exit.thread:                           ; preds = %bb.f, %bb.d, %portToCell.exit, %bb.b
  %.1 = phi ptr [ %0, %bb.b ], [ %i.g, %bb.f ], [ %.0.i, %portToCell.exit ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define i32 @make_html_label(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %2 = alloca %struct.htmlenv_t, align 8          ; 14 uses
  %3 = alloca %struct.agxbuf, align 8             ; 47 uses
  %4 = alloca %struct.boxf, align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %0, ptr %i.b, align 8, !tbaa !186
  %i.c = tail call i32 @agobjkind(ptr noundef %0) #22
  switch i32 %i.c, label %._crit_edge [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !187
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !187
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @agraphof(ptr noundef %0) #22 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.g, ptr %i.h, align 8, !tbaa !187
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8
  %i.j = and i32 %i.i, 3
  %i.k = icmp eq i32 %i.j, 2
  %i.l = select i1 %i.k, i64 56, i64 -8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !195
  %i.o = tail call ptr @agraphof(ptr noundef %i.n) #22 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.o, ptr %i.p, align 8, !tbaa !187
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c, %bb.b
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.o, %bb.d ], [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !188  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.v, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !36
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, -128
  store i32 %i.ac, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %1, align 8, !tbaa !197
  %i.ae = call ptr @parseHTML(ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #22 ; 9 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.f, label %bb.au

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.a, align 4, !tbaa !198
  %i.ag = icmp eq i32 %i.af, 3
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 0, ptr %i.ah, align 2, !tbaa !199
  br label %bb.bl

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 0, ptr %i.ai, align 2, !tbaa !199
  %i.aj = load ptr, ptr %1, align 8, !tbaa !197
  call void @free(ptr noundef %i.aj) #22
  %i.ak = call i32 @agobjkind(ptr noundef %0) #22
  switch i32 %i.ak, label %agxbput.exit.i [
    i32 0, label %bb.i
    i32 1, label %bb.n
    i32 2, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  %i.al = call ptr @agnameof(ptr noundef %0) #22  ; 3 uses
  %i.am = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.al) #25 ; 7 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %agxbput.exit.i, label %agxblen.exit.i.i.i

agxblen.exit.i.i.i:                               ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 4 uses
  %.val.i.i.i.i = load i8, ptr %i.ao, align 1, !tbaa !24 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i, -1    ; 2 uses
  %i.ap = zext i8 %.val.i.i.i.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8
  %.0.i30.i.i.i = select i1 %.not.i.i.i.i, i64 %i.ar, i64 31
  %.0.i24.i.i.i = select i1 %.not.i.i.i.i, i64 %i.at, i64 %i.ap
  %i.au = sub i64 %.0.i30.i.i.i, %.0.i24.i.i.i
  %i.av = icmp ugt i64 %i.am, %i.au
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %agxblen.exit.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef %i.am)
  %.val.i25.pre.i.i.i = load i8, ptr %i.ao, align 1, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %agxblen.exit.i.i.i
  %.val.i25.i.i.i = phi i8 [ %.val.i25.pre.i.i.i, %bb.j ], [ %.val.i.i.i.i, %agxblen.exit.i.i.i ] ; 2 uses
  %.not.i26.i.i.i = icmp eq i8 %.val.i25.i.i.i, -1
  br i1 %.not.i26.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = zext i8 %.val.i25.i.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.al, i64 %i.am, i1 false)
  %i.ay = trunc i64 %i.am to i8
  %i.az = load i8, ptr %i.ao, align 1, !tbaa !24
  %i.ba = add i8 %i.az, %i.ay
  store i8 %i.ba, ptr %i.ao, align 1, !tbaa !24
  br label %agxbput.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !24
  %i.bc = load ptr, ptr %3, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr nonnull readonly align 1 %i.al, i64 %i.am, i1 false)
  %i.be = load i64, ptr %i.as, align 8, !tbaa !24
  %i.bf = add i64 %i.be, %i.am
  store i64 %i.bf, ptr %i.as, align 8, !tbaa !24
  br label %agxbput.exit.i

bb.n:                                             ; preds = %bb.h
  %i.bg = call ptr @agnameof(ptr noundef %0) #22  ; 3 uses
  %i.bh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bg) #25 ; 7 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %agxbput.exit.i, label %agxblen.exit.i.i23.i

agxblen.exit.i.i23.i:                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 4 uses
  %.val.i.i.i20.i = load i8, ptr %i.bj, align 1, !tbaa !24 ; 3 uses
  %.not.i.i.i21.i = icmp eq i8 %.val.i.i.i20.i, -1 ; 2 uses
  %i.bk = zext i8 %.val.i.i.i20.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %.0.i30.i.i24.i = select i1 %.not.i.i.i21.i, i64 %i.bm, i64 31
  %.0.i24.i.i25.i = select i1 %.not.i.i.i21.i, i64 %i.bo, i64 %i.bk
  %i.bp = sub i64 %.0.i30.i.i24.i, %.0.i24.i.i25.i
  %i.bq = icmp ugt i64 %i.bh, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %agxblen.exit.i.i23.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef %i.bh)
  %.val.i25.pre.i.i28.i = load i8, ptr %i.bj, align 1, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %agxblen.exit.i.i23.i
  %.val.i25.i.i26.i = phi i8 [ %.val.i25.pre.i.i28.i, %bb.o ], [ %.val.i.i.i20.i, %agxblen.exit.i.i23.i ] ; 2 uses
  %.not.i26.i.i27.i = icmp eq i8 %.val.i25.i.i26.i, -1
  br i1 %.not.i26.i.i27.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = zext i8 %.val.i25.i.i26.i to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bt = trunc i64 %i.bh to i8
  %i.bu = load i8, ptr %i.bj, align 1, !tbaa !24
  %i.bv = add i8 %i.bu, %i.bt
  store i8 %i.bv, ptr %i.bj, align 1, !tbaa !24
  br label %agxbput.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bw = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bx = load ptr, ptr %3, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr nonnull readonly align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bz = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.ca = add i64 %i.bz, %i.bh
  store i64 %i.ca, ptr %i.bn, align 8, !tbaa !24
  br label %agxbput.exit.i

bb.s:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 8
  %i.cc = and i32 %i.cb, 3
  %i.cd = icmp eq i32 %i.cc, 3
  %i.ce = select i1 %i.cd, i64 56, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !195
  %i.ch = call ptr @agnameof(ptr noundef %i.cg) #22 ; 3 uses
  %i.ci = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ch) #25 ; 7 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %agxbput.exit39.i, label %agxblen.exit.i.i33.i
end_hunk_0
begin_hunk_1_@make_html_label:bb.a

bb.aj:                                            ; preds = %agxbput.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !24
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !24
  br label %agxbsizeof.exit.i.i70.i

agxbsizeof.exit.i.i70.i:                          ; preds = %bb.aj, %agxblen.exit.i.i71.i
  %.0.i20.i.i.i = phi i64 [ %i.fp, %bb.aj ], [ %i.fn, %agxblen.exit.i.i71.i ]
  %.0.i14.i.i.i = phi i64 [ %i.fr, %bb.aj ], [ 31, %agxblen.exit.i.i71.i ]
  %.not.i5.i.i = icmp ult i64 %.0.i20.i.i.i, %.0.i14.i.i.i
  br i1 %.not.i5.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %agxbsizeof.exit.i.i70.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i.i = load i8, ptr %i.fm, align 1, !tbaa !24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %agxbsizeof.exit.i.i70.i
  %.val.i15.i.i.i = phi i8 [ %.val.i15.pre.i.i.i, %bb.ak ], [ %.val.i.i, %agxbsizeof.exit.i.i70.i ] ; 2 uses
  %.not.i16.i.i.i = icmp eq i8 %.val.i15.i.i.i, -1
  br i1 %.not.i16.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = zext i8 %.val.i15.i.i.i to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 %i.fs
  store i8 0, ptr %i.ft, align 1, !tbaa !24
  %i.fu = load i8, ptr %i.fm, align 1, !tbaa !24
  %i.fv = add i8 %i.fu, 1                         ; 2 uses
  store i8 %i.fv, ptr %i.fm, align 1, !tbaa !24
  br label %agxbputc.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !24
  %i.fy = load ptr, ptr %3, align 8, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  store i8 0, ptr %i.fz, align 1, !tbaa !24
  %i.ga = load i64, ptr %i.fw, align 8, !tbaa !24
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr %i.fw, align 8, !tbaa !24
  %.val.i6.pr.i.i = load i8, ptr %i.fm, align 1, !tbaa !24
  br label %agxbputc.exit.i.i

agxbputc.exit.i.i:                                ; preds = %bb.an, %bb.am
  %.val.i8.pr.i.i = phi i8 [ %.val.i6.pr.i.i, %bb.an ], [ %i.fv, %bb.am ]
  %.not.i7.i.i = icmp eq i8 %.val.i8.pr.i.i, -1
  br i1 %.not.i7.i.i, label %bb.ao, label %agxbclear.exit.thread.i.i

agxbclear.exit.thread.i.i:                        ; preds = %agxbputc.exit.i.i, %agxbput.exit.i
  store i8 0, ptr %i.fm, align 1, !tbaa !24
  br label %nameOf.exit

bb.ao:                                            ; preds = %agxbputc.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.gc, align 8, !tbaa !24
  %i.gd = load ptr, ptr %3, align 8, !tbaa !24
  br label %nameOf.exit

nameOf.exit:                                      ; preds = %agxbclear.exit.thread.i.i, %bb.ao
  %i.ge = phi ptr [ %i.gd, %bb.ao ], [ %3, %agxbclear.exit.thread.i.i ] ; 2 uses
  %i.gf = call noalias ptr @strdup(ptr noundef readonly %i.ge) #22 ; 4 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ap, label %gv_strdup.exit

bb.ap:                                            ; preds = %nameOf.exit
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gi = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ge) #25
  %i.gj = add i64 %i.gi, 1
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.8, i64 noundef %i.gj) #23 ; 0 uses
  call fastcc void @graphviz_exit() #26
  unreachable

gv_strdup.exit:                                   ; preds = %nameOf.exit
  store ptr %i.gf, ptr %1, align 8, !tbaa !197
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !200
  %cond = icmp eq i32 %i.gm, 1
  br i1 %cond, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %gv_strdup.exit
  %i.gn = call ptr @latin1ToUTF8(ptr noundef nonnull %i.gf) #22
  br label %bb.as

bb.ar:                                            ; preds = %gv_strdup.exit
  %i.go = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.gp = call ptr @htmlEntityUTF8(ptr noundef nonnull %i.gf, ptr noundef %i.go) #22
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.057 = phi ptr [ %i.gn, %bb.aq ], [ %i.gp, %bb.ar ]
  %i.gq = load ptr, ptr %1, align 8, !tbaa !197
  call void @free(ptr noundef %i.gq) #22
  store ptr %.057, ptr %1, align 8, !tbaa !197
  %i.gr = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !168
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 168
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !201
  call void @make_simple_label(ptr noundef %i.gu, ptr noundef nonnull %1) #22
  %.val61 = load i8, ptr %i.fm, align 1, !tbaa !24
  %i.gv = icmp eq i8 %.val61, -1
  br i1 %i.gv, label %bb.at, label %agxbfree.exit

bb.at:                                            ; preds = %bb.as
  %.val = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val) #22
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %bb.as, %bb.at
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.bl

bb.au:                                            ; preds = %bb.e
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !33
  %i.gz = icmp eq i32 %i.gy, 1
  br i1 %i.gz, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.ha = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !76
  %.not59 = icmp eq ptr %i.hc, null
  br i1 %.not59, label %bb.aw, label %getPenColor.exit

bb.aw:                                            ; preds = %bb.av
  %i.hd = call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.15) #22 ; 2 uses
  %.not.i62 = icmp eq ptr %i.hd, null
  br i1 %.not.i62, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !24
  %.not9.i = icmp eq i8 %i.he, 0
  br i1 %.not9.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hf = call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.16) #22 ; 2 uses
  %.not10.i = icmp eq ptr %i.hf, null
  br i1 %.not10.i, label %getPenColor.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !24
  %.not11.i = icmp eq i8 %i.hg, 0
  br i1 %.not11.i, label %getPenColor.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %i.hh = call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.15) #22 ; 3 uses
  %.not.i63 = icmp eq ptr %i.hh, null
  br i1 %.not.i63, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !24
  %.not9.i64 = icmp eq i8 %i.hi, 0
  br i1 %.not9.i64, label %bb.bc, label %getPenColor.exit68

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hj = call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.16) #22 ; 3 uses
  %.not10.i66 = icmp eq ptr %i.hj, null
  br i1 %.not10.i66, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24
  %.not11.i67 = icmp eq i8 %i.hk, 0
  br i1 %.not11.i67, label %bb.be, label %getPenColor.exit68

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br label %getPenColor.exit68

getPenColor.exit68:                               ; preds = %bb.bb, %bb.bd, %bb.be
  %.0.i65 = phi ptr [ null, %bb.be ], [ %i.hh, %bb.bb ], [ %i.hj, %bb.bd ] ; 2 uses
  %i.hl = call noalias ptr @strdup(ptr noundef readonly %.0.i65) #22 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.bf, label %gv_strdup.exit69

bb.bf:                                            ; preds = %getPenColor.exit68
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ho = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i65) #25
  %i.hp = add i64 %i.ho, 1
  %i.hq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.8, i64 noundef %i.hp) #23 ; 0 uses
  call fastcc void @graphviz_exit() #26
  unreachable

gv_strdup.exit69:                                 ; preds = %getPenColor.exit68
  %i.hr = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  store ptr %i.hl, ptr %i.hs, align 8, !tbaa !76
  br label %getPenColor.exit

getPenColor.exit:                                 ; preds = %bb.az, %bb.ay, %gv_strdup.exit69, %bb.av
  %i.ht = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.hu = call fastcc i32 @size_html_tbl(ptr noundef %i.t, ptr noundef %i.ht, ptr noundef null, ptr noundef %2)
  %i.hv = load i32, ptr %i.a, align 4, !tbaa !198
  %i.hw = or i32 %i.hv, %i.hu
  store i32 %i.hw, ptr %i.a, align 4, !tbaa !198
  %i.hx = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.hz = load <2 x double>, ptr %i.hy, align 8, !tbaa !28
  %i.ia = fmul <2 x double> %i.hz, splat (double 5.000000e-01) ; 4 uses
  %i.ib = fneg <2 x double> %i.ia
  store <2 x double> %i.ib, ptr %4, align 16, !tbaa !28
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x double> %i.ia, ptr %i.ic, align 16, !tbaa !28
  call fastcc void @pos_html_tbl(ptr noundef %i.hx, ptr noundef nonnull byval(%struct.boxf) align 8 %4, i8 noundef zeroext 15)
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ie = fadd <2 x double> %i.ia, %i.ia
  store <2 x double> %i.ie, ptr %i.id, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bh

bb.bg:                                            ; preds = %bb.au
  %i.if = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !168
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 168
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !201
  %i.ij = load ptr, ptr %i.ae, align 8, !tbaa !24
  call fastcc void @size_html_txt(ptr noundef %i.ii, ptr noundef %i.ij, ptr noundef %2)
  %i.ik = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 40 ; 2 uses
  %i.in = load <2 x double>, ptr %i.im, align 8, !tbaa !28
  %i.io = fmul <2 x double> %i.in, splat (double 5.000000e-01) ; 4 uses
  %i.ip = fneg <2 x double> %i.io
  store <2 x double> %i.ip, ptr %i.il, align 8, !tbaa !28
  store <2 x double> %i.io, ptr %i.im, align 8, !tbaa !28
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ir = fadd <2 x double> %i.io, %i.io
  store <2 x double> %i.ir, ptr %i.iq, align 8, !tbaa !28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %getPenColor.exit
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.ae, ptr %i.is, align 8, !tbaa !24
  %i.it = load i32, ptr %i.gx, align 8, !tbaa !33
  %i.iu = icmp eq i32 %i.it, 1
  br i1 %i.iu, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.iv = load ptr, ptr %1, align 8, !tbaa !197
  call void @free(ptr noundef %i.iv) #22
  %i.iw = call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.3) #22 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.bj, label %gv_strdup.exit70

bb.bj:                                            ; preds = %bb.bi
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.iz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.8, i64 noundef 8) #23 ; 0 uses
  call fastcc void @graphviz_exit() #26
  unreachable

gv_strdup.exit70:                                 ; preds = %bb.bi
  store ptr %i.iw, ptr %1, align 8, !tbaa !197
  br label %bb.bk

bb.bk:                                            ; preds = %gv_strdup.exit70, %bb.bh
  %i.ja = load i32, ptr %i.a, align 4, !tbaa !198
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %agxbfree.exit, %bb.g
  %.0 = phi i32 [ %i.ja, %bb.bk ], [ 3, %bb.g ], [ %i.gw, %agxbfree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

declare i32 @agobjkind(ptr noundef) local_unnamed_addr #2

declare ptr @agraphof(ptr noundef) local_unnamed_addr #2

declare ptr @parseHTML(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @latin1ToUTF8(ptr noundef) local_unnamed_addr #2

declare ptr @htmlEntityUTF8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @make_simple_label(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @size_html_tbl(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((104, 112)) %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.bitarray_t, align 8         ; 5 uses
  %5 = alloca %struct.rows_t, align 8             ; 14 uses
  %6 = alloca %struct.bitarray_t, align 8         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %pushFontInfo.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !88
  %.not23.i = icmp eq ptr %i.e, null
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @size_html_tbl.savef.0, align 8, !tbaa !88
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !88
  store ptr %i.f, ptr %i.c, align 8, !tbaa !87
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr @size_html_tbl.savef.0, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 2 uses
  %.not24.i = icmp eq ptr %i.h, null
  br i1 %.not24.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %.not25.i = icmp eq ptr %i.j, null
  br i1 %.not25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.h, ptr @size_html_tbl.savef.1, align 8, !tbaa !90
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !90
  store ptr %i.k, ptr %i.g, align 8, !tbaa !89
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr @size_html_tbl.savef.1, align 8, !tbaa !90
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !38 ; 2 uses
  %i.n = fcmp ult double %i.m, 0.000000e+00
  br i1 %i.n, label %pushFontInfo.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !91
  %i.q = fcmp ult double %i.p, 0.000000e+00
  br i1 %i.q, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store double %i.m, ptr @size_html_tbl.savef.2, align 8, !tbaa !91
  %i.r = load double, ptr %i.o, align 8, !tbaa !91
  store double %i.r, ptr %i.l, align 8, !tbaa !38
  br label %pushFontInfo.exit

bb.m:                                             ; preds = %bb.k
  store double -1.000000e+00, ptr @size_html_tbl.savef.2, align 8, !tbaa !91
  br label %pushFontInfo.exit

pushFontInfo.exit:                                ; preds = %bb.m, %bb.l, %bb.j, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %2, ptr %i.s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !tbaa.struct !211
  %i.u = tail call ptr @newPS() #22, !inline_history !212 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.v = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 8192, i64 noundef 1) #27 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.n, label %bitarray_new.exit

bb.n:                                             ; preds = %pushFontInfo.exit
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.8, i64 noundef 8192) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #26
  unreachable

bitarray_new.exit:                                ; preds = %pushFontInfo.exit
  store ptr %i.v, ptr %6, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 65536, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.val79.i136 = load i64, ptr %i.aa, align 8, !tbaa !159
  %.not180 = icmp eq i64 %.val79.i136, 0
  br i1 %.not180, label %.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r
  %i.ab = add i64 %i.az, 1                        ; 4 uses
  %i.ac = icmp eq i64 %.val79.i, 0                ; 2 uses
  %.not.i125 = icmp eq i64 %i.ab, 0
  br i1 %.not.i125, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %._crit_edge
  %i.ad = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #27 ; 2 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !24
  br i1 %i.ac, label %._crit_edge163.thread, label %.lr.ph162

bb.o:                                             ; preds = %._crit_edge
  %mul.ov.i = icmp ugt i64 %i.ab, 2305843009213693951
  br i1 %mul.ov.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.7, i64 noundef %i.ab, i64 noundef 8) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #26
  unreachable

.thread:                                          ; preds = %bitarray_new.exit, %bb.o
  %.val77.i156242248 = phi i1 [ %i.ac, %bb.o ], [ true, %bitarray_new.exit ]
  %.065.i.lcssa243247 = phi i64 [ %i.ab, %bb.o ], [ 1, %bitarray_new.exit ] ; 2 uses
  %i.ag = tail call noalias ptr @calloc(i64 noundef %.065.i.lcssa243247, i64 noundef 8) #27 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.q, label %gv_calloc.exit

bb.q:                                             ; preds = %.thread
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aj = shl nuw i64 %.065.i.lcssa243247, 3
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.8, i64 noundef %i.aj) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #26
  unreachable

gv_calloc.exit:                                   ; preds = %.thread
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !24
  br i1 %.val77.i156242248, label %._crit_edge163.thread, label %.lr.ph162

.lr.ph162:                                        ; preds = %.thread.i, %gv_calloc.exit
  %i.al = phi ptr [ %i.ad, %.thread.i ], [ %i.ag, %gv_calloc.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
end_hunk_1
