inline.NumInlined: 3
begin_hunk_0_@cb1_dsharp:bb.a
  %i.m = tail call ptr @dsharp(ptr noundef %.01314, ptr noundef %1)
  %i.n = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.015, ptr noundef %i.m) #5 ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !18
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %.01314, i64 %i.p ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.k
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.n, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cb_dsharp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.d) #5
  %i.f = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.e, ptr noundef %0) #5
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.d) #5 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = load i32, ptr %i.g, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17   ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !17
  %i.n = mul nsw i32 %i.l, %i.j
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.o
  %i.q = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.p, ptr noundef %0) #5 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !17
  %i.u = load i32, ptr %1, align 8, !tbaa !18
  %i.v = mul nsw i32 %i.u, %i.t                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx = shl nsw i64 %i.w, 2
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %cb1_dsharp.exit
  %.023 = phi ptr [ %i.at, %cb1_dsharp.exit ], [ %i.s, %bb.c ] ; 2 uses
  %.02022 = phi ptr [ %.0.lcssa.i, %cb1_dsharp.exit ], [ %i.g, %bb.c ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02022, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ab = load i32, ptr @cube, align 8, !tbaa !8
  %i.ac = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.aa, i32 noundef %i.ab) #5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02022, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ag = load i32, ptr %.02022, align 8, !tbaa !18
  %i.ah = mul nsw i32 %i.ag, %i.af                ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx.i = shl nsw i64 %i.ai, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %.idx.i
  %i.ak = icmp sgt i32 %i.ah, 0
  br i1 %i.ak, label %.lr.ph.i, label %cb1_dsharp.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.015.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ac, %.lr.ph ]
  %.01314.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.al = tail call ptr @dsharp(ptr noundef %.01314.i, ptr noundef %.023)
  %i.am = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.015.i, ptr noundef %i.al) #5 ; 2 uses
  %i.an = load i32, ptr %.02022, align 8, !tbaa !18
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.01314.i, i64 %i.ao ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.aj
  br i1 %i.aq, label %.lr.ph.i, label %cb1_dsharp.exit

cb1_dsharp.exit:                                  ; preds = %.lr.ph.i, %.lr.ph
  %.0.lcssa.i = phi ptr [ %i.ac, %.lr.ph ], [ %i.am, %.lr.ph.i ] ; 2 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %.02022) #5
  %i.ar = load i32, ptr %1, align 8, !tbaa !18
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.023, i64 %i.as ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.x
  br i1 %i.au, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %cb1_dsharp.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %.0.lcssa.i, %cb1_dsharp.exit ]
  ret ptr %.1
}

declare ptr @set_copy(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @dsharp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 17 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.f = load i32, ptr @cube, align 8, !tbaa !8
  %i.g = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.e, i32 noundef %i.f) #5 ; 6 uses
  %i.h = tail call i32 (ptr, ptr, ...) @cdist0(ptr noundef %0, ptr noundef %1) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  %i.j = icmp slt i32 %i.i, 33
  %i.k = add nsw i32 %i.i, -1
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = add nuw nsw i32 %i.m, 8
  %narrow = select i1 %i.j, i32 8, i32 %i.n
  %i.o = zext nneg i32 %narrow to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #6
  %i.q = load i32, ptr @cube, align 8, !tbaa !8
  %i.r = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.p, i32 noundef %i.q) #5
  %i.s = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.r, ptr noundef %0, ptr noundef %1) #5 ; 4 uses
  %i.t = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  %i.u = icmp slt i32 %i.t, 33
  %i.v = add nsw i32 %i.t, -1
  %i.w = lshr i32 %i.v, 3
  %i.x = and i32 %i.w, 536870908
  %i.y = add nuw nsw i32 %i.x, 8
  %narrow86 = select i1 %i.u, i32 8, i32 %i.y
  %i.z = zext nneg i32 %narrow86 to i64
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #6
  %i.ab = load i32, ptr @cube, align 8, !tbaa !8
  %i.ac = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.aa, i32 noundef %i.ab) #5
  %i.ad = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.ac, ptr noundef %0, ptr noundef %1) #5 ; 6 uses
  %i.ae = load i32, ptr @cube, align 8, !tbaa !8  ; 2 uses
  %i.af = icmp slt i32 %i.ae, 33
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = lshr i32 %i.ag, 3
  %i.ai = and i32 %i.ah, 536870908
  %i.aj = add nuw nsw i32 %i.ai, 8
  %narrow87 = select i1 %i.af, i32 8, i32 %i.aj
  %i.ak = zext nneg i32 %narrow87 to i64
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #6
  %i.am = load i32, ptr @cube, align 8, !tbaa !8
  %i.an = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.al, i32 noundef %i.am) #5 ; 9 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.aq = ptrtoaddr ptr %i.an to i64
  %i.ar = ptrtoaddr ptr %i.ad to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.c, i64 4
  %i.au = sub i64 %i.aq, %i.d                     ; 2 uses
  %scevgep137 = getelementptr i8, ptr %i.c, i64 4
  %i.av = sub i64 %i.d, %i.ar
  %diff.check159 = icmp ugt i64 %i.av, -32
  %i.aw = add i64 %i.au, -1
  %diff.check160 = icmp ult i64 %i.aw, 31
  %conflict.rdx161 = or i1 %diff.check159, %diff.check160
  %i.ax = sub i64 %i.d, %i.a
  %diff.check = icmp ugt i64 %i.ax, -32
  %i.ay = add i64 %i.au, -1
  %diff.check114 = icmp ult i64 %i.ay, 31
  %conflict.rdx = or i1 %diff.check, %diff.check114
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next100, %.loopexit ] ; 4 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv99
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bc = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %i.s, ptr noundef %i.bb) #5
  %.not85 = icmp eq i32 %i.bc, 0
  br i1 %.not85, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !14 ; 5 uses
  %i.be = load i32, ptr %i.g, align 8, !tbaa !18
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !17 ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.at, align 4, !tbaa !17
  %i.bh = mul nsw i32 %i.bf, %i.be
  %i.bi = sext i32 %i.bh to i64                   ; 5 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi ; 7 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv99
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bn = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.bj, ptr noundef %i.s, ptr noundef %i.bm) #5 ; 0 uses
  %i.bo = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.bp = and i32 %i.bo, 1023
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !4
  %i.br = and i32 %i.bq, -1024
  %i.bs = or disjoint i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !4
  %i.bt = and i32 %i.bo, 1023                     ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 4 uses
  %2 = add nuw nsw i64 %i.bu, 1
  %3 = icmp ne i32 %i.bt, 0
  %umin162.neg = sext i1 %3 to i64
  %i.bv = add nsw i64 %2, %umin162.neg            ; 3 uses
  %min.iters.check164 = icmp ult i64 %i.bv, 8
  %brmerge = select i1 %min.iters.check164, i1 true, i1 %conflict.rdx161
  br i1 %brmerge, label %scalar.ph163.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %bb.d
  %n.vec167 = and i64 %i.bv, -8                   ; 3 uses
  %i.bw = sub nsw i64 %i.bu, %n.vec167
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph165
  %index169 = phi i64 [ 0, %vector.ph165 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.bx = sub i64 %i.bu, %index169                ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -12
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -28
  %wide.load170 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !4
  %wide.load171 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bx ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -12
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -28
  %wide.load172 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !4
  %wide.load173 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !4
  %i.ce = and <4 x i32> %wide.load172, %wide.load170
  %i.cf = and <4 x i32> %wide.load173, %wide.load171
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bx ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -12
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -28
  store <4 x i32> %i.ce, ptr %i.ch, align 4, !tbaa !4
  store <4 x i32> %i.cf, ptr %i.ci, align 4, !tbaa !4
  %index.next174 = add nuw i64 %index169, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.cj, label %middle.block175, label %vector.body168, !llvm.loop !27

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.bv, %n.vec167
  br i1 %cmp.n176, label %.loopexit180, label %scalar.ph163.preheader

scalar.ph163.preheader:                           ; preds = %bb.d, %middle.block175
  %indvars.iv.ph = phi i64 [ %i.bw, %middle.block175 ], [ %i.bu, %bb.d ]
  br label %scalar.ph163

scalar.ph163:                                     ; preds = %scalar.ph163.preheader, %scalar.ph163
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph163 ], [ %indvars.iv.ph, %scalar.ph163.preheader ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = and i32 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cq = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cq, label %scalar.ph163, label %.loopexit180, !llvm.loop !30

.loopexit180:                                     ; preds = %scalar.ph163, %middle.block175
  %i.cr = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.cs = and i32 %i.cr, 1023                     ; 3 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 7 uses
  %4 = add nuw nsw i64 %i.ct, 1
  %5 = icmp ne i32 %i.cs, 0
  %umin142.neg = sext i1 %5 to i64
  %i.cu = add nsw i64 %4, %umin142.neg            ; 3 uses
  %min.iters.check144 = icmp ult i64 %i.cu, 12
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.loopexit180
  %i.cv = icmp ne i32 %i.cs, 0                    ; 2 uses
  %umin132 = zext i1 %i.cv to i64
  %i.cw = add nsw i64 %umin132, %i.bi
  %i.cx = shl nsw i64 %i.cw, 2
  %scevgep133.a = getelementptr i8, ptr %i.bd, i64 %i.cx
  %scevgep134.a = getelementptr i8, ptr %i.bd, i64 4
  %i.cy = shl nuw nsw i64 %i.ct, 2
  %i.cz = add nsw i64 %i.bi, %i.ct
  %i.da = shl nsw i64 %i.cz, 2
  %scevgep135 = getelementptr i8, ptr %scevgep134.a, i64 %i.da
  %i.db = select i1 %i.cv, i64 4, i64 0
  %scevgep136.a = getelementptr i8, ptr %i.c, i64 %i.db
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cy
  %bound0139 = icmp ult ptr %scevgep133.a, %scevgep138
  %bound1140 = icmp ult ptr %scevgep136.a, %scevgep135
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck131
  %n.vec147 = and i64 %i.cu, -8                   ; 3 uses
  %i.dc = sub nsw i64 %i.ct, %n.vec147
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.dd = sub i64 %i.ct, %index149                ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -12 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -28 ; 2 uses
  %wide.load150.a = load <4 x i32>, ptr %i.df, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  %wide.load151 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dd ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -12
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -28
  %wide.load152 = load <4 x i32>, ptr %i.di, align 4, !tbaa !4, !alias.scope !34
  %wide.load153 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !34
  %i.dk = or <4 x i32> %wide.load152, %wide.load150.a
  %i.dl = or <4 x i32> %wide.load153, %wide.load151
  store <4 x i32> %i.dk, ptr %i.df, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  store <4 x i32> %i.dl, ptr %i.dg, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.dm, label %middle.block155, label %vector.body148, !llvm.loop !36

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.cu, %n.vec147
  br i1 %cmp.n156, label %.loopexit179, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %vector.memcheck131, %.loopexit180, %middle.block155
  %indvars.iv90.ph = phi i64 [ %i.ct, %vector.memcheck131 ], [ %i.ct, %.loopexit180 ], [ %i.dc, %middle.block155 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph143 ], [ %indvars.iv90.ph, %scalar.ph143.preheader ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv90 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv90
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = or i32 %i.dq, %i.do
  store i32 %i.dr, ptr %i.dn, align 4, !tbaa !4
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, -1
  %i.ds = icmp samesign ugt i64 %indvars.iv90, 1
  br i1 %i.ds, label %scalar.ph143, label %.loopexit179, !llvm.loop !37

.loopexit179:                                     ; preds = %scalar.ph143, %middle.block155
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv99
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !22
  %i.dw = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.an, ptr noundef nonnull %i.an, ptr noundef %i.dv) #5 ; 0 uses
  %i.dx = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.dy = and i32 %i.dx, 1023
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ea = and i32 %i.dz, -1024
  %i.eb = or disjoint i32 %i.ea, %i.dy
  store i32 %i.eb, ptr %i.c, align 4, !tbaa !4
  %i.ec = and i32 %i.dx, 1023                     ; 2 uses
  %i.ed = zext nneg i32 %i.ec to i64              ; 4 uses
  %6 = add nuw nsw i64 %i.ed, 1
  %7 = icmp ne i32 %i.ec, 0
  %umin115.neg = sext i1 %7 to i64
  %i.ee = add nsw i64 %6, %umin115.neg            ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.ee, 8
  %brmerge181 = select i1 %min.iters.check117, i1 true, i1 %conflict.rdx
  br i1 %brmerge181, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %.loopexit179
  %n.vec120 = and i64 %i.ee, -8                   ; 3 uses
  %i.ef = sub nsw i64 %i.ed, %n.vec120
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.eg = sub i64 %i.ed, %index122                ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -12
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -28
  %wide.load123.a = load <4 x i32>, ptr %i.ei, align 4, !tbaa !4
  %wide.load124.a = load <4 x i32>, ptr %i.ej, align 4, !tbaa !4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.eg ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -12
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -28
  %wide.load125 = load <4 x i32>, ptr %i.el, align 4, !tbaa !4
  %wide.load126 = load <4 x i32>, ptr %i.em, align 4, !tbaa !4
  %i.en = xor <4 x i32> %wide.load125, splat (i32 -1)
  %i.eo = xor <4 x i32> %wide.load126, splat (i32 -1)
  %i.ep = and <4 x i32> %wide.load123.a, %i.en
  %i.eq = and <4 x i32> %wide.load124.a, %i.eo
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -12
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -28
  store <4 x i32> %i.ep, ptr %i.es, align 4, !tbaa !4
  store <4 x i32> %i.eq, ptr %i.et, align 4, !tbaa !4
  %index.next127 = add nuw i64 %index122, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.eu, label %middle.block128, label %vector.body121, !llvm.loop !38

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.ee, %n.vec120
  br i1 %cmp.n129, label %.loopexit178, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %.loopexit179, %middle.block128
  %indvars.iv93.ph = phi i64 [ %i.ef, %middle.block128 ], [ %i.ed, %.loopexit179 ]
  br label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.preheader, %scalar.ph116
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %scalar.ph116 ], [ %indvars.iv93.ph, %scalar.ph116.preheader ] ; 5 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv93
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv93
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = xor i32 %i.ey, -1
  %i.fa = and i32 %i.ew, %i.ez
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv93
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !4
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  %i.fc = icmp samesign ugt i64 %indvars.iv93, 1
  br i1 %i.fc, label %scalar.ph116, label %.loopexit178, !llvm.loop !39

.loopexit178:                                     ; preds = %scalar.ph116, %middle.block128
  %i.fd = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.fe = and i32 %i.fd, 1023                     ; 3 uses
  %i.ff = zext nneg i32 %i.fe to i64              ; 7 uses
  %8 = add nuw nsw i64 %i.ff, 1
  %9 = icmp ne i32 %i.fe, 0
  %umin109.neg = sext i1 %9 to i64
  %i.fg = add nsw i64 %8, %umin109.neg            ; 3 uses
  %min.iters.check = icmp ult i64 %i.fg, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit178
  %i.fh = icmp ne i32 %i.fe, 0                    ; 2 uses
  %umin = zext i1 %i.fh to i64
  %i.fi = add nsw i64 %umin, %i.bi
  %i.fj = shl nsw i64 %i.fi, 2
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.fj
  %scevgep104 = getelementptr i8, ptr %i.bd, i64 4
  %i.fk = shl nuw nsw i64 %i.ff, 2
  %i.fl = add nsw i64 %i.bi, %i.ff
  %i.fm = shl nsw i64 %i.fl, 2
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.fm
  %i.fn = select i1 %i.fh, i64 4, i64 0
  %scevgep106 = getelementptr i8, ptr %i.c, i64 %i.fn
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.fk
  %bound0 = icmp ult ptr %scevgep, %scevgep108
  %bound1 = icmp ult ptr %scevgep106, %scevgep105
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fg, -8                      ; 3 uses
  %i.fo = sub nsw i64 %i.ff, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fp = sub i64 %i.ff, %index                   ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -12 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fr, align 4, !tbaa !4, !alias.scope !40, !noalias !43
  %wide.load110.a = load <4 x i32>, ptr %i.fs, align 4, !tbaa !4, !alias.scope !40, !noalias !43
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -12
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 -28
  %wide.load111.a = load <4 x i32>, ptr %i.fu, align 4, !tbaa !4, !alias.scope !43
  %wide.load112 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !4, !alias.scope !43
  %i.fw = or <4 x i32> %wide.load111.a, %wide.load
  %i.fx = or <4 x i32> %wide.load112, %wide.load110.a
  store <4 x i32> %i.fw, ptr %i.fr, align 4, !tbaa !4, !alias.scope !40, !noalias !43
  store <4 x i32> %i.fx, ptr %i.fs, align 4, !tbaa !4, !alias.scope !40, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.loopexit178, %middle.block
  %indvars.iv96.ph = phi i64 [ %i.ff, %vector.memcheck ], [ %i.ff, %.loopexit178 ], [ %i.fo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %scalar.ph ], [ %indvars.iv96.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv96 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv96
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4
  %i.gd = or i32 %i.gc, %i.ga
  store i32 %i.gd, ptr %i.fz, align 4, !tbaa !4
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %i.ge = icmp samesign ugt i64 %indvars.iv96, 1
  br i1 %i.ge, label %scalar.ph, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.c
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next100, %i.gg
  br i1 %i.gh, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.not82 = icmp eq ptr %i.s, null
  br i1 %.not82, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.s) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.not83 = icmp eq ptr %i.ad, null
  br i1 %.not83, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ad) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not84 = icmp eq ptr %i.an, null
  br i1 %.not84, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.an) #5
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.gi = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.g, ptr noundef %0) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.074 = phi ptr [ %i.g, %bb.i ], [ %i.g, %bb.h ], [ %i.gi, %bb.j ]
  ret ptr %.074
}

declare ptr @set_clear(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @setp_disjoint(...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @cv_intersect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8
  %i.b = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.a) #5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.h = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = shl nsw i64 %i.i, 2
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph56, label %._crit_edge57.thread

.lr.ph56:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load i32, ptr %1, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph56, %._crit_edge
  %i.p = phi i32 [ %i.g, %.lr.ph56 ], [ %i.as, %._crit_edge ]
  %i.q = phi i32 [ %.pre, %.lr.ph56 ], [ %i.at, %._crit_edge ] ; 2 uses
  %.054 = phi ptr [ null, %.lr.ph56 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.03653 = phi ptr [ %i.b, %.lr.ph56 ], [ %.137.lcssa, %._crit_edge ] ; 2 uses
  %.03952 = phi ptr [ %i.m, %.lr.ph56 ], [ %.140.lcssa, %._crit_edge ] ; 2 uses
  %.04251 = phi ptr [ %i.d, %.lr.ph56 ], [ %i.av, %._crit_edge ] ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.s = load i32, ptr %i.o, align 4, !tbaa !17
  %i.t = mul nsw i32 %i.q, %i.s                   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %.idx60 = shl nsw i64 %i.u, 2
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %.idx60
  %i.w = icmp sgt i32 %i.t, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %.148 = phi ptr [ %.3, %bb.h ], [ %.054, %bb.b ] ; 4 uses
  %.13747 = phi ptr [ %.238, %bb.h ], [ %.03653, %bb.b ] ; 6 uses
  %.14046 = phi ptr [ %.241, %bb.h ], [ %.03952, %bb.b ] ; 3 uses
  %.04345 = phi ptr [ %i.aq, %bb.h ], [ %i.r, %bb.b ] ; 3 uses
  %i.x = tail call i32 (ptr, ptr, ...) @cdist0(ptr noundef %.04251, ptr noundef %.04345) #5
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.y = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %.14046, ptr noundef %.04251, ptr noundef %.04345) #5 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13747, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ab = add nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.13747, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !47
  %.not44 = icmp slt i32 %i.ab, %i.ad
  br i1 %.not44, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp eq ptr %.148, null
  %i.af = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.13747) #5 ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.148, ptr noundef %i.af) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi ptr [ %i.ag, %bb.e ], [ %i.af, %bb.d ]
  %i.ah = load i32, ptr @cube, align 8, !tbaa !8
  %i.ai = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.ah) #5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.al = load i32, ptr %.13747, align 8, !tbaa !18
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.14046, i64 %i.am
end_hunk_0
