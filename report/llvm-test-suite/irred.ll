Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/irred?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@free
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @irred_derive_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = load i32, ptr %0, align 8, !tbaa !15
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06267 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %.06267, align 4, !tbaa !4
  %i.k = and i32 %i.j, -4097
  store i32 %i.k, ptr %.06267, align 4, !tbaa !4
  %i.l = load i32, ptr %0, align 8, !tbaa !15
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.06267, i64 %i.m ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = load i32, ptr %1, align 8, !tbaa !15
  %i.u = mul nsw i32 %i.t, %i.s                   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %.idx82 = shl nuw nsw i64 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx82
  %i.x = icmp sgt i32 %i.u, 0
  br i1 %i.x, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %._crit_edge, %.lr.ph70
  %.16368 = phi ptr [ %i.ac, %.lr.ph70 ], [ %i.q, %._crit_edge ] ; 3 uses
  %i.y = load i32, ptr %.16368, align 4, !tbaa !4
  %i.z = and i32 %i.y, -4097
  store i32 %i.z, ptr %.16368, align 4, !tbaa !4
  %i.aa = load i32, ptr %1, align 8, !tbaa !15
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.16368, i64 %i.ab ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.w
  br i1 %i.ad, label %.lr.ph70, label %._crit_edge71

._crit_edge71:                                    ; preds = %.lr.ph70, %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.ai = load i32, ptr %2, align 8, !tbaa !15
  %i.aj = mul nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx83 = shl nuw nsw i64 %i.ak, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx83
  %i.am = icmp sgt i32 %i.aj, 0
  br i1 %i.am, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %._crit_edge71, %.lr.ph74
  %.272 = phi ptr [ %i.ar, %.lr.ph74 ], [ %i.af, %._crit_edge71 ] ; 3 uses
  %i.an = load i32, ptr %.272, align 4, !tbaa !4
  %i.ao = or i32 %i.an, 4096
  store i32 %i.ao, ptr %.272, align 4, !tbaa !4
  %i.ap = load i32, ptr %2, align 8, !tbaa !15
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.272, i64 %i.aq ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.al
  br i1 %i.as, label %.lr.ph74, label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74, %._crit_edge71
  %i.at = tail call ptr (ptr, ptr, ptr, ...) @cube3list(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #6 ; 3 uses
  %i.au = tail call ptr (...) @sm_alloc() #6      ; 5 uses
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.aw = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.ax = load i32, ptr %2, align 8, !tbaa !15
  %i.ay = mul nsw i32 %i.ax, %i.aw                ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %.idx84 = shl nsw i64 %i.az, 2
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %.idx84
  %i.bb = icmp sgt i32 %i.ay, 0
  br i1 %i.bb, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge75
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph80, %bb.g
  %.078 = phi i32 [ 0, %.lr.ph80 ], [ %i.cb, %bb.g ] ; 3 uses
  %.06177 = phi i32 [ 0, %.lr.ph80 ], [ %.1, %bb.g ] ; 2 uses
  %.376 = phi ptr [ %i.av, %.lr.ph80 ], [ %i.ce, %bb.g ] ; 5 uses
  %i.be = load i32, ptr %.376, align 4, !tbaa !4
  %i.bf = lshr i32 %i.be, 16
  store i32 %i.bf, ptr @Rp_current, align 4, !tbaa !4
  %i.bg = tail call ptr (ptr, ptr, ...) @cofactor(ptr noundef %i.at, ptr noundef nonnull %.376) #6
  tail call fastcc void @ftautology(ptr noundef %i.bg, ptr noundef %i.au)
  %i.bh = load i32, ptr %.376, align 4, !tbaa !4
  %i.bi = and i32 %i.bh, -4097
  store i32 %i.bi, ptr %.376, align 4, !tbaa !4
  %i.bj = load i32, ptr @debug, align 4, !tbaa !4
  %i.bk = and i32 %i.bj, 16384
  %.not65 = icmp eq i32 %i.bk, 0
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = load i32, ptr %i.ag, align 4, !tbaa !14 ; 2 uses
  %i.bm = sub nsw i32 %i.bl, %.078
  %i.bn = load i32, ptr %i.bc, align 8, !tbaa !29
  %i.bo = load i32, ptr %i.bd, align 8, !tbaa !34
  %i.bp = tail call i64 (...) @util_cpu_time() #6
  %i.bq = tail call ptr @util_print_time(i64 noundef %i.bp) #6
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.078, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.bn, i32 noundef %i.bo, ptr noundef %i.bq) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bs = load i32, ptr %i.bc, align 8, !tbaa !29
  %i.bt = sub nsw i32 %i.bs, %.06177
  %i.bu = icmp sgt i32 %i.bt, 1000
  br i1 %i.bu, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bv = tail call i32 (ptr, ...) @sm_row_dominance(ptr noundef nonnull %i.au) #6 ; 0 uses
  %i.bw = load i32, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %i.bx = load i32, ptr @debug, align 4, !tbaa !4
  %i.by = and i32 %i.bx, 16384
  %.not66 = icmp eq i32 %i.by, 0
  br i1 %.not66, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = load i32, ptr %i.bd, align 8, !tbaa !34
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bw, i32 noundef %i.bz) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi i32 [ %i.bw, %bb.f ], [ %i.bw, %bb.e ], [ %.06177, %bb.d ]
  %i.cb = add nuw nsw i32 %.078, 1
  %i.cc = load i32, ptr %2, align 8, !tbaa !15
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %.376, i64 %i.cd ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.ba
  br i1 %i.cf, label %bb.b, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.g, %._crit_edge75
  %i.cg = load ptr, ptr %i.at, align 8, !tbaa !28 ; 2 uses
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
define dso_local range(i32 0, 2) i32 @cube_is_covered(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @cofactor(ptr noundef %0, ptr noundef %1) #6
  %i.b = tail call i32 @tautology(ptr noundef %i.a)
  ret i32 %i.b
}

declare ptr @cofactor(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tautology(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !4
  %i.b = and i32 %i.a, 512
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @tautology.taut_level, align 4, !tbaa !4 ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @tautology.taut_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @taut_special_cases(ptr noundef %0) ; 2 uses
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @cube, align 8, !tbaa !24  ; 2 uses
  %i.h = icmp slt i32 %i.g, 33
  %i.i = add nsw i32 %i.g, -1
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 536870908
  %i.l = add nuw nsw i32 %i.k, 8
  %narrow = select i1 %i.h, i32 8, i32 %i.l
  %i.m = zext nneg i32 %narrow to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #7
  %1 = load i32, ptr @cube, align 8, !tbaa !24
  %i.o = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.n, i32 noundef %1) #6 ; 4 uses
  %i.p = load i32, ptr @cube, align 8, !tbaa !24  ; 2 uses
  %i.q = icmp slt i32 %i.p, 33
  %i.r = add nsw i32 %i.p, -1
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = add nuw nsw i32 %i.t, 8
  %narrow33 = select i1 %i.q, i32 8, i32 %i.u
  %i.v = zext nneg i32 %narrow33 to i64
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #7
  %2 = load i32, ptr @cube, align 8, !tbaa !24
  %i.x = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.w, i32 noundef %2) #6 ; 4 uses
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
  %i.ae = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
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
  %i.af = load i32, ptr @debug, align 4, !tbaa !4
  %i.ag = and i32 %i.af, 512
  %.not32 = icmp eq i32 %i.ag, 0
  br i1 %.not32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr @tautology.taut_level, align 4, !tbaa !4
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr @tautology.taut_level, align 4, !tbaa !4
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
  %.085 = phi ptr [ %i.h, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %.085, align 8, !tbaa !28  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader120, label %bb.c

.preheader120:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = ptrtoint ptr %0 to i64                   ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.d, i64 4
  %scevgep163 = getelementptr i8, ptr %i.d, i64 4
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.085, i64 8
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
  %min.iters.check187 = icmp samesign ult i32 %i.s, 7
  %i.v = ptrtoaddr ptr %i.q to i64
  %i.w = sub i64 %i.e, %i.v
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check187, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph186.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %bb.g
  %n.vec189 = and i64 %i.u, 2040                  ; 3 uses
  %i.x = sub nsw i64 %i.t, %n.vec189
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next194, %vector.body190 ] ; 2 uses
  %i.y = sub i64 %i.t, %index191                  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  %wide.load192 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %wide.load193 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -28
  store <4 x i32> %wide.load192, ptr %i.ad, align 4, !tbaa !4
  store <4 x i32> %wide.load193, ptr %i.ae, align 4, !tbaa !4
  %index.next194 = add nuw i64 %index191, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.af, label %middle.block195, label %vector.body190, !llvm.loop !36

middle.block195:                                  ; preds = %vector.body190
  %cmp.n196 = icmp eq i64 %i.u, %n.vec189
  br i1 %cmp.n196, label %.preheader119, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %bb.g, %middle.block195
  %indvars.iv.ph = phi i64 [ %i.t, %bb.g ], [ %i.x, %middle.block195 ] ; 4 uses
  %i.ag = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph186.prol.loopexit, label %scalar.ph186.prol

scalar.ph186.prol:                                ; preds = %scalar.ph186.preheader, %scalar.ph186.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph186.prol ], [ %indvars.iv.ph, %scalar.ph186.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph186.prol ], [ 0, %scalar.ph186.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.prol
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph186.prol.loopexit, label %scalar.ph186.prol, !llvm.loop !39

scalar.ph186.prol.loopexit:                       ; preds = %scalar.ph186.prol, %scalar.ph186.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph186.preheader ], [ %indvars.iv.next.prol, %scalar.ph186.prol ]
  %i.ak = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.ak, label %.preheader119, label %scalar.ph186

scalar.ph186:                                     ; preds = %scalar.ph186.prol.loopexit, %scalar.ph186
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph186 ], [ %indvars.iv.unr, %scalar.ph186.prol.loopexit ] ; 6 uses
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
end_hunk_0
begin_hunk_1_@ftautology:bb.a

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
  %i.at = phi i32 [ %i.l, %.lr.ph89.i ], [ %i.cz, %bb.s ]
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
  %i.bb = phi i32 [ %i.aw, %.lr.ph85.i ], [ %i.cf, %.loopexit.i ]
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
  %i.bj = icmp ne i32 %i.bh, 0
  %.neg = sext i1 %i.bj to i64
  %i.bk = add nuw nsw i64 %i.bi, 1
  %i.bl = add nsw i64 %i.bk, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.o
  %.not56 = icmp eq i32 %i.bh, 0
  %i.bm = select i1 %.not56, i64 0, i64 4         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bm
  %i.bn = shl nuw nsw i64 %i.bi, 2                ; 2 uses
  %scevgep49 = getelementptr i8, ptr %scevgep48, i64 %i.bn
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.bm
  %scevgep51 = getelementptr i8, ptr %i.bg, i64 4
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.bn
  %bound0 = icmp ult ptr %scevgep, %scevgep52
  %bound1 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, -8                      ; 3 uses
  %i.bo = sub nsw i64 %i.bi, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = sub i64 %i.bi, %index                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -12 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  %wide.load53 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -12
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -28
  %wide.load54 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !4, !alias.scope !71
  %wide.load55 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !4, !alias.scope !71
  %i.bw = or <4 x i32> %wide.load54, %wide.load
  %i.bx = or <4 x i32> %wide.load55, %wide.load53
  store <4 x i32> %i.bw, ptr %i.br, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  store <4 x i32> %i.bx, ptr %i.bs, align 4, !tbaa !4, !alias.scope !68, !noalias !71
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.o, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bi, %vector.memcheck ], [ %i.bi, %bb.o ], [ %i.bo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = or i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ce = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ce, label %scalar.ph, label %.loopexit.loopexit.i, !llvm.loop !74

.loopexit.loopexit.i:                             ; preds = %scalar.ph, %middle.block
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.n
  %i.cf = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.bb, %bb.n ] ; 2 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next97.i, %i.cg
  br i1 %i.ch, label %bb.n, label %.preheader.i

.lr.ph88.i:                                       ; preds = %.preheader.i, %bb.q
  %i.ci = phi ptr [ %i.cp, %bb.q ], [ %i.ba, %.preheader.i ] ; 2 uses
  %i.cj = phi ptr [ %i.co, %bb.q ], [ %i.j, %.preheader.i ] ; 2 uses
  %.05787.i = phi ptr [ %.1.i, %bb.q ], [ %i.i, %.preheader.i ] ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !28
  %i.cl = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.f, ptr noundef nonnull %i.ci, ptr noundef %i.ck) #6
  %i.cm = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.h, ptr noundef %i.cl) #6
  %.not71.i = icmp eq i32 %i.cm, 0
  br i1 %.not71.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph88.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05787.i, i64 8
  store ptr %i.ci, ptr %.05787.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph88.i
  %.1.i = phi ptr [ %i.cn, %bb.p ], [ %.05787.i, %.lr.ph88.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %.not69.i = icmp eq ptr %i.cp, null
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph88.i

._crit_edge.i:                                    ; preds = %bb.q, %.preheader.i
  %.057.lcssa.i = phi ptr [ %i.i, %.preheader.i ], [ %.1.i, %bb.q ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.lcssa.i, i64 8 ; 2 uses
  store ptr null, ptr %.057.lcssa.i, align 8, !tbaa !28
  store ptr %i.cq, ptr %i.o, align 8, !tbaa !28
  %i.cr = load i32, ptr @debug, align 4, !tbaa !4
  %i.cs = and i32 %i.cr, 512
  %.not70.i = icmp eq i32 %i.cs, 0
  br i1 %.not70.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !50
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.cu, %i.p
  %i.cw = ashr exact i64 %i.cv, 3
  %i.cx = add nsw i64 %i.cw, -3
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ct, i64 noundef %i.cx) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #6
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !50 ; 2 uses
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !52
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %._crit_edge90.i, label %bb.l

.loopexit82.sink.split.sink.split.i:              ; preds = %._crit_edge94.i, %bb.e
  %.sink.i = phi ptr [ %i.w, %bb.e ], [ %i.as, %._crit_edge94.i ]
  tail call void @free(ptr noundef nonnull %.sink.i) #6
  br label %.sink.split

bb.t:                                             ; preds = %bb.l
  %i.dc = load i32, ptr @cube, align 8, !tbaa !24 ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 33
  %i.de = add nsw i32 %i.dc, -1
  %i.df = lshr i32 %i.de, 3
  %i.dg = and i32 %i.df, 536870908
  %i.dh = add nuw nsw i32 %i.dg, 8
  %narrow = select i1 %i.dd, i32 8, i32 %i.dh
  %i.di = zext nneg i32 %narrow to i64
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.di) #7
  %2 = load i32, ptr @cube, align 8, !tbaa !24
  %i.dk = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dj, i32 noundef %2) #6 ; 4 uses
  %i.dl = load i32, ptr @cube, align 8, !tbaa !24 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 33
  %i.dn = add nsw i32 %i.dl, -1
  %i.do = lshr i32 %i.dn, 3
  %i.dp = and i32 %i.do, 536870908
  %i.dq = add nuw nsw i32 %i.dp, 8
  %narrow33 = select i1 %i.dm, i32 8, i32 %i.dq
  %i.dr = zext nneg i32 %narrow33 to i64
  %i.ds = tail call noalias ptr @malloc(i64 noundef %i.dr) #7
  %3 = load i32, ptr @cube, align 8, !tbaa !24
  %i.dt = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ds, i32 noundef %3) #6 ; 4 uses
  %i.du = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef %0, ptr noundef %i.dk, ptr noundef %i.dt, i32 noundef 512) #6 ; 2 uses
  %i.dv = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef %0, ptr noundef %i.dk, i32 noundef %i.du) #6
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
  %.not29 = icmp eq ptr %i.dk, null
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.dk) #6
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS10set_family", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !9, i64 32}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!12, !5, i64 12}
!15 = !{!12, !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS17sm_element_struct", !10, i64 0}
!18 = !{!19, !5, i64 4}
!19 = !{!"sm_element_struct", !5, i64 0, !5, i64 4, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !20, i64 40}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!22, !5, i64 4}
!22 = !{!"sm_row_struct", !5, i64 0, !5, i64 4, !5, i64 8, !17, i64 16, !17, i64 24, !23, i64 32, !23, i64 40, !20, i64 48}
!23 = !{!"p1 _ZTS13sm_row_struct", !10, i64 0}
!24 = !{!25, !5, i64 0}
!25 = !{!"cube_struct", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !26, i64 72, !26, i64 80, !13, i64 88, !13, i64 96, !5, i64 104, !5, i64 108, !13, i64 112, !5, i64 120, !5, i64 124}
!26 = !{!"p2 int", !27, i64 0}
!27 = !{!"any p2 pointer", !10, i64 0}
!28 = !{!13, !13, i64 0}
!29 = !{!30, !5, i64 48}
!30 = !{!"sm_matrix_struct", !31, i64 0, !5, i64 8, !32, i64 16, !5, i64 24, !23, i64 32, !23, i64 40, !5, i64 48, !33, i64 56, !33, i64 64, !5, i64 72, !20, i64 80}
!31 = !{!"p2 _ZTS13sm_row_struct", !27, i64 0}
!32 = !{!"p2 _ZTS13sm_col_struct", !27, i64 0}
!33 = !{!"p1 _ZTS13sm_col_struct", !10, i64 0}
!34 = !{!30, !5, i64 72}
!35 = !{!25, !26, i64 80}
!36 = distinct !{!36, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !37}
!42 = !{!43}
!43 = distinct !{!43, !44}
!44 = distinct !{!44, !"LVerDomain"}
!45 = !{!46}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !37, !38}
!48 = distinct !{!48, !37}
!49 = !{!25, !13, i64 88}
!50 = !{!51, !5, i64 36}
!51 = !{!"cdata_struct", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !5, i64 32, !5, i64 36, !5, i64 40}
!52 = !{!51, !5, i64 32}
!53 = !{!25, !13, i64 96}
!54 = !{!25, !5, i64 4}
!55 = !{!51, !13, i64 24}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !37, !38}
!62 = distinct !{!62, !37}
!63 = !{!51, !13, i64 8}
!64 = !{!51, !5, i64 40}
!65 = !{!26, !26, i64 0}
!66 = !{!30, !23, i64 40}
!67 = !{!22, !5, i64 0}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !37, !38}
!74 = distinct !{!74, !37}
end_hunk_1
