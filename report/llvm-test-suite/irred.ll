Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/irred?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@irred_derive_table:bb.a
  %.376 = phi ptr [ %i.av, %.lr.ph80 ], [ %i.ce, %bb.g ] ; 5 uses
  %i.be = load i32, ptr %.376, align 4, !tbaa !7
  %i.bf = lshr i32 %i.be, 16
  store i32 %i.bf, ptr @Rp_current, align 4, !tbaa !7
  %i.bg = tail call ptr (ptr, ptr, ...) @cofactor(ptr noundef %i.at, ptr noundef nonnull %.376) #6
  tail call fastcc void @ftautology(ptr noundef %i.bg, ptr noundef %i.au)
  %i.bh = load i32, ptr %.376, align 4, !tbaa !7
  %i.bi = and i32 %i.bh, -4097
  store i32 %i.bi, ptr %.376, align 4, !tbaa !7
  %i.bj = load i32, ptr @debug, align 4, !tbaa !7
  %i.bk = and i32 %i.bj, 16384
  %.not65 = icmp eq i32 %i.bk, 0
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = load i32, ptr %i.ag, align 4, !tbaa !30 ; 2 uses
  %i.bm = sub nsw i32 %i.bl, %.078
  %i.bn = load i32, ptr %i.bc, align 8, !tbaa !45
  %i.bo = load i32, ptr %i.bd, align 8, !tbaa !46
  %i.bp = tail call i64 (...) @util_cpu_time() #6
  %i.bq = tail call ptr @util_print_time(i64 noundef %i.bp) #6
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.078, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.bn, i32 noundef %i.bo, ptr noundef %i.bq) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bs = load i32, ptr %i.bc, align 8, !tbaa !45
  %i.bt = sub nsw i32 %i.bs, %.06177
  %i.bu = icmp sgt i32 %i.bt, 1000
  br i1 %i.bu, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bv = tail call i32 (ptr, ...) @sm_row_dominance(ptr noundef nonnull %i.au) #6 ; 0 uses
  %i.bw = load i32, ptr %i.bc, align 8, !tbaa !45 ; 3 uses
  %i.bx = load i32, ptr @debug, align 4, !tbaa !7
  %i.by = and i32 %i.bx, 16384
  %.not66 = icmp eq i32 %i.by, 0
  br i1 %.not66, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = load i32, ptr %i.bd, align 8, !tbaa !46
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bw, i32 noundef %i.bz) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi i32 [ %i.bw, %bb.f ], [ %i.bw, %bb.e ], [ %.06177, %bb.d ]
  %i.cb = add nuw nsw i32 %.078, 1
  %i.cc = load i32, ptr %2, align 8, !tbaa !31
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %.376, i64 %i.cd ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.ba
  br i1 %i.cf, label %bb.b, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.g, %._crit_edge75
  %i.cg = load ptr, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge81
  tail call void @free(ptr noundef nonnull %i.cg) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge81, %bb.h
  tail call void @free(ptr noundef nonnull %i.at) #6
  ret ptr %i.au
}

declare ptr @cube3list(...) local_unnamed_addr #1

declare ptr @sm_alloc(...) local_unnamed_addr #1

declare i32 @sm_row_dominance(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cube_is_covered(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !64 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @cofactor(ptr noundef %0, ptr noundef %1) #6
  %i.b = tail call i32 @tautology(ptr noundef %i.a)
  ret i32 %i.b
}

declare ptr @cofactor(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tautology(ptr noundef %0) local_unnamed_addr #0 !guid !65 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !7
  %i.b = and i32 %i.a, 512
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @tautology.taut_level, align 4, !tbaa !7 ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @tautology.taut_level, align 4, !tbaa !7
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @taut_special_cases(ptr noundef %0) ; 2 uses
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @cube, align 8, !tbaa !39  ; 3 uses
  %i.h = icmp slt i32 %i.g, 33
  %i.i = add nsw i32 %i.g, -1
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 536870908
  %i.l = add nuw nsw i32 %i.k, 8
  %narrow = select i1 %i.h, i32 8, i32 %i.l
  %i.m = zext nneg i32 %narrow to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #7
  %i.o = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.n, i32 noundef %i.g) #6 ; 4 uses
  %i.p = load i32, ptr @cube, align 8, !tbaa !39  ; 3 uses
  %i.q = icmp slt i32 %i.p, 33
  %i.r = add nsw i32 %i.p, -1
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = add nuw nsw i32 %i.t, 8
  %narrow33 = select i1 %i.q, i32 8, i32 %i.u
  %i.v = zext nneg i32 %narrow33 to i64
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #7
  %i.x = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.w, i32 noundef %i.p) #6 ; 4 uses
  %i.y = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef %0, ptr noundef %i.o, ptr noundef %i.x, i32 noundef 512) #6 ; 2 uses
  %i.z = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef %0, ptr noundef %i.o, i32 noundef %i.y) #6
  %i.aa = tail call i32 @tautology(ptr noundef %i.z)
  %.not28 = icmp eq i32 %i.aa, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef %0, ptr noundef %i.x, i32 noundef %i.y) #6
  %i.ac = tail call i32 @tautology(ptr noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i32 [ 0, %bb.d ], [ %i.ac, %bb.e ]  ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not29 = icmp eq ptr %i.ae, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ae) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %0) #6
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.o) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not31 = icmp eq ptr %i.x, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.x) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.c
  %.0 = phi i32 [ %i.ad, %bb.k ], [ %i.ad, %bb.j ], [ %i.e, %bb.c ] ; 3 uses
  %i.af = load i32, ptr @debug, align 4, !tbaa !7
  %i.ag = and i32 %i.af, 512
  %.not32 = icmp eq i32 %i.ag, 0
  br i1 %.not32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr @tautology.taut_level, align 4, !tbaa !7
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr @tautology.taut_level, align 4, !tbaa !7
  %i.aj = icmp eq i32 %.0, 0
  %i.ak = icmp eq i32 %.0, 1
  %i.al = select i1 %i.ak, ptr @.str.8, ptr @.str.9
  %i.am = select i1 %i.aj, ptr @.str.7, ptr %i.al
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ai, ptr noundef nonnull %i.am) ; 0 uses
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
define dso_local range(i32 0, 3) i32 @taut_special_cases(ptr noundef %0) local_unnamed_addr #0 !guid !79 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !47 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 19 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.085 = phi ptr [ %i.h, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %.085, align 8, !tbaa !40  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader120, label %bb.c

.preheader120:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = ptrtoint ptr %0 to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 4    ; 2 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.085, i64 8
  %i.n = load ptr, ptr %0, align 8, !tbaa !40
  %i.o = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.i, ptr noundef %i.n) #6
  %.not114 = icmp eq i32 %i.o, 0
  br i1 %.not114, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not115 = icmp eq ptr %i.p, null
  br i1 %.not115, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.g:                                             ; preds = %.backedge, %.preheader120
  %i.q = load ptr, ptr %0, align 8, !tbaa !40     ; 8 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = and i32 %i.r, 1023                       ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check189 = icmp samesign ult i32 %i.s, 7
  %i.v = ptrtoaddr ptr %i.q to i64
  %i.w = sub i64 %i.e, %i.v
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check189, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph188.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %bb.g
  %n.vec192 = and i64 %i.u, 2040                  ; 3 uses
  %i.x = sub nsw i64 %i.t, %n.vec192
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next197, %vector.body193 ] ; 2 uses
  %i.y = sub i64 %i.t, %index194                  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  %wide.load195 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !7
  %wide.load196 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -28
  store <4 x i32> %wide.load195, ptr %i.ad, align 4, !tbaa !7
  store <4 x i32> %wide.load196, ptr %i.ae, align 4, !tbaa !7
  %index.next197 = add nuw i64 %index194, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next197, %n.vec192
  br i1 %i.af, label %middle.block198, label %vector.body193, !llvm.loop !66

middle.block198:                                  ; preds = %vector.body193
  %cmp.n199 = icmp eq i64 %i.u, %n.vec192
  br i1 %cmp.n199, label %.preheader119, label %scalar.ph188.preheader

scalar.ph188.preheader:                           ; preds = %bb.g, %middle.block198
  %indvars.iv.ph = phi i64 [ %i.t, %bb.g ], [ %i.x, %middle.block198 ] ; 4 uses
  %i.ag = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph188.prol.loopexit, label %scalar.ph188.prol

scalar.ph188.prol:                                ; preds = %scalar.ph188.preheader, %scalar.ph188.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph188.prol ], [ %indvars.iv.ph, %scalar.ph188.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph188.prol ], [ 0, %scalar.ph188.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.prol
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !7
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph188.prol.loopexit, label %scalar.ph188.prol, !llvm.loop !67

scalar.ph188.prol.loopexit:                       ; preds = %scalar.ph188.prol, %scalar.ph188.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph188.preheader ], [ %indvars.iv.next.prol, %scalar.ph188.prol ]
  %i.ak = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.ak, label %.preheader119, label %scalar.ph188

scalar.ph188:                                     ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph188 ], [ %indvars.iv.unr, %scalar.ph188.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !7
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  store i32 %i.as, ptr %i.at, align 4, !tbaa !7
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !7
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not117.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not117.3, label %.preheader119, label %scalar.ph188, !llvm.loop !68

.preheader119:                                    ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188, %middle.block198
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %.not100121 = icmp eq ptr %i.ax, null
  br i1 %.not100121, label %._crit_edge, label %.lr.ph

.loopexit118:                                     ; preds = %scalar.ph169, %middle.block184
  %i.ay = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.az = load ptr, ptr %i.bb, align 8, !tbaa !40 ; 2 uses
  %.not100 = icmp eq ptr %i.az, null
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119, %.loopexit118
  %i.ba = phi ptr [ %i.az, %.loopexit118 ], [ %i.ax, %.preheader119 ] ; 4 uses
  %i.bb = phi ptr [ %i.ay, %.loopexit118 ], [ %i.j, %.preheader119 ] ; 2 uses
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !7
  %i.bd = and i32 %i.bc, 1023                     ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 6 uses
  %i.bf = icmp ne i32 %i.bd, 0                    ; 2 uses
  %.neg = sext i1 %i.bf to i64
  %i.bg = add nuw nsw i64 %i.be, 1
  %i.bh = add nsw i64 %i.bg, %.neg                ; 3 uses
  %min.iters.check170 = icmp samesign ult i64 %i.bh, 8
  br i1 %min.iters.check170, label %scalar.ph169.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %.lr.ph
  %i.bi = select i1 %i.bf, i64 4, i64 0           ; 2 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bk = shl nuw nsw i64 %i.be, 2                ; 2 uses
  %1 = getelementptr i8, ptr %scevgep, i64 %i.bk
  %i.bl = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bm = getelementptr i8, ptr %i.ba, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %bound0172 = icmp ult ptr %i.bj, %i.bn
  %bound1173 = icmp ult ptr %i.bl, %1
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %scalar.ph169.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck171
  %n.vec176 = and i64 %i.bh, -8                   ; 3 uses
  %i.bo = sub nsw i64 %i.be, %n.vec176
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body177 ] ; 2 uses
  %i.bp = sub i64 %i.be, %index178                ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -12 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -28 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %i.br, align 4, !tbaa !7, !alias.scope !81, !noalias !82
  %wide.load180 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !7, !alias.scope !81, !noalias !82
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -12
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -28
  %wide.load181 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !7, !alias.scope !82
  %wide.load182 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !7, !alias.scope !82
  %i.bw = or <4 x i32> %wide.load181, %wide.load179
  %i.bx = or <4 x i32> %wide.load182, %wide.load180
  store <4 x i32> %i.bw, ptr %i.br, align 4, !tbaa !7, !alias.scope !81, !noalias !82
  store <4 x i32> %i.bx, ptr %i.bs, align 4, !tbaa !7, !alias.scope !81, !noalias !82
  %index.next183 = add nuw i64 %index178, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.by, label %middle.block184, label %vector.body177, !llvm.loop !72

middle.block184:                                  ; preds = %vector.body177
  %cmp.n185 = icmp eq i64 %i.bh, %n.vec176
  br i1 %cmp.n185, label %.loopexit118, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %vector.memcheck171, %.lr.ph, %middle.block184
  %indvars.iv130.ph = phi i64 [ %i.be, %vector.memcheck171 ], [ %i.be, %.lr.ph ], [ %i.bo, %middle.block184 ]
  br label %scalar.ph169

scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph169 ], [ %indvars.iv130.ph, %scalar.ph169.preheader ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv130 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv130
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = or i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !7
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %i.ce = icmp samesign ugt i64 %indvars.iv130, 1
  br i1 %i.ce, label %scalar.ph169, label %.loopexit118, !llvm.loop !73

._crit_edge:                                      ; preds = %.loopexit118, %.preheader119
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !83
  %i.cg = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef nonnull %i.d, ptr noundef %i.cf) #6
  %.not101 = icmp eq i32 %i.cg, 0
  br i1 %.not101, label %bb.h, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.ch = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not102 = icmp eq ptr %i.ch, null
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ch) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.k:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #6
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !51 ; 2 uses
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !52 ; 2 uses
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not113 = icmp eq ptr %i.cl, null
  br i1 %.not113, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.cl) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.o:                                             ; preds = %bb.k
  %i.cm = icmp eq i32 %i.cj, 1
  br i1 %i.cm, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not112 = icmp eq ptr %i.cn, null
  br i1 %.not112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.cn) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.ah

bb.s:                                             ; preds = %bb.o
  %.not103 = icmp eq i32 %i.ci, 0
  br i1 %.not103, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !53
  %i.cp = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef nonnull %i.d, ptr noundef %i.co) #6 ; 0 uses
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph124, label %.preheader

.lr.ph124:                                        ; preds = %bb.t
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 24), align 8, !tbaa !55
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8
  br label %bb.u

.preheader:                                       ; preds = %.loopexit, %bb.t
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %.not108125 = icmp eq ptr %i.cu, null
  br i1 %.not108125, label %._crit_edge128, label %.lr.ph127

bb.u:                                             ; preds = %.lr.ph124, %.loopexit
  %i.cv = phi i32 [ %i.cq, %.lr.ph124 ], [ %i.ed, %.loopexit ]
  %indvars.iv136 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next137, %.loopexit ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv136
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %.not111 = icmp eq i32 %i.cx, 0
  br i1 %.not111, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = load i32, ptr %i.d, align 4, !tbaa !7
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv136
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40 ; 4 uses
  %i.db = and i32 %i.cy, 1023                     ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 6 uses
  %i.dd = icmp ne i32 %i.db, 0                    ; 2 uses
  %.neg201 = sext i1 %i.dd to i64
  %i.de = add nuw nsw i64 %i.dc, 1
  %i.df = add nsw i64 %i.de, %.neg201             ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.df, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.v
  %i.dg = select i1 %i.dd, i64 4, i64 0           ; 2 uses
  %i.dh = getelementptr i8, ptr %i.d, i64 %i.dg
  %i.di = shl nuw nsw i64 %i.dc, 2                ; 2 uses
  %2 = getelementptr i8, ptr %scevgep, i64 %i.di
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.dg
  %i.dk = getelementptr i8, ptr %i.da, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %bound0 = icmp ult ptr %i.dh, %i.dl
  %bound1 = icmp ult ptr %i.dj, %2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, -8                      ; 3 uses
  %i.dm = sub nsw i64 %i.dc, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = sub i64 %i.dc, %index                   ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -12 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dp, align 4, !tbaa !7, !alias.scope !84, !noalias !85
  %wide.load157 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !7, !alias.scope !84, !noalias !85
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dn ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -12
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -28
  %wide.load158 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !7, !alias.scope !85
  %wide.load159 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !7, !alias.scope !85
  %i.du = or <4 x i32> %wide.load158, %wide.load
  %i.dv = or <4 x i32> %wide.load159, %wide.load157
  store <4 x i32> %i.du, ptr %i.dp, align 4, !tbaa !7, !alias.scope !84, !noalias !85
  store <4 x i32> %i.dv, ptr %i.dq, align 4, !tbaa !7, !alias.scope !84, !noalias !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.v, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.dc, %vector.memcheck ], [ %i.dc, %bb.v ], [ %i.dm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv133
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.eb = or i32 %i.ea, %i.dy
  store i32 %i.eb, ptr %i.dx, align 4, !tbaa !7
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, -1
  %i.ec = icmp samesign ugt i64 %indvars.iv133, 1
  br i1 %i.ec, label %scalar.ph, label %.loopexit.loopexit, !llvm.loop !78

.loopexit.loopexit:                               ; preds = %scalar.ph, %middle.block
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.u
  %i.ed = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.cv, %bb.u ] ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next137, %i.ee
  br i1 %i.ef, label %bb.u, label %.preheader

.lr.ph127:                                        ; preds = %.preheader, %bb.x
  %i.eg = phi ptr [ %i.en, %bb.x ], [ %i.cu, %.preheader ] ; 2 uses
  %i.eh = phi ptr [ %i.em, %bb.x ], [ %i.j, %.preheader ] ; 2 uses
  %.084126 = phi ptr [ %.1, %bb.x ], [ %i.h, %.preheader ] ; 3 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !40
  %i.ej = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.g, ptr noundef nonnull %i.eg, ptr noundef %i.ei) #6
  %i.ek = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef nonnull %i.d, ptr noundef %i.ej) #6
  %.not110 = icmp eq i32 %i.ek, 0
  br i1 %.not110, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph127
  %i.el = getelementptr inbounds nuw i8, ptr %.084126, i64 8
  store ptr %i.eg, ptr %.084126, align 8, !tbaa !40
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph127
  %.1 = phi ptr [ %i.el, %bb.w ], [ %.084126, %.lr.ph127 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !40 ; 2 uses
  %.not108 = icmp eq ptr %i.en, null
  br i1 %.not108, label %._crit_edge128, label %.lr.ph127

._crit_edge128:                                   ; preds = %bb.x, %.preheader
  %.084.lcssa = phi ptr [ %i.h, %.preheader ], [ %.1, %bb.x ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.084.lcssa, i64 8 ; 2 uses
  store ptr null, ptr %.084.lcssa, align 8, !tbaa !40
  store ptr %i.eo, ptr %i.k, align 8, !tbaa !40
  %i.ep = load i32, ptr @debug, align 4, !tbaa !7
  %i.eq = and i32 %i.ep, 512
  %.not109 = icmp eq i32 %i.eq, 0
  br i1 %.not109, label %.backedge, label %bb.y

bb.y:                                             ; preds = %._crit_edge128
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !51
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.es, %i.l
  %i.eu = ashr exact i64 %i.et, 3
  %i.ev = add nsw i64 %i.eu, -3
  %i.ew = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.er, i64 noundef %i.ev) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.y, %._crit_edge128
  br label %bb.g

bb.z:                                             ; preds = %bb.s
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 8), align 8, !tbaa !86
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 40), align 8, !tbaa !87
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = sext i32 %i.fb to i64
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.l
  %i.fg = ashr exact i64 %i.ff, 3
  %i.fh = add nsw i64 %i.fg, -3
  %i.fi = sdiv i64 %i.fh, 2
  %i.fj = icmp sgt i64 %i.fi, %i.fc
  br i1 %i.fj, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.fk = load i32, ptr @debug, align 4, !tbaa !7
  %i.fl = and i32 %i.fk, 512
  %i.fm = call i32 (ptr, ptr, ptr, i32, ...) @cubelist_partition(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.fl) #6
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fo = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not104 = icmp eq ptr %i.fo, null
  br i1 %.not104, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.fo) #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @free(ptr noundef nonnull %0) #6
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.fq = call i32 @tautology(ptr noundef %i.fp)
  %.not105 = icmp eq i32 %i.fq, 0
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !88  ; 3 uses
  br i1 %.not105, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !40 ; 2 uses
  %.not106 = icmp eq ptr %i.fs, null
  br i1 %.not106, label %bb.af, label %.thread

.thread:                                          ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.fs) #6
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  store ptr null, ptr %i.ft, align 8, !tbaa !40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread
  %i.fu = phi ptr [ %i.ft, %.thread ], [ %i.fr, %bb.ae ]
  call void @free(ptr noundef nonnull %i.fu) #6
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.fv = call i32 @tautology(ptr noundef %i.fr)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.z, %bb.af, %bb.aa, %bb.ag, %bb.r, %bb.n, %bb.j, %bb.f
  %.087 = phi i32 [ 1, %bb.f ], [ 0, %bb.n ], [ 1, %bb.r ], [ 0, %bb.j ], [ 2, %bb.aa ], [ %i.fv, %bb.ag ], [ 2, %bb.z ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.087
}

declare i32 @full_row(...) local_unnamed_addr #1

declare i32 @setp_equal(...) local_unnamed_addr #1

declare void @massive_count(...) local_unnamed_addr #1

declare ptr @set_copy(...) local_unnamed_addr #1

declare i32 @setp_implies(...) local_unnamed_addr #1

declare ptr @set_or(...) local_unnamed_addr #1

declare i32 @cubelist_partition(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ftautology(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !guid !94 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !7
  %i.b = and i32 %i.a, 512
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @ftautology.ftaut_level, align 4, !tbaa !7 ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @ftautology.ftaut_level, align 4, !tbaa !7
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !47 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %.not83.i = icmp eq ptr %i.k, null
  br i1 %.not83.i, label %.preheader81.i, label %.lr.ph.i

.preheader81.i:                                   ; preds = %bb.f, %bb.c
  tail call void (ptr, ...) @massive_count(ptr noundef %0) #6
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !51 ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !52
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %._crit_edge90.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.preheader81.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %0 to i64
  %scevgep = getelementptr i8, ptr %i.h, i64 4
  br label %bb.l

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %i.q = phi ptr [ %i.y, %bb.f ], [ %i.k, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %i.x, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !7
  %i.t = and i32 %i.s, 4096
  %.not78.i = icmp eq i32 %i.t, 0
  br i1 %.not78.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !40
  %i.v = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.q, ptr noundef %i.u) #6
  %.not79.i = icmp eq i32 %i.v, 0
  br i1 %.not79.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not80.i = icmp eq ptr %i.w, null
  br i1 %.not80.i, label %.sink.split, label %.loopexit82.sink.split.sink.split.i

bb.f:                                             ; preds = %bb.d, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.preheader81.i, label %.lr.ph.i

._crit_edge90.i:                                  ; preds = %bb.s, %.preheader81.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95  ; 2 uses
  %.not73.i = icmp eq ptr %i.aa, null
  br i1 %.not73.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge90.i
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !96
  %i.ac = add nsw i32 %i.ab, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge90.i
  %i.ad = phi i32 [ %i.ac, %bb.g ], [ 0, %._crit_edge90.i ] ; 2 uses
  %i.ae = load i32, ptr @Rp_current, align 4, !tbaa !7
  %i.af = tail call ptr (ptr, i32, i32, ...) @sm_insert(ptr noundef nonnull %1, i32 noundef %i.ad, i32 noundef %i.ae) #6 ; 0 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not7491.i = icmp eq ptr %i.ag, null
  br i1 %.not7491.i, label %._crit_edge94.i, label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %bb.h, %bb.k
  %i.ah = phi ptr [ %i.ar, %bb.k ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ai = phi ptr [ %i.aq, %bb.k ], [ %i.j, %bb.h ] ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.ak = and i32 %i.aj, 4096
  %.not76.i = icmp eq i32 %i.ak, 0
  br i1 %.not76.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph93.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !40
  %i.am = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.ah, ptr noundef %i.al) #6
  %.not77.i = icmp eq i32 %i.am, 0
  br i1 %.not77.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.ao = lshr i32 %i.an, 16
  %i.ap = tail call ptr (ptr, i32, i32, ...) @sm_insert(ptr noundef nonnull %1, i32 noundef %i.ad, i32 noundef %i.ao) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph93.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %.not74.i = icmp eq ptr %i.ar, null
  br i1 %.not74.i, label %._crit_edge94.i, label %.lr.ph93.i

._crit_edge94.i:                                  ; preds = %bb.k, %bb.h
  %i.as = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not75.i = icmp eq ptr %i.as, null
  br i1 %.not75.i, label %.sink.split, label %.loopexit82.sink.split.sink.split.i

bb.l:                                             ; preds = %bb.s, %.lr.ph89.i
  %i.at = phi i32 [ %i.l, %.lr.ph89.i ], [ %i.dd, %bb.s ]
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
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not6986.i = icmp eq ptr %i.ba, null
  br i1 %.not6986.i, label %._crit_edge.i, label %.lr.ph88.i

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph85.i
  %i.bb = phi i32 [ %i.aw, %.lr.ph85.i ], [ %i.cj, %.loopexit.i ]
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next97.i, %.loopexit.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv96.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %.not72.i = icmp eq i32 %i.bd, 0
  br i1 %.not72.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv96.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 4 uses
  %i.bh = and i32 %i.be, 1023                     ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64              ; 6 uses
  %i.bj = icmp ne i32 %i.bh, 0                    ; 2 uses
  %.neg = sext i1 %i.bj to i64
  %i.bk = add nuw nsw i64 %i.bi, 1
  %i.bl = add nsw i64 %i.bk, %.neg                ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.bl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.o
  %i.bm = select i1 %i.bj, i64 4, i64 0           ; 2 uses
  %i.bn = getelementptr i8, ptr %i.h, i64 %i.bm
  %i.bo = shl nuw nsw i64 %i.bi, 2                ; 2 uses
  %2 = getelementptr i8, ptr %scevgep, i64 %i.bo
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bm
  %i.bq = getelementptr i8, ptr %i.bg, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %bound0 = icmp ult ptr %i.bn, %i.br
  %bound1 = icmp ult ptr %i.bp, %2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, -8                      ; 3 uses
  %i.bs = sub nsw i64 %i.bi, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = sub i64 %i.bi, %index                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -12 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !7, !alias.scope !97, !noalias !98
  %wide.load53 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !7, !alias.scope !97, !noalias !98
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bt ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -12
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -28
  %wide.load54 = load <4 x i32>, ptr %i.by, align 4, !tbaa !7, !alias.scope !98
  %wide.load55 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !7, !alias.scope !98
  %i.ca = or <4 x i32> %wide.load54, %wide.load
  %i.cb = or <4 x i32> %wide.load55, %wide.load53
  store <4 x i32> %i.ca, ptr %i.bv, align 4, !tbaa !7, !alias.scope !97, !noalias !98
  store <4 x i32> %i.cb, ptr %i.bw, align 4, !tbaa !7, !alias.scope !97, !noalias !98
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.o, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bi, %vector.memcheck ], [ %i.bi, %bb.o ], [ %i.bs, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = or i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !7
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ci = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ci, label %scalar.ph, label %.loopexit.loopexit.i, !llvm.loop !93

.loopexit.loopexit.i:                             ; preds = %scalar.ph, %middle.block
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.n
  %i.cj = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.bb, %bb.n ] ; 2 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next97.i, %i.ck
  br i1 %i.cl, label %bb.n, label %.preheader.i

.lr.ph88.i:                                       ; preds = %.preheader.i, %bb.q
  %i.cm = phi ptr [ %i.ct, %bb.q ], [ %i.ba, %.preheader.i ] ; 2 uses
  %i.cn = phi ptr [ %i.cs, %bb.q ], [ %i.j, %.preheader.i ] ; 2 uses
  %.05787.i = phi ptr [ %.1.i, %bb.q ], [ %i.i, %.preheader.i ] ; 3 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !40
  %i.cp = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.f, ptr noundef nonnull %i.cm, ptr noundef %i.co) #6
  %i.cq = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.h, ptr noundef %i.cp) #6
  %.not71.i = icmp eq i32 %i.cq, 0
  br i1 %.not71.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph88.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05787.i, i64 8
  store ptr %i.cm, ptr %.05787.i, align 8, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph88.i
  %.1.i = phi ptr [ %i.cr, %bb.p ], [ %.05787.i, %.lr.ph88.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %.not69.i = icmp eq ptr %i.ct, null
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph88.i

._crit_edge.i:                                    ; preds = %bb.q, %.preheader.i
  %.057.lcssa.i = phi ptr [ %i.i, %.preheader.i ], [ %.1.i, %bb.q ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.lcssa.i, i64 8 ; 2 uses
  store ptr null, ptr %.057.lcssa.i, align 8, !tbaa !40
  store ptr %i.cu, ptr %i.o, align 8, !tbaa !40
  %i.cv = load i32, ptr @debug, align 4, !tbaa !7
  %i.cw = and i32 %i.cv, 512
  %.not70.i = icmp eq i32 %i.cw, 0
  br i1 %.not70.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !51
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cy, %i.p
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = add nsw i64 %i.da, -3
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.cx, i64 noundef %i.db) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #6
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !51 ; 2 uses
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !52
  %i.df = icmp eq i32 %i.dd, %i.de
  br i1 %i.df, label %._crit_edge90.i, label %bb.l

.loopexit82.sink.split.sink.split.i:              ; preds = %._crit_edge94.i, %bb.e
  %.sink.i = phi ptr [ %i.w, %bb.e ], [ %i.as, %._crit_edge94.i ]
  tail call void @free(ptr noundef nonnull %.sink.i) #6
  br label %.sink.split

bb.t:                                             ; preds = %bb.l
  %i.dg = load i32, ptr @cube, align 8, !tbaa !39 ; 3 uses
  %i.dh = icmp slt i32 %i.dg, 33
  %i.di = add nsw i32 %i.dg, -1
  %i.dj = lshr i32 %i.di, 3
  %i.dk = and i32 %i.dj, 536870908
  %i.dl = add nuw nsw i32 %i.dk, 8
  %narrow = select i1 %i.dh, i32 8, i32 %i.dl
  %i.dm = zext nneg i32 %narrow to i64
  %i.dn = tail call noalias ptr @malloc(i64 noundef %i.dm) #7
  %i.do = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dn, i32 noundef %i.dg) #6 ; 4 uses
  %i.dp = load i32, ptr @cube, align 8, !tbaa !39 ; 3 uses
  %i.dq = icmp slt i32 %i.dp, 33
  %i.dr = add nsw i32 %i.dp, -1
  %i.ds = lshr i32 %i.dr, 3
  %i.dt = and i32 %i.ds, 536870908
  %i.du = add nuw nsw i32 %i.dt, 8
  %narrow33 = select i1 %i.dq, i32 8, i32 %i.du
  %i.dv = zext nneg i32 %narrow33 to i64
  %i.dw = tail call noalias ptr @malloc(i64 noundef %i.dv) #7
  %i.dx = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dw, i32 noundef %i.dp) #6 ; 4 uses
  %i.dy = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef %0, ptr noundef %i.do, ptr noundef %i.dx, i32 noundef 512) #6 ; 2 uses
  %i.dz = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef %0, ptr noundef %i.do, i32 noundef %i.dy) #6
  tail call fastcc void @ftautology(ptr noundef %i.dz, ptr noundef %1)
  %i.ea = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef %0, ptr noundef %i.dx, i32 noundef %i.dy) #6
  tail call fastcc void @ftautology(ptr noundef %i.ea, ptr noundef %1)
  %i.eb = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not28 = icmp eq ptr %i.eb, null
  br i1 %.not28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.eb) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  tail call void @free(ptr noundef nonnull %0) #6
  %.not29 = icmp eq ptr %i.do, null
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.do) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not30 = icmp eq ptr %i.dx, null
  br i1 %.not30, label %bb.y, label %.sink.split

.sink.split:                                      ; preds = %bb.x, %.loopexit82.sink.split.sink.split.i, %._crit_edge94.i, %bb.e
  %.sink = phi ptr [ %0, %.loopexit82.sink.split.sink.split.i ], [ %0, %bb.e ], [ %0, %._crit_edge94.i ], [ %i.dx, %bb.x ]
  tail call void @free(ptr noundef nonnull %.sink) #6
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %i.ec = load i32, ptr @debug, align 4, !tbaa !7
  %i.ed = and i32 %i.ec, 512
  %.not31 = icmp eq i32 %i.ed, 0
  br i1 %.not31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = load i32, ptr @ftautology.ftaut_level, align 4, !tbaa !7
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr @ftautology.ftaut_level, align 4, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !46
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.ef, i32 noundef %i.eh, i32 noundef %i.ej) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  ret void
}

declare ptr @sm_insert(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}
end_hunk_0
