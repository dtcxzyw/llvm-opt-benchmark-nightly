inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tautology:bb.a

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not31 = icmp eq ptr %i.z, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.z) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.c
  %.0 = phi i32 [ %i.af, %bb.k ], [ %i.af, %bb.j ], [ %i.e, %bb.c ] ; 3 uses
  %i.ah = load i32, ptr @debug, align 4, !tbaa !4
  %i.ai = and i32 %i.ah, 512
  %.not32 = icmp eq i32 %i.ai, 0
  br i1 %.not32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i32, ptr @tautology.taut_level, align 4, !tbaa !4
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr @tautology.taut_level, align 4, !tbaa !4
  %i.al = icmp eq i32 %.0, 0
  %i.am = icmp eq i32 %.0, 1
  %i.an = select i1 %i.am, ptr @.str.8, ptr @.str.9
  %i.ao = select i1 %i.al, ptr @.str.7, ptr %i.an
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ak, ptr noundef nonnull %i.ao) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret i32 %.0
}

declare void @debug_print(...) local_unnamed_addr #1

declare ptr @set_clear(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @binate_split_select(...) local_unnamed_addr #1

declare ptr @scofactor(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @taut_special_cases(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !35 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 20 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.086 = phi ptr [ %i.h, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %.086, align 8, !tbaa !28  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader120, label %bb.c

.preheader120:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = ptrtoint ptr %0 to i64                   ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.d, i64 4
  %scevgep164.a = getelementptr i8, ptr %i.d, i64 4
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.086, i64 8
  %i.n = load ptr, ptr %0, align 8, !tbaa !28
  %i.o = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.i, ptr noundef %i.n) #6
  %.not114 = icmp eq i32 %i.o, 0
  br i1 %.not114, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not115 = icmp eq ptr %i.p, null
  br i1 %.not115, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.g:                                             ; preds = %.backedge, %.preheader120
  %i.q = load ptr, ptr %0, align 8, !tbaa !28     ; 8 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = and i32 %i.r, 1023                       ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check190 = icmp samesign ult i32 %i.s, 7
  %i.v = ptrtoaddr ptr %i.q to i64
  %i.w = sub i64 %i.e, %i.v
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check190, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph189.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %bb.g
  %n.vec193 = and i64 %i.u, 2040                  ; 3 uses
  %i.x = sub nsw i64 %i.t, %n.vec193
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph191
  %index195 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body194 ] ; 2 uses
  %i.y = sub i64 %i.t, %index195                  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  %wide.load196 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %wide.load197 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -28
  store <4 x i32> %wide.load196, ptr %i.ad, align 4, !tbaa !4
  store <4 x i32> %wide.load197, ptr %i.ae, align 4, !tbaa !4
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.af, label %middle.block199, label %vector.body194, !llvm.loop !36

middle.block199:                                  ; preds = %vector.body194
  %cmp.n200 = icmp eq i64 %i.u, %n.vec193
  br i1 %cmp.n200, label %.preheader119, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %bb.g, %middle.block199
  %indvars.iv.ph = phi i64 [ %i.t, %bb.g ], [ %i.x, %middle.block199 ] ; 4 uses
  %i.ag = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol

scalar.ph189.prol:                                ; preds = %scalar.ph189.preheader, %scalar.ph189.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph189.prol ], [ %indvars.iv.ph, %scalar.ph189.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph189.prol ], [ 0, %scalar.ph189.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.prol
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol, !llvm.loop !39

scalar.ph189.prol.loopexit:                       ; preds = %scalar.ph189.prol, %scalar.ph189.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph189.preheader ], [ %indvars.iv.next.prol, %scalar.ph189.prol ]
  %i.ak = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.ak, label %.preheader119, label %scalar.ph189

scalar.ph189:                                     ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph189 ], [ %indvars.iv.unr, %scalar.ph189.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not117.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not117.3, label %.preheader119, label %scalar.ph189, !llvm.loop !41

.preheader119:                                    ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189, %middle.block199
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %.not100121 = icmp eq ptr %i.ax, null
  br i1 %.not100121, label %._crit_edge, label %.lr.ph

.loopexit118:                                     ; preds = %scalar.ph173, %middle.block185
  %i.ay = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.az = load ptr, ptr %i.bb, align 8, !tbaa !28 ; 2 uses
  %.not100 = icmp eq ptr %i.az, null
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119, %.loopexit118
  %i.ba = phi ptr [ %i.az, %.loopexit118 ], [ %i.ax, %.preheader119 ] ; 4 uses
  %i.bb = phi ptr [ %i.ay, %.loopexit118 ], [ %i.j, %.preheader119 ] ; 2 uses
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !4
  %i.bd = and i32 %i.bc, 1023                     ; 3 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 6 uses
  %1 = add nuw nsw i64 %i.be, 1
  %2 = icmp ne i32 %i.bd, 0
  %umin172.neg = sext i1 %2 to i64
  %i.bf = add nsw i64 %1, %umin172.neg            ; 3 uses
  %min.iters.check174 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph
  %.not202.a = icmp eq i32 %i.bd, 0
  %i.bg = select i1 %.not202.a, i64 0, i64 4      ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.bh = shl nuw nsw i64 %i.be, 2                ; 2 uses
  %scevgep165.a = getelementptr i8, ptr %scevgep164.a, i64 %i.bh
  %scevgep166.a = getelementptr i8, ptr %i.ba, i64 %i.bg
  %scevgep167.a = getelementptr i8, ptr %i.ba, i64 4
  %scevgep168 = getelementptr i8, ptr %scevgep167.a, i64 %i.bh
  %bound0169 = icmp ult ptr %scevgep163, %scevgep168
  %bound1170 = icmp ult ptr %scevgep166.a, %scevgep165.a
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck161
  %n.vec177 = and i64 %i.bf, -8                   ; 3 uses
  %i.bi = sub nsw i64 %i.be, %n.vec177
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph175
  %index179 = phi i64 [ 0, %vector.ph175 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %i.bj = sub i64 %i.be, %index179                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -12 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -28 ; 2 uses
  %wide.load180.a = load <4 x i32>, ptr %i.bl, align 4, !tbaa !4, !alias.scope !42, !noalias !45
  %wide.load181.a = load <4 x i32>, ptr %i.bm, align 4, !tbaa !4, !alias.scope !42, !noalias !45
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bj ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -12
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -28
  %wide.load182 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !4, !alias.scope !45
  %wide.load183 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !4, !alias.scope !45
  %i.bq = or <4 x i32> %wide.load182, %wide.load180.a
  %i.br = or <4 x i32> %wide.load183, %wide.load181.a
  store <4 x i32> %i.bq, ptr %i.bl, align 4, !tbaa !4, !alias.scope !42, !noalias !45
  store <4 x i32> %i.br, ptr %i.bm, align 4, !tbaa !4, !alias.scope !42, !noalias !45
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.bs, label %middle.block185, label %vector.body178, !llvm.loop !47

middle.block185:                                  ; preds = %vector.body178
  %cmp.n186 = icmp eq i64 %i.bf, %n.vec177
  br i1 %cmp.n186, label %.loopexit118, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck161, %.lr.ph, %middle.block185
  %indvars.iv130.ph = phi i64 [ %i.be, %vector.memcheck161 ], [ %i.be, %.lr.ph ], [ %i.bi, %middle.block185 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph173 ], [ %indvars.iv130.ph, %scalar.ph173.preheader ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv130 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv130
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = or i32 %i.bw, %i.bu
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !4
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %i.by = icmp samesign ugt i64 %indvars.iv130, 1
  br i1 %i.by, label %scalar.ph173, label %.loopexit118, !llvm.loop !48

._crit_edge:                                      ; preds = %.loopexit118, %.preheader119
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !49
  %i.ca = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef nonnull %i.d, ptr noundef %i.bz) #6
  %.not101 = icmp eq i32 %i.ca, 0
  br i1 %.not101, label %bb.h, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.cb = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %.not102 = icmp eq ptr %i.cb, null
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.cb) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.k:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #6
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !50 ; 2 uses
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !52 ; 2 uses
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %.not113 = icmp eq ptr %i.cf, null
  br i1 %.not113, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.cf) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.o:                                             ; preds = %bb.k
  %i.cg = icmp eq i32 %i.cd, 1
  br i1 %i.cg, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %.not112 = icmp eq ptr %i.ch, null
  br i1 %.not112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ch) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.s:                                             ; preds = %bb.o
  %.not103 = icmp eq i32 %i.cc, 0
  br i1 %.not103, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !53
  %i.cj = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef nonnull %i.d, ptr noundef %i.ci) #6 ; 0 uses
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph124, label %.preheader

.lr.ph124:                                        ; preds = %bb.t
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 24), align 8, !tbaa !55
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8
  br label %bb.u

.preheader:                                       ; preds = %.loopexit, %bb.t
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %.not108125 = icmp eq ptr %i.co, null
  br i1 %.not108125, label %._crit_edge128, label %.lr.ph127

bb.u:                                             ; preds = %.lr.ph124, %.loopexit
  %i.cp = phi i32 [ %i.ck, %.lr.ph124 ], [ %i.dr, %.loopexit ]
  %indvars.iv136 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next137, %.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv136
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %.not111 = icmp eq i32 %i.cr, 0
  br i1 %.not111, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv136
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28 ; 4 uses
  %i.cv = and i32 %i.cs, 1023                     ; 3 uses
  %i.cw = zext nneg i32 %i.cv to i64              ; 6 uses
  %3 = add nuw nsw i64 %i.cw, 1
  %4 = icmp ne i32 %i.cv, 0
  %umin157.neg = sext i1 %4 to i64
  %i.cx = add nsw i64 %3, %umin157.neg            ; 3 uses
  %min.iters.check = icmp ult i64 %i.cx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.v
  %.not203 = icmp eq i32 %i.cv, 0
  %i.cy = select i1 %.not203, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.cy
  %i.cz = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.cz
  %scevgep154 = getelementptr i8, ptr %i.cu, i64 %i.cy
  %scevgep155 = getelementptr i8, ptr %i.cu, i64 4
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.cz
  %bound0 = icmp ult ptr %scevgep, %scevgep156
  %bound1 = icmp ult ptr %scevgep154, %scevgep153
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, -8                      ; 3 uses
  %i.da = sub nsw i64 %i.cw, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = sub i64 %i.cw, %index                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -12 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dd, align 4, !tbaa !4, !alias.scope !56, !noalias !59
  %wide.load158.a = load <4 x i32>, ptr %i.de, align 4, !tbaa !4, !alias.scope !56, !noalias !59
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.db ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -12
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -28
  %wide.load159.a = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4, !alias.scope !59
  %wide.load160 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !4, !alias.scope !59
  %i.di = or <4 x i32> %wide.load159.a, %wide.load
  %i.dj = or <4 x i32> %wide.load160, %wide.load158.a
  store <4 x i32> %i.di, ptr %i.dd, align 4, !tbaa !4, !alias.scope !56, !noalias !59
  store <4 x i32> %i.dj, ptr %i.de, align 4, !tbaa !4, !alias.scope !56, !noalias !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.v, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.cw, %vector.memcheck ], [ %i.cw, %bb.v ], [ %i.da, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv133
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = or i32 %i.do, %i.dm
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !4
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, -1
  %i.dq = icmp samesign ugt i64 %indvars.iv133, 1
  br i1 %i.dq, label %scalar.ph, label %.loopexit.loopexit, !llvm.loop !62

.loopexit.loopexit:                               ; preds = %scalar.ph, %middle.block
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.u
  %i.dr = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.cp, %bb.u ] ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next137, %i.ds
  br i1 %i.dt, label %bb.u, label %.preheader

.lr.ph127:                                        ; preds = %.preheader, %bb.x
  %i.du = phi ptr [ %i.eb, %bb.x ], [ %i.co, %.preheader ] ; 2 uses
  %i.dv = phi ptr [ %i.ea, %bb.x ], [ %i.j, %.preheader ] ; 2 uses
  %.085126 = phi ptr [ %.1, %bb.x ], [ %i.h, %.preheader ] ; 3 uses
  %i.dw = load ptr, ptr %0, align 8, !tbaa !28
  %i.dx = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.g, ptr noundef nonnull %i.du, ptr noundef %i.dw) #6
  %i.dy = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef nonnull %i.d, ptr noundef %i.dx) #6
  %.not110 = icmp eq i32 %i.dy, 0
  br i1 %.not110, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph127
  %i.dz = getelementptr inbounds nuw i8, ptr %.085126, i64 8
  store ptr %i.du, ptr %.085126, align 8, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph127
  %.1 = phi ptr [ %i.dz, %bb.w ], [ %.085126, %.lr.ph127 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !28 ; 2 uses
  %.not108 = icmp eq ptr %i.eb, null
  br i1 %.not108, label %._crit_edge128, label %.lr.ph127

._crit_edge128:                                   ; preds = %bb.x, %.preheader
  %.085.lcssa = phi ptr [ %i.h, %.preheader ], [ %.1, %bb.x ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 8 ; 2 uses
  store ptr null, ptr %.085.lcssa, align 8, !tbaa !28
  store ptr %i.ec, ptr %i.k, align 8, !tbaa !28
  %i.ed = load i32, ptr @debug, align 4, !tbaa !4
  %i.ee = and i32 %i.ed, 512
  %.not109 = icmp eq i32 %i.ee, 0
  br i1 %.not109, label %.backedge, label %bb.y

bb.y:                                             ; preds = %._crit_edge128
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !50
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.eg, %i.l
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = add nsw i64 %i.ei, -3
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ef, i64 noundef %i.ej) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.y, %._crit_edge128
  br label %bb.g

bb.z:                                             ; preds = %bb.s
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 8), align 8, !tbaa !63
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 40), align 8, !tbaa !64
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = sext i32 %i.ep to i64
  %i.er = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.es, %i.l
  %i.eu = ashr exact i64 %i.et, 3
  %i.ev = add nsw i64 %i.eu, -3
  %i.ew = sdiv i64 %i.ev, 2
  %i.ex = icmp sgt i64 %i.ew, %i.eq
  br i1 %i.ex, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ey = load i32, ptr @debug, align 4, !tbaa !4
  %i.ez = and i32 %i.ey, 512
  %i.fa = call i32 (ptr, ptr, ptr, i32, ...) @cubelist_partition(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.ez) #6
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %.not104 = icmp eq ptr %i.fc, null
  br i1 %.not104, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.fc) #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @free(ptr noundef nonnull %0) #6
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.fe = call i32 @tautology(ptr noundef %i.fd)
  %.not105 = icmp eq i32 %i.fe, 0
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !65  ; 3 uses
  br i1 %.not105, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !28 ; 2 uses
  %.not106 = icmp eq ptr %i.fg, null
  br i1 %.not106, label %bb.af, label %.thread

.thread:                                          ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.fg) #6
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  store ptr null, ptr %i.fh, align 8, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread
  %i.fi = phi ptr [ %i.fh, %.thread ], [ %i.ff, %bb.ae ]
  call void @free(ptr noundef nonnull %i.fi) #6
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.fj = call i32 @tautology(ptr noundef %i.ff)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.z, %bb.af, %bb.aa, %bb.ag, %bb.r, %bb.n, %bb.j, %bb.f
  %.084 = phi i32 [ 1, %bb.f ], [ 0, %bb.n ], [ 1, %bb.r ], [ 0, %bb.j ], [ 2, %bb.aa ], [ %i.fj, %bb.ag ], [ 2, %bb.z ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.084
}

declare i32 @full_row(...) local_unnamed_addr #1

declare i32 @setp_equal(...) local_unnamed_addr #1

declare void @massive_count(...) local_unnamed_addr #1

declare ptr @set_copy(...) local_unnamed_addr #1

declare i32 @setp_implies(...) local_unnamed_addr #1

declare ptr @set_or(...) local_unnamed_addr #1

declare i32 @cubelist_partition(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ftautology(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !4
  %i.b = and i32 %i.a, 512
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @ftautology.ftaut_level, align 4, !tbaa !4 ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @ftautology.ftaut_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !35 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %.not83.i = icmp eq ptr %i.k, null
  br i1 %.not83.i, label %.preheader81.i, label %.lr.ph.i

.preheader81.i:                                   ; preds = %bb.f, %bb.c
  tail call void (ptr, ...) @massive_count(ptr noundef %0) #6
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !50 ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !52
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %._crit_edge90.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.preheader81.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %0 to i64
  %scevgep48 = getelementptr i8, ptr %i.h, i64 4
  br label %bb.l

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %i.q = phi ptr [ %i.y, %bb.f ], [ %i.k, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %i.x, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !4
  %i.t = and i32 %i.s, 4096
  %.not78.i = icmp eq i32 %i.t, 0
  br i1 %.not78.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !28
  %i.v = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.q, ptr noundef %i.u) #6
  %.not79.i = icmp eq i32 %i.v, 0
  br i1 %.not79.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not80.i = icmp eq ptr %i.w, null
  br i1 %.not80.i, label %.sink.split, label %.loopexit82.sink.split.sink.split.i

bb.f:                                             ; preds = %bb.d, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.preheader81.i, label %.lr.ph.i

._crit_edge90.i:                                  ; preds = %bb.s, %.preheader81.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66  ; 2 uses
  %.not73.i = icmp eq ptr %i.aa, null
  br i1 %.not73.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge90.i
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !67
  %i.ac = add nsw i32 %i.ab, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge90.i
  %i.ad = phi i32 [ %i.ac, %bb.g ], [ 0, %._crit_edge90.i ] ; 2 uses
  %i.ae = load i32, ptr @Rp_current, align 4, !tbaa !4
  %i.af = tail call ptr (ptr, i32, i32, ...) @sm_insert(ptr noundef nonnull %1, i32 noundef %i.ad, i32 noundef %i.ae) #6 ; 0 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %.not7491.i = icmp eq ptr %i.ag, null
  br i1 %.not7491.i, label %._crit_edge94.i, label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %bb.h, %bb.k
  %i.ah = phi ptr [ %i.ar, %bb.k ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ai = phi ptr [ %i.aq, %bb.k ], [ %i.j, %bb.h ] ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.ak = and i32 %i.aj, 4096
  %.not76.i = icmp eq i32 %i.ak, 0
  br i1 %.not76.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph93.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !28
  %i.am = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.ah, ptr noundef %i.al) #6
  %.not77.i = icmp eq i32 %i.am, 0
  br i1 %.not77.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.ao = lshr i32 %i.an, 16
  %i.ap = tail call ptr (ptr, i32, i32, ...) @sm_insert(ptr noundef nonnull %1, i32 noundef %i.ad, i32 noundef %i.ao) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph93.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %.not74.i = icmp eq ptr %i.ar, null
  br i1 %.not74.i, label %._crit_edge94.i, label %.lr.ph93.i

._crit_edge94.i:                                  ; preds = %bb.k, %bb.h
  %i.as = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %.not75.i = icmp eq ptr %i.as, null
  br i1 %.not75.i, label %.sink.split, label %.loopexit82.sink.split.sink.split.i

bb.l:                                             ; preds = %bb.s, %.lr.ph89.i
  %i.at = phi i32 [ %i.l, %.lr.ph89.i ], [ %i.cx, %bb.s ]
  %.not68.i = icmp eq i32 %i.at, 0
  br i1 %.not68.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !53
  %i.av = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.h, ptr noundef %i.au) #6 ; 0 uses
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph85.i, label %.preheader.i

.lr.ph85.i:                                       ; preds = %bb.m
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 24), align 8, !tbaa !55
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8
  br label %bb.n

.preheader.i:                                     ; preds = %.loopexit.i, %bb.m
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %.not6986.i = icmp eq ptr %i.ba, null
  br i1 %.not6986.i, label %._crit_edge.i, label %.lr.ph88.i

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph85.i
  %i.bb = phi i32 [ %i.aw, %.lr.ph85.i ], [ %i.cd, %.loopexit.i ]
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next97.i, %.loopexit.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv96.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %.not72.i = icmp eq i32 %i.bd, 0
  br i1 %.not72.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr %i.h, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv96.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28 ; 4 uses
  %i.bh = and i32 %i.be, 1023                     ; 3 uses
  %i.bi = zext nneg i32 %i.bh to i64              ; 6 uses
  %2 = add nuw nsw i64 %i.bi, 1
  %3 = icmp ne i32 %i.bh, 0
  %umin53.neg = sext i1 %3 to i64
  %i.bj = add nsw i64 %2, %umin53.neg             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.o
  %.not57 = icmp eq i32 %i.bh, 0
  %i.bk = select i1 %.not57, i64 0, i64 4         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bk
  %i.bl = shl nuw nsw i64 %i.bi, 2                ; 2 uses
  %scevgep49 = getelementptr i8, ptr %scevgep48, i64 %i.bl
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.bk
  %scevgep51 = getelementptr i8, ptr %i.bg, i64 4
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.bl
  %bound0 = icmp ult ptr %scevgep, %scevgep52
  %bound1 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, -8                      ; 3 uses
  %i.bm = sub nsw i64 %i.bi, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = sub i64 %i.bi, %index                   ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -12 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  %wide.load54.a = load <4 x i32>, ptr %i.bq, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bn ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -12
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -28
  %wide.load55.a = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4, !alias.scope !71
  %wide.load56 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !4, !alias.scope !71
  %i.bu = or <4 x i32> %wide.load55.a, %wide.load
  %i.bv = or <4 x i32> %wide.load56, %wide.load54.a
  store <4 x i32> %i.bu, ptr %i.bp, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  store <4 x i32> %i.bv, ptr %i.bq, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.o, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bi, %vector.memcheck ], [ %i.bi, %bb.o ], [ %i.bm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = or i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.cc = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.cc, label %scalar.ph, label %.loopexit.loopexit.i, !llvm.loop !74

.loopexit.loopexit.i:                             ; preds = %scalar.ph, %middle.block
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.n
  %i.cd = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.bb, %bb.n ] ; 2 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next97.i, %i.ce
  br i1 %i.cf, label %bb.n, label %.preheader.i

.lr.ph88.i:                                       ; preds = %.preheader.i, %bb.q
  %i.cg = phi ptr [ %i.cn, %bb.q ], [ %i.ba, %.preheader.i ] ; 2 uses
  %i.ch = phi ptr [ %i.cm, %bb.q ], [ %i.j, %.preheader.i ] ; 2 uses
  %.05987.i = phi ptr [ %.160.i, %bb.q ], [ %i.i, %.preheader.i ] ; 3 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !28
  %i.cj = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.f, ptr noundef nonnull %i.cg, ptr noundef %i.ci) #6
  %i.ck = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.h, ptr noundef %i.cj) #6
  %.not71.i = icmp eq i32 %i.ck, 0
  br i1 %.not71.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph88.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.05987.i, i64 8
  store ptr %i.cg, ptr %.05987.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph88.i
  %.160.i = phi ptr [ %i.cl, %bb.p ], [ %.05987.i, %.lr.ph88.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !28 ; 2 uses
  %.not69.i = icmp eq ptr %i.cn, null
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph88.i

._crit_edge.i:                                    ; preds = %bb.q, %.preheader.i
  %.059.lcssa.i = phi ptr [ %i.i, %.preheader.i ], [ %.160.i, %bb.q ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.059.lcssa.i, i64 8 ; 2 uses
  store ptr null, ptr %.059.lcssa.i, align 8, !tbaa !28
  store ptr %i.co, ptr %i.o, align 8, !tbaa !28
  %i.cp = load i32, ptr @debug, align 4, !tbaa !4
  %i.cq = and i32 %i.cp, 512
  %.not70.i = icmp eq i32 %i.cq, 0
  br i1 %.not70.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !50
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cs, %i.p
  %i.cu = ashr exact i64 %i.ct, 3
  %i.cv = add nsw i64 %i.cu, -3
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.cr, i64 noundef %i.cv) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #6
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !50 ; 2 uses
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !52
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %._crit_edge90.i, label %bb.l

.loopexit82.sink.split.sink.split.i:              ; preds = %._crit_edge94.i, %bb.e
  %.sink.i = phi ptr [ %i.w, %bb.e ], [ %i.as, %._crit_edge94.i ]
  tail call void @free(ptr noundef nonnull %.sink.i) #6
  br label %.sink.split

bb.t:                                             ; preds = %bb.l
  %i.da = load i32, ptr @cube, align 8, !tbaa !24 ; 2 uses
  %i.db = icmp slt i32 %i.da, 33
  %i.dc = add nsw i32 %i.da, -1
  %i.dd = lshr i32 %i.dc, 3
  %i.de = and i32 %i.dd, 536870908
  %i.df = add nuw nsw i32 %i.de, 8
  %narrow = select i1 %i.db, i32 8, i32 %i.df
  %i.dg = zext nneg i32 %narrow to i64
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.dg) #7
  %i.di = load i32, ptr @cube, align 8, !tbaa !24
  %i.dj = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dh, i32 noundef %i.di) #6 ; 4 uses
  %i.dk = load i32, ptr @cube, align 8, !tbaa !24 ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 33
  %i.dm = add nsw i32 %i.dk, -1
  %i.dn = lshr i32 %i.dm, 3
  %i.do = and i32 %i.dn, 536870908
  %i.dp = add nuw nsw i32 %i.do, 8
  %narrow33 = select i1 %i.dl, i32 8, i32 %i.dp
  %i.dq = zext nneg i32 %narrow33 to i64
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dq) #7
  %i.ds = load i32, ptr @cube, align 8, !tbaa !24
  %i.dt = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dr, i32 noundef %i.ds) #6 ; 4 uses
  %i.du = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef %0, ptr noundef %i.dj, ptr noundef %i.dt, i32 noundef 512) #6 ; 2 uses
  %i.dv = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef %0, ptr noundef %i.dj, i32 noundef %i.du) #6
  tail call fastcc void @ftautology(ptr noundef %i.dv, ptr noundef %1)
  %i.dw = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef %0, ptr noundef %i.dt, i32 noundef %i.du) #6
  tail call fastcc void @ftautology(ptr noundef %i.dw, ptr noundef %1)
  %i.dx = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %.not28 = icmp eq ptr %i.dx, null
  br i1 %.not28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.dx) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  tail call void @free(ptr noundef nonnull %0) #6
  %.not29 = icmp eq ptr %i.dj, null
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.dj) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not30 = icmp eq ptr %i.dt, null
  br i1 %.not30, label %bb.y, label %.sink.split

.sink.split:                                      ; preds = %bb.x, %.loopexit82.sink.split.sink.split.i, %._crit_edge94.i, %bb.e
  %.sink = phi ptr [ %0, %.loopexit82.sink.split.sink.split.i ], [ %0, %bb.e ], [ %0, %._crit_edge94.i ], [ %i.dt, %bb.x ]
  tail call void @free(ptr noundef nonnull %.sink) #6
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %i.dy = load i32, ptr @debug, align 4, !tbaa !4
  %i.dz = and i32 %i.dy, 512
  %.not31 = icmp eq i32 %i.dz, 0
  br i1 %.not31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load i32, ptr @ftautology.ftaut_level, align 4, !tbaa !4
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr @ftautology.ftaut_level, align 4, !tbaa !4
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !34
  %i.eg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.ef) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  ret void
end_hunk_0
