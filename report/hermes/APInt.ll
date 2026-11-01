Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APInt?download=true
inline.NumInlined: 1479
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4llvh10hash_valueERKNS_5APIntE:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.y = zext i32 %i.b to i64
  %i.z = add nuw nsw i64 %i.y, 63
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = tail call i64 @_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_(ptr noundef %i.x, ptr noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit
  %.sroa.0.0 = phi i64 [ %i.w, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit ], [ %i.ac, %bb.e ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt7isSplatEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4llvh5APInt4rotlEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !22
  %i.e = load i64, ptr %2, align 8                ; 2 uses
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.e to ptr
  br label %_ZNK4llvh5APInteqERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 3
  %.idx.i.i = and i64 %i.j, 1073741816
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr %i.l, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZNK4llvh5APInteqERKS0_.exit

_ZNK4llvh5APInteqERKS0_.exit:                     ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i = phi i1 [ %i.f, %bb.b ], [ %.not9.i.i.i.i.i.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = icmp ult i32 %i.o, 65
  %i.q = icmp eq ptr %i.m, null
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh5APInteqERKS0_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotlEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 7 uses
  %i.c = urem i32 %2, %i.b                        ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !21
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !22
  store i64 %i.g, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741816                 ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !22
  %i.m = load ptr, ptr %1, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %i.k, i1 false)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.n, align 8, !tbaa !21, !alias.scope !115
  %i.o = icmp ult i32 %i.b, 65
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %1, align 8, !tbaa !22, !noalias !115
  %i.q = inttoptr i64 %i.p to ptr
  br label %_ZNK4llvh5APInt3shlEj.exit

bb.g:                                             ; preds = %bb.e
  %i.r = zext i32 %i.b to i64
  %i.s = add nuw nsw i64 %i.r, 63
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741816                 ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #22, !noalias !115 ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !22, !noalias !115
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.w, i64 %i.u, i1 false), !noalias !115
  br label %_ZNK4llvh5APInt3shlEj.exit

_ZNK4llvh5APInt3shlEj.exit:                       ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.q, %bb.f ], [ %i.v, %bb.g ]
  store ptr %.sink, ptr %3, align 8, !tbaa !22, !alias.scope !115
  %i.x = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntlSEj(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.c) ; 0 uses
  %i.y = load i32, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.z = sub i32 %i.y, %i.c                       ; 3 uses
  %i.aa = icmp ult i32 %i.y, 65
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvh5APInt3shlEj.exit
  %i.ab = load i64, ptr %1, align 8, !tbaa !22, !noalias !116
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = lshr i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %3, align 8, !noalias !117 ; 2 uses
  %i.af = or i64 %i.ad, %i.ae
  %i.ag = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh5APIntD2Ev.exit

bb.i:                                             ; preds = %_ZNK4llvh5APInt3shlEj.exit
  %i.ah = zext i32 %i.y to i64
  %i.ai = add nuw nsw i64 %i.ah, 63               ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741816               ; 2 uses
  %i.al = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #22, !noalias !116 ; 26 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !22, !noalias !116
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.an, i64 %i.ak, i1 false), !noalias !116
  %i.ao = lshr i64 %i.ai, 6                       ; 7 uses
  %i.ap = trunc nuw nsw i64 %i.ao to i32          ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.y, %i.c
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = lshr i32 %i.z, 6                        ; 2 uses
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.aq) ; 9 uses
  %i.ar = and i32 %i.z, 63                        ; 3 uses
  %i.as = sub nsw i32 %i.ap, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.at = icmp eq i32 %i.ar, 0
  br i1 %i.at, label %bb.k, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.j
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.aq, %i.ap
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.au = zext nneg i32 %i.ar to i64              ; 4 uses
  %i.av = sub nuw nsw i32 64, %i.ar
  %i.aw = zext nneg i32 %i.av to i64              ; 3 uses
  %i.ax = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !24, !noalias !116
  %i.ba = lshr i64 %i.az, %i.au                   ; 3 uses
  store i64 %i.ba, ptr %i.al, align 8, !tbaa !24, !noalias !116
  %.not32.i1.i.i.i = icmp eq i32 %i.as, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.bb = zext i32 %i.as to i64
  %i.bc = add nsw i64 %i.bb, -1                   ; 3 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bd = icmp eq i32 %i.as, 2
  br i1 %i.bd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bc, -2
  br label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.be
  %i.bg = shl nuw nsw i32 %i.as, 3
  %i.bh = zext nneg i32 %i.bg to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.bf, i64 %i.bh, i1 false), !noalias !116
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.bi = phi ptr [ %i.al, %.lr.ph.i.i.i.preheader.new ], [ %i.ck, %.lr.ph.i.i.i ]
  %i.bj = phi i64 [ %i.ba, %.lr.ph.i.i.i.preheader.new ], [ %i.cj, %.lr.ph.i.i.i ]
  %i.bk = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.cf, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.bl = add i32 %i.bk, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24, !noalias !116
  %i.bp = shl i64 %i.bo, %i.aw
  %i.bq = or i64 %i.bp, %i.bj
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !24, !noalias !116
  %i.br = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.bs = add i32 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !24, !noalias !116
  %i.bw = lshr i64 %i.bv, %i.au                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !24, !noalias !116
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.by = add i32 %i.bs, 1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !24, !noalias !116
  %i.cc = shl i64 %i.cb, %i.aw
  %i.cd = or i64 %i.cc, %i.bw
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !24, !noalias !116
  %i.ce = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.cf = add i32 %.sroa.speculated.i.i.i.i, %i.ce ; 3 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24, !noalias !116
  %i.cj = lshr i64 %i.ci, %i.au                   ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !24, !noalias !116
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.al, %.lr.ph.i.i.i.preheader ], [ %i.ck, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init21 = phi i64 [ %i.ba, %.lr.ph.i.i.i.preheader ], [ %i.cj, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init23 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cf, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %i.bc to i1
  call void @llvm.assume(i1 %lcmp.mod24)
  %i.cl = add i32 %.epil.init23, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24, !noalias !116
  %i.cp = shl i64 %i.co, %i.aw
  %i.cq = or i64 %i.cp, %.epil.init21
  store i64 %i.cq, ptr %.epil.init, align 8, !tbaa !24, !noalias !116
  %i.cr = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.cs = add i32 %.sroa.speculated.i.i.i.i, %i.cr
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !24, !noalias !116
  %i.cw = lshr i64 %i.cv, %i.au
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !24, !noalias !116
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.k, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.cy = zext nneg i32 %i.as to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cy
  %i.da = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.db = zext nneg i32 %i.da to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cz, i8 0, i64 %i.db, i1 false), !noalias !116
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i.i.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.dc = load ptr, ptr %3, align 8, !tbaa !22, !noalias !117 ; 11 uses
  %min.iters.check = icmp ult i32 %i.y, 449
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i4.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.l
  %i.dd = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  %i.de = getelementptr i8, ptr %i.al, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.dc, i64 %i.dd
  %bound0 = icmp ult ptr %i.al, %i.df
  %bound1 = icmp ult ptr %i.dc, %i.de
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !24, !alias.scope !118, !noalias !117
  %wide.load17 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !24, !alias.scope !118, !noalias !117
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load18 = load <2 x i64>, ptr %i.di, align 8, !tbaa !24, !alias.scope !119, !noalias !120
  %wide.load19 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !24, !alias.scope !119, !noalias !120
  %i.dk = or <2 x i64> %wide.load18, %wide.load
  %i.dl = or <2 x i64> %wide.load19, %wide.load17
  store <2 x i64> %i.dk, ptr %i.di, align 8, !tbaa !24, !alias.scope !119, !noalias !120
  store <2 x i64> %i.dl, ptr %i.dj, align 8, !tbaa !24, !alias.scope !119, !noalias !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4.preheader

.lr.ph.i.i.i.i4.preheader:                        ; preds = %vector.memcheck, %bb.l, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.l ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter25 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %.lr.ph.i.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i.i4.prol

.lr.ph.i.i.i.i4.prol:                             ; preds = %.lr.ph.i.i.i.i4.preheader, %.lr.ph.i.i.i.i4.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i5.prol, %.lr.ph.i.i.i.i4.prol ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i4.prol ], [ 0, %.lr.ph.i.i.i.i4.preheader ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i.i.prol
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !24, !noalias !117
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i.i.prol ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !24, !noalias !117
  %i.dr = or i64 %i.dq, %i.do
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !24, !noalias !117
  %indvars.iv.next.i.i.i.i5.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter25
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i.i4.prol, !llvm.loop !113

.lr.ph.i.i.i.i4.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i4.prol, %.lr.ph.i.i.i.i4.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ], [ %indvars.iv.next.i.i.i.i5.prol, %.lr.ph.i.i.i.i4.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i.i.i.i.ph, %i.ao
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %.lr.ph.i.i.i.i4.prol.loopexit, %.lr.ph.i.i.i.i4
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i5.3, %.lr.ph.i.i.i.i4 ], [ %indvars.iv.i.i.i.i.unr, %.lr.ph.i.i.i.i4.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !24, !noalias !117
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !24, !noalias !117
  %i.dy = or i64 %i.dx, %i.dv
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !24, !noalias !117
  %indvars.iv.next.i.i.i.i5 = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i.i.i5
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !24, !noalias !117
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.i5 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !24, !noalias !117
  %i.ed = or i64 %i.ec, %i.ea
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !24, !noalias !117
  %indvars.iv.next.i.i.i.i5.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i.i.i5.1
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !24, !noalias !117
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.i5.1 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !24, !noalias !117
  %i.ei = or i64 %i.eh, %i.ef
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !24, !noalias !117
  %indvars.iv.next.i.i.i.i5.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i.i.i5.2
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !24, !noalias !117
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.i5.2 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !24, !noalias !117
  %i.en = or i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.el, align 8, !tbaa !24, !noalias !117
  %indvars.iv.next.i.i.i.i5.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i5.3, %i.ao
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4, !llvm.loop !114

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %.lr.ph.i.i.i.i4.prol.loopexit, %.lr.ph.i.i.i.i4, %middle.block, %bb.h
  %i.eo = phi ptr [ %i.ag, %bb.h ], [ %i.dc, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i4 ], [ %i.dc, %.lr.ph.i.i.i.i4.prol.loopexit ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.af, %bb.h ], [ %i.am, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i4 ], [ %i.am, %.lr.ph.i.i.i.i4.prol.loopexit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.y, ptr %i.ep, align 8, !tbaa !21, !alias.scope !117
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !117
  %i.eq = load i32, ptr %i.n, align 8, !tbaa !21
  %i.er = icmp ult i32 %i.eq, 65
  %i.es = icmp eq ptr %i.eo, null
  %or.cond = select i1 %i.er, i1 true, i1 %i.es
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit6, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #23
  br label %_ZN4llvh5APIntD2Ev.exit6

_ZN4llvh5APIntD2Ev.exit6:                         ; preds = %_ZN4llvh5APIntD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.d, %bb.c, %_ZN4llvh5APIntD2Ev.exit6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt9getHiBitsEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = sub i32 %i.b, %2                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.d, align 8, !tbaa !21, !alias.scope !123
  %i.e = icmp ult i32 %i.b, 65
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !22, !alias.scope !123
  br label %_ZNK4llvh5APInt4lshrEj.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !22, !noalias !123
  %i.h = zext nneg i32 %i.c to i64
  %i.i = lshr i64 %i.g, %i.h
  store i64 %i.i, ptr %0, align 8, !tbaa !22, !alias.scope !123
  br label %_ZNK4llvh5APInt4lshrEj.exit

bb.e:                                             ; preds = %bb.a
  %i.j = zext i32 %i.b to i64
  %i.k = add nuw nsw i64 %i.j, 63                 ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741816                 ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22, !noalias !123 ; 18 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !22, !alias.scope !123
  %i.o = load ptr, ptr %1, align 8, !tbaa !22, !noalias !123
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.o, i64 %i.m, i1 false), !noalias !123
  %i.p = lshr i64 %i.k, 6
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, %2
  br i1 %.not.i.i.i.i, label %_ZNK4llvh5APInt4lshrEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i32 %i.c, 6                         ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 9 uses
  %i.s = and i32 %i.c, 63                         ; 3 uses
  %i.t = sub nsw i32 %i.q, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %bb.g, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.r, %i.q
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.v = zext nneg i32 %i.s to i64                ; 4 uses
  %i.w = sub nuw nsw i32 64, %i.s
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24, !noalias !123
  %i.ab = lshr i64 %i.aa, %i.v                    ; 3 uses
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !24, !noalias !123
  %.not32.i1.i.i.i = icmp eq i32 %i.t, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ac = zext i32 %i.t to i64
  %i.ad = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ae = icmp eq i32 %i.t, 2
  br i1 %i.ae, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ad, -2
  br label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.af
  %i.ah = shl nuw nsw i32 %i.t, 3
  %i.ai = zext nneg i32 %i.ah to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.ag, i64 %i.ai, i1 false), !noalias !123
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.aj = phi ptr [ %i.n, %.lr.ph.i.i.i.preheader.new ], [ %i.bl, %.lr.ph.i.i.i ]
  %i.ak = phi i64 [ %i.ab, %.lr.ph.i.i.i.preheader.new ], [ %i.bk, %.lr.ph.i.i.i ]
  %i.al = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.am = add i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24, !noalias !123
  %i.aq = shl i64 %i.ap, %i.x
  %i.ar = or i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !24, !noalias !123
  %i.as = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.at = add i32 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !24, !noalias !123
  %i.ax = lshr i64 %i.aw, %i.v                    ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !24, !noalias !123
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.az = add i32 %i.at, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !24, !noalias !123
  %i.bd = shl i64 %i.bc, %i.x
  %i.be = or i64 %i.bd, %i.ax
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !24, !noalias !123
  %i.bf = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.bg = add i32 %.sroa.speculated.i.i.i.i, %i.bf ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !24, !noalias !123
  %i.bk = lshr i64 %i.bj, %i.v                    ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !24, !noalias !123
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.n, %.lr.ph.i.i.i.preheader ], [ %i.bl, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init3 = phi i64 [ %i.ab, %.lr.ph.i.i.i.preheader ], [ %i.bk, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init5 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bg, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.bm = add i32 %.epil.init5, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !123
  %i.bq = shl i64 %i.bp, %i.x
  %i.br = or i64 %i.bq, %.epil.init3
  store i64 %i.br, ptr %.epil.init, align 8, !tbaa !24, !noalias !123
  %i.bs = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.bt = add i32 %.sroa.speculated.i.i.i.i, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24, !noalias !123
  %i.bx = lshr i64 %i.bw, %i.v
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !24, !noalias !123
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.bz = zext nneg i32 %i.t to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bz
  %i.cb = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cc = zext nneg i32 %i.cb to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ca, i8 0, i64 %i.cc, i1 false), !noalias !123
  br label %_ZNK4llvh5APInt4lshrEj.exit

_ZNK4llvh5APInt4lshrEj.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %.loopexit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt9getLoBitsEj(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !21, !alias.scope !132
  %i.d = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.d, label %_ZN4llvh5APIntC2Ejmb.exit.i, label %.loopexit.i._crit_edge.i.i

.loopexit.i._crit_edge.i.i:                       ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63                 ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 1073741816                 ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #22, !noalias !132 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false), !noalias !132
  store i64 0, ptr %i.i, align 8, !tbaa !24, !noalias !132
  %i.j = sub i32 0, %i.b
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %.pre7.i.i = lshr i64 %i.f, 6
  %i.n = getelementptr [8 x i8], ptr %i.i, i64 %.pre7.i.i
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24, !noalias !132
  %i.q = and i64 %i.p, %i.m
  store i64 %i.q, ptr %i.o, align 8, !tbaa !24, !noalias !132
  br label %_ZN4llvh5APIntC2Ejmb.exit.i

_ZN4llvh5APIntC2Ejmb.exit.i:                      ; preds = %.loopexit.i._crit_edge.i.i, %bb.a
  %.sink.i.i.i = phi ptr [ %i.i, %.loopexit.i._crit_edge.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.r = phi ptr [ %i.i, %.loopexit.i._crit_edge.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !22, !alias.scope !132
  %i.s = icmp eq i32 %2, 0
  br i1 %i.s, label %_ZN4llvh5APInt13getLowBitsSetEjj.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i
  %i.t = icmp ult i32 %2, 65
  br i1 %i.t, label %_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i, label %bb.c

_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i: ; preds = %bb.b
  %i.u = sub nuw nsw i32 64, %2
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i64 -1, %i.v
  %i.x = load i64, ptr %.sink.i.i.i, align 8, !tbaa !22
  %i.y = or i64 %i.x, %i.w
  store i64 %i.y, ptr %.sink.i.i.i, align 8, !tbaa !22
  br label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i32 %2, 6                           ; 2 uses
  %i.aa = and i32 %2, 63                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nuw nsw i32 64, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 -1, %i.ac
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !24, !noalias !132
  %i.ah = or i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !24, !noalias !132
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 -1, ptr %i.r, align 8, !tbaa !24, !noalias !132
  %i.ai = icmp ugt i32 %2, 127
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %scevgep.i = getelementptr i8, ptr %i.r, i64 8
  %i.aj = shl nuw nsw i32 %i.z, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = add nsw i64 %i.ak, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 -1, i64 %i.al, i1 false), !tbaa !24, !noalias !132
  br label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

_ZN4llvh5APInt13getLowBitsSetEjj.exit:            ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i, %_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i, %bb.e, %.lr.ph.preheader.i.i.i.i
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh5APInt13getLowBitsSetEjj.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !22
  %i.an = load i64, ptr %0, align 8, !tbaa !22
  %i.ao = and i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntaNERKS0_.exit

bb.g:                                             ; preds = %_ZN4llvh5APInt13getLowBitsSetEjj.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !22    ; 8 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !22    ; 8 uses
  %i.ar = zext i32 %i.b to i64
  %i.as = add nuw nsw i64 %i.ar, 63
  %i.at = lshr i64 %i.as, 6                       ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 449
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %i.au = shl nuw nsw i64 %i.at, 3                ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.au
  %bound0 = icmp ult ptr %i.ap, %i.aw
  %bound1 = icmp ult ptr %i.aq, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !24, !alias.scope !133
  %wide.load5 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !24, !alias.scope !133
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %wide.load6 = load <2 x i64>, ptr %i.az, align 8, !tbaa !24, !alias.scope !134, !noalias !133
  %wide.load7 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !24, !alias.scope !134, !noalias !133
  %i.bb = and <2 x i64> %wide.load6, %wide.load
  %i.bc = and <2 x i64> %wide.load7, %wide.load5
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !24, !alias.scope !134, !noalias !133
  store <2 x i64> %i.bc, ptr %i.ba, align 8, !tbaa !24, !alias.scope !134, !noalias !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntaNERKS0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.prol ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.bi = and i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !24
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !130

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.bj = sub nsw i64 %indvars.iv.i.i.i.ph, %i.at
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZN4llvh5APIntaNERKS0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bp = and i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZNK4llvh5APInt8byteSwapEv:bb.a
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.f:                                             ; preds = %bb.a
  %i.al = add i32 %i.b, 63                        ; 3 uses
  %i.am = and i32 %i.al, -64                      ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.am, ptr %i.an, align 8, !tbaa !21
  %i.ao = icmp ult i32 %i.am, 65                  ; 2 uses
  br i1 %i.ao, label %_ZN4llvh5APIntC2Ejmb.exit24, label %.loopexit.i._crit_edge.i19

.loopexit.i._crit_edge.i19:                       ; preds = %bb.f
  %i.ap = lshr i32 %i.al, 3
  %i.aq = and i32 %i.ap, 536870904
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false)
  store i64 0, ptr %i.as, align 8, !tbaa !24
  %.pre = load i32, ptr %i.a, align 8, !tbaa !21
  br label %_ZN4llvh5APIntC2Ejmb.exit24

_ZN4llvh5APIntC2Ejmb.exit24:                      ; preds = %bb.f, %.loopexit.i._crit_edge.i19
  %i.at = phi i32 [ %.pre, %.loopexit.i._crit_edge.i19 ], [ %i.b, %bb.f ] ; 6 uses
  %i.au = phi ptr [ %i.as, %.loopexit.i._crit_edge.i19 ], [ null, %bb.f ] ; 24 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !22
  %i.av = zext i32 %i.at to i64
  %i.aw = add nuw nsw i64 %i.av, 63               ; 2 uses
  %i.ax = lshr i64 %i.aw, 6                       ; 11 uses
  %.not25 = icmp eq i64 %i.ax, 0
  %i.ay = ptrtoint ptr %i.au to i64
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit24
  %.pre28 = load ptr, ptr %1, align 8, !tbaa !22  ; 6 uses
  %min.iters.check = icmp ult i32 %i.at, 833
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.az = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %i.ba = getelementptr i8, ptr %i.au, i64 %i.az
  %i.bb = shl nuw nsw i64 %i.ax, 3
  %i.bc = add nuw nsw i64 %i.bb, 34359738360
  %i.bd = and i64 %i.bc, 34359738360
  %i.be = add nuw nsw i64 %i.bd, 8                ; 2 uses
  %i.bf = sub nsw i64 %i.be, %i.az
  %i.bg = getelementptr i8, ptr %.pre28, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.pre28, i64 %i.be
  %bound0 = icmp ult ptr %i.au, %i.bh
  %bound1 = icmp ult ptr %i.bg, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = xor i64 %index, -1
  %i.bj = add nsw i64 %i.ax, %i.bi
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bm, align 8, !tbaa !24, !alias.scope !170
  %wide.load35 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !24, !alias.scope !170
  %i.bo = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.bp = shufflevector <2 x i64> %i.bo, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load35)
  %i.br = shufflevector <2 x i64> %i.bq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x i64> %i.bp, ptr %i.bs, align 8, !tbaa !24, !alias.scope !171, !noalias !170
  store <2 x i64> %i.br, ptr %i.bt, align 8, !tbaa !24, !alias.scope !171, !noalias !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %i.bv = and i64 %i.aw, 64
  %lcmp.mod.not = icmp eq i64 %i.bv, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = xor i64 %indvars.iv.ph, -1
  %i.bx = add nsw i64 %i.ax, %i.bw
  %i.by = and i64 %i.bx, 4294967294
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !24
  %i.cb = tail call noundef i64 @llvm.bswap.i64(i64 %i.ca)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.ph
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !24
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cd = icmp eq i64 %i.ax, %.neg
  br i1 %i.cd, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvh5APIntC2Ejmb.exit24
  %.not15 = icmp eq i32 %i.am, %i.at
  br i1 %.not15, label %_ZN4llvh5APIntC2Ejmb.exit, label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ce = xor i64 %indvars.iv, -1
  %i.cf = add nsw i64 %i.ax, %i.ce
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24
  %i.cj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ci)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !24
  %reass.sub = sub i64 %i.ax, %indvars.iv
  %i.cl = add i64 %reass.sub, 4294967294
  %i.cm = and i64 %i.cl, 4294967295
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24
  %i.cp = tail call noundef i64 @llvm.bswap.i64(i64 %i.co)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ax
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !169

bb.g:                                             ; preds = %._crit_edge
  %i.cs = sub i32 %i.am, %i.at                    ; 3 uses
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ct = icmp eq i32 %i.at, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.j:                                             ; preds = %bb.h
  %i.cu = zext nneg i32 %i.cs to i64
  %i.cv = lshr i64 %i.ay, %i.cu
  store i64 %i.cv, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.k:                                             ; preds = %bb.g
  %i.cw = lshr i32 %i.al, 6                       ; 3 uses
  %i.cx = lshr i32 %i.cs, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.cx) ; 9 uses
  %i.cy = and i32 %i.cs, 63                       ; 3 uses
  %i.cz = sub nsw i32 %i.cw, %.sroa.speculated.i.i.i ; 5 uses
  %i.da = icmp eq i32 %i.cy, 0
  br i1 %i.da, label %bb.l, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.cx, %i.cw
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.db = zext nneg i32 %i.cy to i64              ; 4 uses
  %i.dc = sub nuw nsw i32 64, %i.cy
  %i.dd = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.de = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !24
  %i.dh = lshr i64 %i.dg, %i.db                   ; 3 uses
  store i64 %i.dh, ptr %i.au, align 8, !tbaa !24
  %.not32.i1.i.i = icmp eq i32 %i.cz, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.di = zext i32 %i.cz to i64
  %i.dj = add nsw i64 %i.di, -1                   ; 3 uses
  %xtraiter37 = and i64 %i.dj, 1
  %i.dk = icmp eq i32 %i.cz, 2
  br i1 %i.dk, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.dj, -2
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.k
  %i.dl = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dl
  %i.dn = shl nuw nsw i32 %i.cz, 3
  %i.do = zext nneg i32 %i.dn to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.dm, i64 %i.do, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %i.dp = phi ptr [ %i.au, %.lr.ph.i.i.preheader.new ], [ %i.er, %.lr.ph.i.i ]
  %i.dq = phi i64 [ %i.dh, %.lr.ph.i.i.preheader.new ], [ %i.eq, %.lr.ph.i.i ]
  %i.dr = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.em, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ds = add i32 %i.dr, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !24
  %i.dw = shl i64 %i.dv, %i.dd
  %i.dx = or i64 %i.dw, %i.dq
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !24
  %i.dy = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.dz = add i32 %.sroa.speculated.i.i.i, %i.dy  ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !24
  %i.ed = lshr i64 %i.ec, %i.db                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.ef = add i32 %i.dz, 1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !24
  %i.ej = shl i64 %i.ei, %i.dd
  %i.ek = or i64 %i.ej, %i.ed
  store i64 %i.ek, ptr %i.ee, align 8, !tbaa !24
  %i.el = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.em = add i32 %.sroa.speculated.i.i.i, %i.el  ; 3 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !24
  %i.eq = lshr i64 %i.ep, %i.db                   ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !24
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod42.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod42.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.au, %.lr.ph.i.i.preheader ], [ %i.er, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init39 = phi i64 [ %i.dh, %.lr.ph.i.i.preheader ], [ %i.eq, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init41 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader ], [ %i.em, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.dj to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.es = add i32 %.epil.init41, 1
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24
  %i.ew = shl i64 %i.ev, %i.dd
  %i.ex = or i64 %i.ew, %.epil.init39
  store i64 %i.ex, ptr %.epil.init, align 8, !tbaa !24
  %i.ey = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.ez = add i32 %.sroa.speculated.i.i.i, %i.ey
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !24
  %i.fd = lshr i64 %i.fc, %i.db
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !24
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.l, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.ff = zext nneg i32 %i.cz to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ff
  %i.fh = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.fi = zext nneg i32 %i.fh to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fi, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.i, %bb.j, %.loopexit.i.i.i
  store i32 %i.at, ptr %i.an, align 8, !tbaa !21
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %.loopexit.i._crit_edge.i, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %._crit_edge, %_ZN4llvh5APInt11lshrInPlaceEj.exit, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt11reverseBitsEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::APInt") align 8 initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 31 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  switch i32 %i.e, label %bb.f [
    i32 6, label %bb.b
    i32 5, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.f = load i64, ptr %1, align 8, !tbaa !22     ; 8 uses
  %.sroa.410.0.extract.shift.i = lshr i64 %i.f, 8
  %.sroa.511.0.extract.shift.i = lshr i64 %i.f, 16
  %.sroa.612.0.extract.shift.i = lshr i64 %i.f, 24
  %.sroa.713.0.extract.shift.i = lshr i64 %i.f, 32
  %.sroa.814.0.extract.shift.i = lshr i64 %i.f, 40
  %.sroa.915.0.extract.shift.i = lshr i64 %i.f, 48
  %.sroa.1016.0.extract.shift.i = lshr i64 %i.f, 56
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %i.j = and i64 %.sroa.410.0.extract.shift.i, 255
  %i.k = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22
  %i.m = and i64 %.sroa.511.0.extract.shift.i, 255
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22
  %i.p = and i64 %.sroa.612.0.extract.shift.i, 255
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !22
  %i.s = and i64 %.sroa.713.0.extract.shift.i, 255
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %i.v = and i64 %.sroa.814.0.extract.shift.i, 255
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %i.y = and i64 %.sroa.915.0.extract.shift.i, 255
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.1016.0.extract.shift.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  %.sroa.10.0.insert.ext.i = zext i8 %i.i to i64
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.l to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.8.0.insert.ext.i = zext i8 %i.o to i64
  %.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i, 40
  %.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.8.0.insert.shift.i
  %.sroa.7.0.insert.ext.i = zext i8 %i.r to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.8.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.6.0.insert.ext.i = zext i8 %i.u to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %.sroa.5.0.insert.ext.i = zext i8 %i.x to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.aa to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8
  %.sroa.4.0.insert.mask.i = or disjoint i64 %.sroa.6.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %i.ac to i64
  %.sroa.0.0.insert.mask.i = or i64 %.sroa.4.0.insert.mask.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ad, align 8, !tbaa !21
  %i.ae = icmp ult i32 %i.b, 65
  br i1 %i.ae, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %.loopexit.i._crit_edge.i

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.b
  %i.af = sub nsw i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = and i64 %.sroa.0.0.insert.insert.i, %i.ai
  store i64 %i.aj, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i:                         ; preds = %bb.b
  %i.ak = zext i32 %i.b to i64
  %i.al = add nuw nsw i64 %i.ak, 63               ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741816               ; 2 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.an, i1 false)
  store ptr %i.ao, ptr %0, align 8, !tbaa !22
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8, !tbaa !24
  %i.ap = sub i32 0, %i.b
  %i.aq = and i32 %i.ap, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = lshr i64 -1, %i.ar
  %.pre7.i = lshr i64 %i.al, 6
  %i.at = getelementptr [8 x i8], ptr %i.ao, i64 %.pre7.i
  %i.au = getelementptr i8, ptr %i.at, i64 -8     ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = and i64 %i.av, %i.as
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %.split
  %i.ax = load i64, ptr %1, align 8, !tbaa !22    ; 4 uses
  %.sroa.410.0.extract.shift.i3 = lshr i64 %i.ax, 8
  %.sroa.511.0.extract.shift.i4 = lshr i64 %i.ax, 16
  %.sroa.612.0.extract.shift.i5 = lshr i64 %i.ax, 24
  %.sroa.612.0.extract.trunc.i = and i64 %.sroa.612.0.extract.shift.i5, 255
  %i.ay = and i64 %i.ax, 255
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = and i64 %.sroa.410.0.extract.shift.i3, 255
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !22
  %i.be = and i64 %.sroa.511.0.extract.shift.i4, 255
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.612.0.extract.trunc.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !22
  %.sroa.6.0.insert.ext.i6 = zext i8 %i.ba to i64
  %.sroa.6.0.insert.shift.i7 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i6, 24
  %.sroa.5.0.insert.ext.i8 = zext i8 %i.bd to i64
  %.sroa.5.0.insert.shift.i9 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i8, 16
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i9, %.sroa.6.0.insert.shift.i7
  %.sroa.4.0.insert.ext.i10 = zext i8 %i.bg to i64
  %.sroa.4.0.insert.shift.i11 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i10, 8
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i11
  %.sroa.0.0.insert.ext.i12 = zext i8 %i.bi to i64
  %.sroa.0.0.insert.insert.i13 = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bj, align 8, !tbaa !21
  %i.bk = icmp ult i32 %i.b, 65
  br i1 %i.bk, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i19, label %.loopexit.i._crit_edge.i15

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i19:       ; preds = %bb.c
  %i.bl = sub nsw i32 0, %i.b
  %i.bm = and i32 %i.bl, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn
  %i.bp = and i64 %.sroa.0.0.insert.insert.i13, %i.bo
  store i64 %i.bp, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i15:                       ; preds = %bb.c
  %i.bq = zext i32 %i.b to i64
  %i.br = add nuw nsw i64 %i.bq, 63               ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741816               ; 2 uses
  %i.bu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bu, i8 0, i64 %i.bt, i1 false)
  store ptr %i.bu, ptr %0, align 8, !tbaa !22
  store i64 %.sroa.0.0.insert.insert.i13, ptr %i.bu, align 8, !tbaa !24
  %i.bv = sub i32 0, %i.b
  %i.bw = and i32 %i.bv, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 -1, %i.bx
  %.pre7.i18 = lshr i64 %i.br, 6
  %i.bz = getelementptr [8 x i8], ptr %i.bu, i64 %.pre7.i18
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8     ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !24
  %i.cc = and i64 %i.cb, %i.by
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit
end_hunk_1
begin_hunk_2_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
.split109:                                        ; preds = %bb.f
  %i.ar = icmp eq i64 %i.am, 0
  br i1 %i.ar, label %bb.i, label %bb.j

.lr.ph.i.i17:                                     ; preds = %bb.f
  %i.as = zext i32 %i.ap to i64
  %i.at = add nuw nsw i64 %i.as, 63
  %i.au = lshr i64 %i.at, 6                       ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = shl i32 %i.av, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i17
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i20, %bb.h ], [ %i.au, %.lr.ph.i.i17 ] ; 2 uses
  %.019.i.i19 = phi i32 [ %i.bd, %bb.h ], [ 0, %.lr.ph.i.i17 ] ; 2 uses
  %indvars.iv.next.i20 = add nsw i64 %indvars.iv.i18, -1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i20
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.h, label %.thread.i.i21

.thread.i.i21:                                    ; preds = %bb.g
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %.019.i.i19, %i.bb
  br label %_ZNK4llvh5APIntntEv.exit28

bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %.019.i.i19, 64
  %i.be = icmp samesign ugt i64 %indvars.iv.i18, 1
  br i1 %i.be, label %bb.g, label %_ZNK4llvh5APIntntEv.exit28, !llvm.loop !8

_ZNK4llvh5APIntntEv.exit28:                       ; preds = %bb.h, %.thread.i.i21
  %.2.i.i23 = phi i32 [ %i.bc, %.thread.i.i21 ], [ %i.aw, %bb.h ]
  %i.bf = and i32 %i.ap, 63
  %.not.i.i24 = icmp eq i32 %i.bf, 0
  %.neg.i.i25 = or i32 %i.ap, -64
  %.neg15.i.i26 = select i1 %.not.i.i24, i32 0, i32 %.neg.i.i25
  %i.bg = add i32 %.2.i.i23, %.neg15.i.i26
  %i.bh = icmp eq i32 %i.bg, %i.ap
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split109, %_ZNK4llvh5APIntntEv.exit28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bi, align 8, !tbaa !21
  store i64 %i.ak, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !21
  br label %bb.bb

bb.j:                                             ; preds = %.split109, %_ZNK4llvh5APIntntEv.exit28
  br i1 %i.c, label %bb.k, label %.lr.ph.i.i29

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ak, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit

.lr.ph.i.i29:                                     ; preds = %bb.j
  %i.bl = zext i32 %i.b to i64
  %i.bm = add nuw nsw i64 %i.bl, 63
  %i.bn = lshr i64 %i.bm, 6                       ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i29
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i29 ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %.01014.i.i = phi i32 [ 0, %.lr.ph.i.i29 ], [ %i.bt, %bb.m ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !24 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = add i32 %.01014.i.i, 64
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bn
  br i1 %exitcond.not.i.i, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit, label %bb.l, !llvm.loop !10

bb.n:                                             ; preds = %bb.l
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.br, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = or disjoint i32 %.01014.i.i, %i.bv
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit

_ZNK4llvh5APInt18countTrailingZerosEv.exit:       ; preds = %bb.m, %bb.k, %bb.n
  %.1.i.sink.i = phi i32 [ %i.bk, %bb.k ], [ %i.bw, %bb.n ], [ %i.bp, %bb.m ]
  %.sroa.speculated.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.b, i32 %.1.i.sink.i) ; 8 uses
  br i1 %i.aq, label %bb.o, label %.lr.ph.i.i30

bb.o:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.am, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37

.lr.ph.i.i30:                                     ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit
  %i.bz = zext i32 %i.ap to i64
  %i.ca = add nuw nsw i64 %i.bz, 63
  %i.cb = lshr i64 %i.ca, 6                       ; 2 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 6
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i30
  %indvars.iv.i.i31 = phi i64 [ 0, %.lr.ph.i.i30 ], [ %indvars.iv.next.i.i35, %bb.q ] ; 2 uses
  %.01014.i.i32 = phi i32 [ 0, %.lr.ph.i.i30 ], [ %i.ch, %bb.q ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i31
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !24 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = add i32 %.01014.i.i32, 64
  %indvars.iv.next.i.i35 = add nuw nsw i64 %indvars.iv.i.i31, 1 ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %indvars.iv.next.i.i35, %i.cb
  br i1 %exitcond.not.i.i36, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37, label %bb.p, !llvm.loop !10

bb.r:                                             ; preds = %bb.p
  %i.ci = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cf, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = or disjoint i32 %.01014.i.i32, %i.cj
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37

_ZNK4llvh5APInt18countTrailingZerosEv.exit37:     ; preds = %bb.q, %bb.o, %bb.r
  %.1.i.sink.i33 = phi i32 [ %i.by, %bb.o ], [ %i.ck, %bb.r ], [ %i.cd, %bb.q ]
  %.sroa.speculated.i.i34 = tail call noundef i32 @llvm.umin.i32(i32 %i.ap, i32 %.1.i.sink.i33) ; 7 uses
  %i.cl = icmp ugt i32 %.sroa.speculated.i.i, %.sroa.speculated.i.i34
  br i1 %i.cl, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit37
  %i.cm = sub nuw i32 %.sroa.speculated.i.i, %.sroa.speculated.i.i34 ; 4 uses
  br i1 %i.c, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cn = icmp eq i32 %i.cm, %i.b
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %1, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.v:                                             ; preds = %bb.t
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = lshr i64 %i.ak, %i.co
  store i64 %i.cp, ptr %1, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.w:                                             ; preds = %bb.s
  %i.cq = zext i32 %i.b to i64
  %i.cr = add nuw nsw i64 %i.cq, 63
  %i.cs = lshr i64 %i.cr, 6
  %i.ct = trunc nuw nsw i64 %i.cs to i32          ; 3 uses
  %i.cu = lshr i32 %i.cm, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 %i.cu) ; 9 uses
  %i.cv = and i32 %i.cm, 63                       ; 3 uses
  %i.cw = sub nsw i32 %i.ct, %.sroa.speculated.i.i.i ; 5 uses
  %i.cx = icmp eq i32 %i.cv, 0
  br i1 %i.cx, label %bb.x, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.w
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.cu, %i.ct
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.cy = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cz = sub nuw nsw i32 64, %i.cv
  %i.da = zext nneg i32 %i.cz to i64              ; 3 uses
  %i.db = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !24
  %i.de = lshr i64 %i.dd, %i.cy                   ; 3 uses
  store i64 %i.de, ptr %i.al, align 8, !tbaa !24
  %.not32.i1.i.i = icmp eq i32 %i.cw, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %.lr.ph.i.i.i
  %i.df = zext i32 %i.cw to i64
  %i.dg = add nsw i64 %i.df, -1                   ; 3 uses
  %xtraiter264 = and i64 %i.dg, 1
  %i.dh = icmp eq i32 %i.cw, 2
  br i1 %i.dh, label %.lr.ph.i.i38.epil.preheader, label %.lr.ph.i.i38.preheader.new

.lr.ph.i.i38.preheader.new:                       ; preds = %.lr.ph.i.i38.preheader
  %unroll_iter273 = and i64 %i.dg, -2
  br label %.lr.ph.i.i38

bb.x:                                             ; preds = %bb.w
  %i.di = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.di
  %i.dk = shl nuw nsw i32 %i.cw, 3
  %i.dl = zext nneg i32 %i.dk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.dj, i64 %i.dl, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.i.i38.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i38.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i38 ] ; 4 uses
  %i.dm = phi ptr [ %i.al, %.lr.ph.i.i38.preheader.new ], [ %i.eo, %.lr.ph.i.i38 ]
  %i.dn = phi i64 [ %i.de, %.lr.ph.i.i38.preheader.new ], [ %i.en, %.lr.ph.i.i38 ]
  %i.do = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i38.preheader.new ], [ %i.ej, %.lr.ph.i.i38 ]
  %niter274 = phi i64 [ 0, %.lr.ph.i.i38.preheader.new ], [ %niter274.next.1, %.lr.ph.i.i38 ]
  %i.dp = add i32 %i.do, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !24
  %i.dt = shl i64 %i.ds, %i.da
  %i.du = or i64 %i.dt, %i.dn
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !24
  %i.dv = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.dw = add i32 %.sroa.speculated.i.i.i, %i.dv  ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !24
  %i.ea = lshr i64 %i.dz, %i.cy                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.ec = add i32 %i.dw, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !24
  %i.eg = shl i64 %i.ef, %i.da
  %i.eh = or i64 %i.eg, %i.ea
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !24
  %i.ei = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.ej = add i32 %.sroa.speculated.i.i.i, %i.ei  ; 3 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !24
  %i.en = lshr i64 %i.em, %i.cy                   ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !24
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter274.next.1 = add nuw i64 %niter274, 2     ; 2 uses
  %niter274.ncmp.1 = icmp eq i64 %niter274.next.1, %unroll_iter273
  br i1 %niter274.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i38

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i38
  %lcmp.mod271.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod271.not, label %.loopexit.i.i.i, label %.lr.ph.i.i38.epil.preheader

.lr.ph.i.i38.epil.preheader:                      ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i38.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i38.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init266 = phi ptr [ %i.al, %.lr.ph.i.i38.preheader ], [ %i.eo, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init268 = phi i64 [ %i.de, %.lr.ph.i.i38.preheader ], [ %i.en, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init270 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i38.preheader ], [ %i.ej, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod272 = trunc i64 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod272)
  %i.ep = add i32 %.epil.init270, 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !24
  %i.et = shl i64 %i.es, %i.da
  %i.eu = or i64 %i.et, %.epil.init268
  store i64 %i.eu, ptr %.epil.init266, align 8, !tbaa !24
  %i.ev = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.ew = add i32 %.sroa.speculated.i.i.i, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !24
  %i.fa = lshr i64 %i.ez, %i.cy
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !24
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i38.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.x, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.fc = zext nneg i32 %i.cw to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.fc
  %i.fe = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.ff = zext nneg i32 %i.fe to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fd, i8 0, i64 %i.ff, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.y:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit37
  %i.fg = icmp ugt i32 %.sroa.speculated.i.i34, %.sroa.speculated.i.i
  br i1 %i.fg, label %bb.z, label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.z:                                             ; preds = %bb.y
  %i.fh = sub nuw i32 %.sroa.speculated.i.i34, %.sroa.speculated.i.i ; 4 uses
  br i1 %i.aq, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fi = icmp eq i32 %i.fh, %i.ap
  br i1 %i.fi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 0, ptr %2, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = lshr i64 %i.am, %i.fj
  store i64 %i.fk, ptr %2, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.ad:                                            ; preds = %bb.z
  %i.fl = zext i32 %i.ap to i64
  %i.fm = add nuw nsw i64 %i.fl, 63
  %i.fn = lshr i64 %i.fm, 6
  %i.fo = trunc nuw nsw i64 %i.fn to i32          ; 3 uses
  %i.fp = lshr i32 %i.fh, 6                       ; 2 uses
  %.sroa.speculated.i.i.i40 = tail call i32 @llvm.umin.i32(i32 %i.fo, i32 %i.fp) ; 9 uses
  %i.fq = and i32 %i.fh, 63                       ; 3 uses
  %i.fr = sub nsw i32 %i.fo, %.sroa.speculated.i.i.i40 ; 5 uses
  %i.fs = icmp eq i32 %i.fq, 0
  br i1 %i.fs, label %bb.ae, label %.preheader.i.i.i41

.preheader.i.i.i41:                               ; preds = %bb.ad
  %.not3137.not.i.i.i42 = icmp samesign ult i32 %i.fp, %i.fo
  br i1 %.not3137.not.i.i.i42, label %.lr.ph.i.i.i44, label %.loopexit.i.i.i43

.lr.ph.i.i.i44:                                   ; preds = %.preheader.i.i.i41
  %i.ft = zext nneg i32 %i.fq to i64              ; 4 uses
  %i.fu = sub nuw nsw i32 64, %i.fq
  %i.fv = zext nneg i32 %i.fu to i64              ; 3 uses
  %i.fw = zext nneg i32 %.sroa.speculated.i.i.i40 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !24
  %i.fz = lshr i64 %i.fy, %i.ft                   ; 3 uses
  store i64 %i.fz, ptr %i.an, align 8, !tbaa !24
  %.not32.i1.i.i45 = icmp eq i32 %i.fr, 1
  br i1 %.not32.i1.i.i45, label %.loopexit.i.i.i43, label %.lr.ph.i.i46.preheader

.lr.ph.i.i46.preheader:                           ; preds = %.lr.ph.i.i.i44
  %i.ga = zext i32 %i.fr to i64
  %i.gb = add nsw i64 %i.ga, -1                   ; 3 uses
  %xtraiter = and i64 %i.gb, 1
  %i.gc = icmp eq i32 %i.fr, 2
  br i1 %i.gc, label %.lr.ph.i.i46.epil.preheader, label %.lr.ph.i.i46.preheader.new

.lr.ph.i.i46.preheader.new:                       ; preds = %.lr.ph.i.i46.preheader
  %unroll_iter = and i64 %i.gb, -2
  br label %.lr.ph.i.i46

bb.ae:                                            ; preds = %bb.ad
  %i.gd = zext nneg i32 %.sroa.speculated.i.i.i40 to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gd
  %i.gf = shl nuw nsw i32 %i.fr, 3
  %i.gg = zext nneg i32 %i.gf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr align 8 %i.ge, i64 %i.gg, i1 false)
  br label %.loopexit.i.i.i43

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %.lr.ph.i.i46.preheader.new
  %indvars.iv.next.i2.i.i47 = phi i64 [ 1, %.lr.ph.i.i46.preheader.new ], [ %indvars.iv.next.i.i.i48.1, %.lr.ph.i.i46 ] ; 4 uses
  %i.gh = phi ptr [ %i.an, %.lr.ph.i.i46.preheader.new ], [ %i.hj, %.lr.ph.i.i46 ]
  %i.gi = phi i64 [ %i.fz, %.lr.ph.i.i46.preheader.new ], [ %i.hi, %.lr.ph.i.i46 ]
  %i.gj = phi i32 [ %.sroa.speculated.i.i.i40, %.lr.ph.i.i46.preheader.new ], [ %i.he, %.lr.ph.i.i46 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i46.preheader.new ], [ %niter.next.1, %.lr.ph.i.i46 ]
  %i.gk = add i32 %i.gj, 1
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !24
  %i.go = shl i64 %i.gn, %i.fv
  %i.gp = or i64 %i.go, %i.gi
  store i64 %i.gp, ptr %i.gh, align 8, !tbaa !24
  %i.gq = trunc nuw i64 %indvars.iv.next.i2.i.i47 to i32
  %i.gr = add i32 %.sroa.speculated.i.i.i40, %i.gq ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !24
  %i.gv = lshr i64 %i.gu, %i.ft                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i2.i.i47 ; 2 uses
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !24
  %indvars.iv.next.i.i.i48 = add nuw nsw i64 %indvars.iv.next.i2.i.i47, 1 ; 2 uses
  %i.gx = add i32 %i.gr, 1
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !24
  %i.hb = shl i64 %i.ha, %i.fv
  %i.hc = or i64 %i.hb, %i.gv
  store i64 %i.hc, ptr %i.gw, align 8, !tbaa !24
  %i.hd = trunc nuw i64 %indvars.iv.next.i.i.i48 to i32
  %i.he = add i32 %.sroa.speculated.i.i.i40, %i.hd ; 3 uses
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !24
  %i.hi = lshr i64 %i.hh, %i.ft                   ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.i48 ; 3 uses
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !24
  %indvars.iv.next.i.i.i48.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i47, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i43.loopexit.unr-lcssa, label %.lr.ph.i.i46

.loopexit.i.i.i43.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i46
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i43, label %.lr.ph.i.i46.epil.preheader

.lr.ph.i.i46.epil.preheader:                      ; preds = %.loopexit.i.i.i43.loopexit.unr-lcssa, %.lr.ph.i.i46.preheader
  %indvars.iv.next.i2.i.i47.epil.init = phi i64 [ 1, %.lr.ph.i.i46.preheader ], [ %indvars.iv.next.i.i.i48.1, %.loopexit.i.i.i43.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.an, %.lr.ph.i.i46.preheader ], [ %i.hj, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %.epil.init260 = phi i64 [ %i.fz, %.lr.ph.i.i46.preheader ], [ %i.hi, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %.epil.init262 = phi i32 [ %.sroa.speculated.i.i.i40, %.lr.ph.i.i46.preheader ], [ %i.he, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %lcmp.mod263 = trunc i64 %i.gb to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %i.hk = add i32 %.epil.init262, 1
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !24
  %i.ho = shl i64 %i.hn, %i.fv
  %i.hp = or i64 %i.ho, %.epil.init260
  store i64 %i.hp, ptr %.epil.init, align 8, !tbaa !24
  %i.hq = trunc nuw i64 %indvars.iv.next.i2.i.i47.epil.init to i32
  %i.hr = add i32 %.sroa.speculated.i.i.i40, %i.hq
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !24
  %i.hv = lshr i64 %i.hu, %i.ft
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i2.i.i47.epil.init
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !24
  br label %.loopexit.i.i.i43

.loopexit.i.i.i43:                                ; preds = %.lr.ph.i.i46.epil.preheader, %.loopexit.i.i.i43.loopexit.unr-lcssa, %bb.ae, %.lr.ph.i.i.i44, %.preheader.i.i.i41
  %i.hx = zext nneg i32 %i.fr to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hx
  %i.hz = shl nuw nsw i32 %.sroa.speculated.i.i.i40, 3
  %i.ia = zext nneg i32 %i.hz to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hy, i8 0, i64 %i.ia, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %.loopexit.i.i.i43, %bb.ac, %bb.ab, %.loopexit.i.i.i, %bb.v, %bb.u, %bb.y
  %.0 = phi i32 [ %.sroa.speculated.i.i, %bb.y ], [ %.sroa.speculated.i.i34, %.loopexit.i.i.i ], [ %.sroa.speculated.i.i34, %bb.u ], [ %.sroa.speculated.i.i34, %bb.v ], [ %.sroa.speculated.i.i, %.loopexit.i.i.i43 ], [ %.sroa.speculated.i.i, %bb.ab ], [ %.sroa.speculated.i.i, %bb.ac ] ; 6 uses
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75

_ZN4llvh5APInt11lshrInPlaceEj.exit75:             ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, %_ZN4llvh5APInt11lshrInPlaceEj.exit
  %i.ib = load i32, ptr %i.a, align 8, !tbaa !21  ; 8 uses
  %i.ic = icmp ult i32 %i.ib, 65
  br i1 %i.ic, label %_ZNK4llvh5APIntneERKS0_.exit, label %_ZNK4llvh5APIntneERKS0_.exit.thread

_ZNK4llvh5APIntneERKS0_.exit:                     ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75
  %i.id = load i64, ptr %1, align 8               ; 6 uses
  %i.ie = load i64, ptr %2, align 8               ; 5 uses
  %.not120 = icmp eq i64 %i.id, %i.ie
  br i1 %.not120, label %bb.ba, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113

_ZNK4llvh5APIntneERKS0_.exit.thread:              ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75
  %i.if = zext i32 %i.ib to i64
  %i.ig = add nuw nsw i64 %i.if, 63               ; 2 uses
  %i.ih = lshr i64 %i.ig, 3
  %.idx.i.i.i = and i64 %i.ih, 1073741816
  %i.ii = load ptr, ptr %1, align 8               ; 7 uses
  %i.ij = load ptr, ptr %2, align 8               ; 7 uses
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ii, ptr %i.ij, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %i.ik = ptrtoint ptr %i.ii to i64               ; 4 uses
  %i.il = ptrtoint ptr %i.ij to i64               ; 3 uses
  br i1 %.not9.i.i.i.i.i.i.i.not, label %bb.ba, label %.thread111

.thread111:                                       ; preds = %_ZNK4llvh5APIntneERKS0_.exit.thread
  %i.im = lshr i64 %i.ig, 6                       ; 6 uses
  %.not.i.i.i.i235 = icmp eq i64 %i.im, 0
  br i1 %.not.i.i.i.i235, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread, label %.lr.ph

bb.af:                                            ; preds = %.lr.ph
  %.not.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.thread111, %bb.af
  %indvars.iv.i.i.i.i236 = phi i64 [ %i.in, %bb.af ], [ %i.im, %.thread111 ]
  %i.in = add nsw i64 %indvars.iv.i.i.i.i236, -1  ; 4 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !24 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.in
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !24 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ip, %i.ir
  br i1 %.not13.i.i.i.i, label %bb.af, label %_ZNK4llvh5APInt3ugtERKS0_.exit, !llvm.loop !7

_ZNK4llvh5APInt3ugtERKS0_.exit:                   ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.ip, %i.ir
  br i1 %.not, label %.lr.ph.i.i51, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread

_ZNK4llvh5APInt3ugtERKS0_.exit.thread113:         ; preds = %_ZNK4llvh5APIntneERKS0_.exit
  %i.is = inttoptr i64 %i.id to ptr
  %i.it = inttoptr i64 %i.ie to ptr
  %.not121 = icmp ugt i64 %i.id, %i.ie
  br i1 %.not121, label %_ZN4llvh5APIntmIERKS0_.exit.thread, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread

_ZN4llvh5APIntmIERKS0_.exit.thread:               ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113
  %i.iu = sub nuw i64 %i.id, %i.ie
  %i.iv = sub nsw i32 0, %i.ib
  %i.iw = and i32 %i.iv, 63
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = lshr i64 -1, %i.ix
  %i.iz = and i64 %i.iu, %i.iy                    ; 3 uses
  store i64 %i.iz, ptr %1, align 8, !tbaa !22
  %i.ja = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iz, i1 false)
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %.sroa.speculated.i.i60117 = tail call noundef i32 @llvm.umin.i32(i32 %i.ib, i32 %i.jb)
  %i.jc = sub i32 %.sroa.speculated.i.i60117, %.0 ; 2 uses
  %i.jd = icmp eq i32 %i.jc, %i.ib
  br i1 %i.jd, label %bb.am, label %bb.an

.lr.ph.i.i51:                                     ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit, %bb.ai
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i54, %bb.ai ], [ 0, %_ZNK4llvh5APInt3ugtERKS0_.exit ] ; 3 uses
  %.02021.i.i = phi i1 [ %i.jm, %bb.ai ], [ true, %_ZNK4llvh5APInt3ugtERKS0_.exit ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.i.i52 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !24 ; 4 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i.i52
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !24 ; 3 uses
  br i1 %.02021.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i51
  %.neg.i.i53 = xor i64 %i.jh, -1
  %i.ji = add i64 %i.jf, %.neg.i.i53              ; 2 uses
  %i.jj = icmp uge i64 %i.ji, %i.jf
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i51
  %i.jk = sub i64 %i.jf, %i.jh
  %i.jl = icmp ugt i64 %i.jh, %i.jf
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink.i.i = phi i64 [ %i.jk, %bb.ah ], [ %i.ji, %bb.ag ]
  %.1.in.i.i = phi i1 [ %i.jl, %bb.ah ], [ %i.jj, %bb.ag ]
  store i64 %.sink.i.i, ptr %i.je, align 8, !tbaa !24
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i52, 1 ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %indvars.iv.next.i.i54, %i.im
  %i.jm = xor i1 %.1.in.i.i, true
  br i1 %exitcond.not.i.i55, label %_ZN4llvh5APIntmIERKS0_.exit, label %.lr.ph.i.i51, !llvm.loop !4

_ZN4llvh5APIntmIERKS0_.exit:                      ; preds = %bb.ai
  %i.jn = sub i32 0, %i.ib
  %i.jo = and i32 %i.jn, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = lshr i64 -1, %i.jp
  %i.jr = load ptr, ptr %1, align 8, !tbaa !22
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %i.im
  %i.jt = getelementptr i8, ptr %i.js, i64 -8     ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !24
  %i.jv = and i64 %i.ju, %i.jq
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !24
  %i.jw = trunc nuw nsw i64 %i.im to i32          ; 4 uses
  %i.jx = load ptr, ptr %1, align 8, !tbaa !22    ; 17 uses
  %i.jy = shl i32 %i.jw, 6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %_ZN4llvh5APIntmIERKS0_.exit
  %indvars.iv.i.i57 = phi i64 [ 0, %_ZN4llvh5APIntmIERKS0_.exit ], [ %indvars.iv.next.i.i61, %bb.ak ] ; 2 uses
  %.01014.i.i58 = phi i32 [ 0, %_ZN4llvh5APIntmIERKS0_.exit ], [ %i.kc, %bb.ak ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.i.i57
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !24 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kc = add i32 %.01014.i.i58, 64
  %indvars.iv.next.i.i61 = add nuw nsw i64 %indvars.iv.i.i57, 1 ; 2 uses
  %exitcond.not.i.i62 = icmp eq i64 %indvars.iv.next.i.i61, %i.im
  br i1 %exitcond.not.i.i62, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit63, label %bb.aj, !llvm.loop !10

bb.al:                                            ; preds = %bb.aj
  %i.kd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ka, i1 true)
  %i.ke = trunc nuw nsw i64 %i.kd to i32
  %i.kf = or disjoint i32 %.01014.i.i58, %i.ke
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit63

_ZNK4llvh5APInt18countTrailingZerosEv.exit63:     ; preds = %bb.ak, %bb.al
  %.1.i.sink.i59 = phi i32 [ %i.kf, %bb.al ], [ %i.jy, %bb.ak ]
  %.sroa.speculated.i.i60 = tail call noundef i32 @llvm.umin.i32(i32 %i.ib, i32 %.1.i.sink.i59) ; 2 uses
  %.not.i.i.i64 = icmp eq i32 %.sroa.speculated.i.i60, %.0
  br i1 %.not.i.i.i64, label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, label %bb.ao

bb.am:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit.thread
  store i64 0, ptr %1, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.an:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit.thread
  %i.kg = zext nneg i32 %i.jc to i64
  %i.kh = lshr i64 %i.iz, %i.kg
  store i64 %i.kh, ptr %1, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ao:                                            ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit63
  %i.ki = sub i32 %.sroa.speculated.i.i60, %.0    ; 2 uses
  %i.kj = lshr i32 %i.ki, 6                       ; 2 uses
  %.sroa.speculated.i.i.i65 = tail call i32 @llvm.umin.i32(i32 %i.jw, i32 %i.kj) ; 9 uses
  %i.kk = and i32 %i.ki, 63                       ; 3 uses
  %i.kl = sub nsw i32 %i.jw, %.sroa.speculated.i.i.i65 ; 5 uses
  %i.km = icmp eq i32 %i.kk, 0
  br i1 %i.km, label %bb.ap, label %.preheader.i.i.i66

.preheader.i.i.i66:                               ; preds = %bb.ao
  %.not3137.not.i.i.i67 = icmp samesign ult i32 %i.kj, %i.jw
  br i1 %.not3137.not.i.i.i67, label %.lr.ph.i.i.i69, label %.loopexit.i.i.i68

.lr.ph.i.i.i69:                                   ; preds = %.preheader.i.i.i66
  %i.kn = zext nneg i32 %i.kk to i64              ; 4 uses
  %i.ko = sub nuw nsw i32 64, %i.kk
  %i.kp = zext nneg i32 %i.ko to i64              ; 3 uses
  %i.kq = zext nneg i32 %.sroa.speculated.i.i.i65 to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kq
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !24
  %i.kt = lshr i64 %i.ks, %i.kn                   ; 3 uses
  store i64 %i.kt, ptr %i.jx, align 8, !tbaa !24
  %.not32.i1.i.i70 = icmp eq i32 %i.kl, 1
  br i1 %.not32.i1.i.i70, label %.loopexit.i.i.i68, label %.lr.ph.i.i71.preheader

.lr.ph.i.i71.preheader:                           ; preds = %.lr.ph.i.i.i69
  %i.ku = zext i32 %i.kl to i64
  %i.kv = add nsw i64 %i.ku, -1                   ; 3 uses
  %xtraiter275 = and i64 %i.kv, 1
  %i.kw = icmp eq i32 %i.kl, 2
  br i1 %i.kw, label %.lr.ph.i.i71.epil.preheader, label %.lr.ph.i.i71.preheader.new

.lr.ph.i.i71.preheader.new:                       ; preds = %.lr.ph.i.i71.preheader
  %unroll_iter284 = and i64 %i.kv, -2
  br label %.lr.ph.i.i71

bb.ap:                                            ; preds = %bb.ao
  %i.kx = zext nneg i32 %.sroa.speculated.i.i.i65 to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kx
  %i.kz = shl nuw nsw i32 %i.kl, 3
  %i.la = zext nneg i32 %i.kz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jx, ptr align 8 %i.ky, i64 %i.la, i1 false)
  br label %.loopexit.i.i.i68

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i71, %.lr.ph.i.i71.preheader.new
  %indvars.iv.next.i2.i.i72 = phi i64 [ 1, %.lr.ph.i.i71.preheader.new ], [ %indvars.iv.next.i.i.i73.1, %.lr.ph.i.i71 ] ; 4 uses
  %i.lb = phi ptr [ %i.jx, %.lr.ph.i.i71.preheader.new ], [ %i.md, %.lr.ph.i.i71 ]
  %i.lc = phi i64 [ %i.kt, %.lr.ph.i.i71.preheader.new ], [ %i.mc, %.lr.ph.i.i71 ]
  %i.ld = phi i32 [ %.sroa.speculated.i.i.i65, %.lr.ph.i.i71.preheader.new ], [ %i.ly, %.lr.ph.i.i71 ]
  %niter285 = phi i64 [ 0, %.lr.ph.i.i71.preheader.new ], [ %niter285.next.1, %.lr.ph.i.i71 ]
  %i.le = add i32 %i.ld, 1
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.lf
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !24
  %i.li = shl i64 %i.lh, %i.kp
  %i.lj = or i64 %i.li, %i.lc
  store i64 %i.lj, ptr %i.lb, align 8, !tbaa !24
  %i.lk = trunc nuw i64 %indvars.iv.next.i2.i.i72 to i32
  %i.ll = add i32 %.sroa.speculated.i.i.i65, %i.lk ; 2 uses
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.lm
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !24
  %i.lp = lshr i64 %i.lo, %i.kn                   ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.next.i2.i.i72 ; 2 uses
  store i64 %i.lp, ptr %i.lq, align 8, !tbaa !24
  %indvars.iv.next.i.i.i73 = add nuw nsw i64 %indvars.iv.next.i2.i.i72, 1 ; 2 uses
  %i.lr = add i32 %i.ll, 1
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !24
  %i.lv = shl i64 %i.lu, %i.kp
  %i.lw = or i64 %i.lv, %i.lp
  store i64 %i.lw, ptr %i.lq, align 8, !tbaa !24
  %i.lx = trunc nuw i64 %indvars.iv.next.i.i.i73 to i32
  %i.ly = add i32 %.sroa.speculated.i.i.i65, %i.lx ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.lz
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !24
  %i.mc = lshr i64 %i.mb, %i.kn                   ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.next.i.i.i73 ; 3 uses
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !24
  %indvars.iv.next.i.i.i73.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i72, 2 ; 2 uses
  %niter285.next.1 = add nuw i64 %niter285, 2     ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.i.i.i68.loopexit.unr-lcssa, label %.lr.ph.i.i71

.loopexit.i.i.i68.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i71
  %lcmp.mod282.not = icmp eq i64 %xtraiter275, 0
  br i1 %lcmp.mod282.not, label %.loopexit.i.i.i68, label %.lr.ph.i.i71.epil.preheader

.lr.ph.i.i71.epil.preheader:                      ; preds = %.loopexit.i.i.i68.loopexit.unr-lcssa, %.lr.ph.i.i71.preheader
  %indvars.iv.next.i2.i.i72.epil.init = phi i64 [ 1, %.lr.ph.i.i71.preheader ], [ %indvars.iv.next.i.i.i73.1, %.loopexit.i.i.i68.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init277 = phi ptr [ %i.jx, %.lr.ph.i.i71.preheader ], [ %i.md, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %.epil.init279 = phi i64 [ %i.kt, %.lr.ph.i.i71.preheader ], [ %i.mc, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %.epil.init281 = phi i32 [ %.sroa.speculated.i.i.i65, %.lr.ph.i.i71.preheader ], [ %i.ly, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %lcmp.mod283 = trunc i64 %i.kv to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.me = add i32 %.epil.init281, 1
  %i.mf = zext i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.mf
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !24
  %i.mi = shl i64 %i.mh, %i.kp
  %i.mj = or i64 %i.mi, %.epil.init279
  store i64 %i.mj, ptr %.epil.init277, align 8, !tbaa !24
  %i.mk = trunc nuw i64 %indvars.iv.next.i2.i.i72.epil.init to i32
  %i.ml = add i32 %.sroa.speculated.i.i.i65, %i.mk
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.mm
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !24
  %i.mp = lshr i64 %i.mo, %i.kn
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.next.i2.i.i72.epil.init
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !24
  br label %.loopexit.i.i.i68

.loopexit.i.i.i68:                                ; preds = %.lr.ph.i.i71.epil.preheader, %.loopexit.i.i.i68.loopexit.unr-lcssa, %bb.ap, %.lr.ph.i.i.i69, %.preheader.i.i.i66
  %i.mr = zext nneg i32 %i.kl to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.mr
  %i.mt = shl nuw nsw i32 %.sroa.speculated.i.i.i65, 3
  %i.mu = zext nneg i32 %i.mt to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ms, i8 0, i64 %i.mu, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

_ZNK4llvh5APInt3ugtERKS0_.exit.thread:            ; preds = %bb.af, %.thread111, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113, %_ZNK4llvh5APInt3ugtERKS0_.exit
  %i.mv = phi i64 [ %i.il, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.ie, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.il, %.thread111 ], [ %i.il, %bb.af ]
  %i.mw = phi i64 [ %i.ik, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.id, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.ik, %.thread111 ], [ %i.ik, %bb.af ]
  %i.mx = phi ptr [ %i.ii, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.is, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.ii, %.thread111 ], [ %i.ii, %bb.af ]
  %i.my = phi ptr [ %i.ij, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.it, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.ij, %.thread111 ], [ %i.ij, %bb.af ]
  %i.mz = load i32, ptr %i.ao, align 8, !tbaa !21 ; 7 uses
  %i.na = icmp ult i32 %i.mz, 65
  br i1 %i.na, label %_ZN4llvh5APIntmIERKS0_.exit87.thread, label %.lr.ph.preheader.i.i76

_ZN4llvh5APIntmIERKS0_.exit87.thread:             ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread
  %i.nb = sub i64 %i.mv, %i.mw
  %i.nc = sub nsw i32 0, %i.mz
  %i.nd = and i32 %i.nc, 63
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = lshr i64 -1, %i.ne
  %i.ng = and i64 %i.nb, %i.nf                    ; 3 uses
  store i64 %i.ng, ptr %2, align 8, !tbaa !22
  %i.nh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ng, i1 false)
  %i.ni = trunc nuw nsw i64 %i.nh to i32
  %.sroa.speculated.i.i92119 = tail call noundef i32 @llvm.umin.i32(i32 %i.mz, i32 %i.ni)
  %i.nj = sub i32 %.sroa.speculated.i.i92119, %.0 ; 2 uses
  %i.nk = icmp eq i32 %i.nj, %i.mz
  br i1 %i.nk, label %bb.aw, label %bb.ax

.lr.ph.preheader.i.i76:                           ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread
  %i.nl = zext i32 %i.mz to i64
  %i.nm = add nuw nsw i64 %i.nl, 63
  %i.nn = lshr i64 %i.nm, 6                       ; 4 uses
  br label %.lr.ph.i.i77

.lr.ph.i.i77:                                     ; preds = %bb.as, %.lr.ph.preheader.i.i76
  %indvars.iv.i.i78 = phi i64 [ 0, %.lr.ph.preheader.i.i76 ], [ %indvars.iv.next.i.i83, %bb.as ] ; 3 uses
  %.02021.i.i79 = phi i1 [ true, %.lr.ph.preheader.i.i76 ], [ %i.nw, %bb.as ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv.i.i78 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !24 ; 4 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.i.i78
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !24 ; 3 uses
  br i1 %.02021.i.i79, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i77
  %.neg.i.i80 = xor i64 %i.nr, -1
  %i.ns = add i64 %i.np, %.neg.i.i80              ; 2 uses
  %i.nt = icmp uge i64 %i.ns, %i.np
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i.i77
  %i.nu = sub i64 %i.np, %i.nr
  %i.nv = icmp ugt i64 %i.nr, %i.np
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink.i.i81 = phi i64 [ %i.nu, %bb.ar ], [ %i.ns, %bb.aq ]
  %.1.in.i.i82 = phi i1 [ %i.nv, %bb.ar ], [ %i.nt, %bb.aq ]
  store i64 %.sink.i.i81, ptr %i.no, align 8, !tbaa !24
  %indvars.iv.next.i.i83 = add nuw nsw i64 %indvars.iv.i.i78, 1 ; 2 uses
  %exitcond.not.i.i84 = icmp eq i64 %indvars.iv.next.i.i83, %i.nn
  %i.nw = xor i1 %.1.in.i.i82, true
  br i1 %exitcond.not.i.i84, label %_ZN4llvh5APIntmIERKS0_.exit87, label %.lr.ph.i.i77, !llvm.loop !4

_ZN4llvh5APIntmIERKS0_.exit87:                    ; preds = %bb.as
  %i.nx = sub i32 0, %i.mz
  %i.ny = and i32 %i.nx, 63
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = lshr i64 -1, %i.nz
  %i.ob = load ptr, ptr %2, align 8, !tbaa !22
  %i.oc = getelementptr [8 x i8], ptr %i.ob, i64 %i.nn
  %i.od = getelementptr i8, ptr %i.oc, i64 -8     ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !24
  %i.of = and i64 %i.oe, %i.oa
  store i64 %i.of, ptr %i.od, align 8, !tbaa !24
  %i.og = trunc nuw nsw i64 %i.nn to i32          ; 4 uses
  %i.oh = load ptr, ptr %2, align 8, !tbaa !22    ; 17 uses
  %i.oi = shl i32 %i.og, 6
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %_ZN4llvh5APIntmIERKS0_.exit87
  %indvars.iv.i.i89 = phi i64 [ 0, %_ZN4llvh5APIntmIERKS0_.exit87 ], [ %indvars.iv.next.i.i93, %bb.au ] ; 2 uses
  %.01014.i.i90 = phi i32 [ 0, %_ZN4llvh5APIntmIERKS0_.exit87 ], [ %i.om, %bb.au ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.i.i89
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !24 ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.om = add i32 %.01014.i.i90, 64
  %indvars.iv.next.i.i93 = add nuw nsw i64 %indvars.iv.i.i89, 1 ; 2 uses
  %exitcond.not.i.i94 = icmp eq i64 %indvars.iv.next.i.i93, %i.nn
  br i1 %exitcond.not.i.i94, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit95, label %bb.at, !llvm.loop !10

bb.av:                                            ; preds = %bb.at
  %i.on = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ok, i1 true)
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = or disjoint i32 %.01014.i.i90, %i.oo
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit95

_ZNK4llvh5APInt18countTrailingZerosEv.exit95:     ; preds = %bb.au, %bb.av
  %.1.i.sink.i91 = phi i32 [ %i.op, %bb.av ], [ %i.oi, %bb.au ]
  %.sroa.speculated.i.i92 = tail call noundef i32 @llvm.umin.i32(i32 %i.mz, i32 %.1.i.sink.i91) ; 2 uses
  %.not.i.i.i96 = icmp eq i32 %.sroa.speculated.i.i92, %.0
  br i1 %.not.i.i.i96, label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, label %bb.ay

bb.aw:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit87.thread
  store i64 0, ptr %2, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ax:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit87.thread
  %i.oq = zext nneg i32 %i.nj to i64
  %i.or = lshr i64 %i.ng, %i.oq
  store i64 %i.or, ptr %2, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ay:                                            ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit95
  %i.os = sub i32 %.sroa.speculated.i.i92, %.0    ; 2 uses
  %i.ot = lshr i32 %i.os, 6                       ; 2 uses
  %.sroa.speculated.i.i.i97 = tail call i32 @llvm.umin.i32(i32 %i.og, i32 %i.ot) ; 9 uses
  %i.ou = and i32 %i.os, 63                       ; 3 uses
  %i.ov = sub nsw i32 %i.og, %.sroa.speculated.i.i.i97 ; 5 uses
  %i.ow = icmp eq i32 %i.ou, 0
  br i1 %i.ow, label %bb.az, label %.preheader.i.i.i98

.preheader.i.i.i98:                               ; preds = %bb.ay
  %.not3137.not.i.i.i99 = icmp samesign ult i32 %i.ot, %i.og
  br i1 %.not3137.not.i.i.i99, label %.lr.ph.i.i.i101, label %.loopexit.i.i.i100

.lr.ph.i.i.i101:                                  ; preds = %.preheader.i.i.i98
  %i.ox = zext nneg i32 %i.ou to i64              ; 4 uses
  %i.oy = sub nuw nsw i32 64, %i.ou
  %i.oz = zext nneg i32 %i.oy to i64              ; 3 uses
  %i.pa = zext nneg i32 %.sroa.speculated.i.i.i97 to i64
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.pa
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !24
  %i.pd = lshr i64 %i.pc, %i.ox                   ; 3 uses
  store i64 %i.pd, ptr %i.oh, align 8, !tbaa !24
  %.not32.i1.i.i102 = icmp eq i32 %i.ov, 1
  br i1 %.not32.i1.i.i102, label %.loopexit.i.i.i100, label %.lr.ph.i.i103.preheader

.lr.ph.i.i103.preheader:                          ; preds = %.lr.ph.i.i.i101
  %i.pe = zext i32 %i.ov to i64
  %i.pf = add nsw i64 %i.pe, -1                   ; 3 uses
  %xtraiter286 = and i64 %i.pf, 1
  %i.pg = icmp eq i32 %i.ov, 2
  br i1 %i.pg, label %.lr.ph.i.i103.epil.preheader, label %.lr.ph.i.i103.preheader.new

.lr.ph.i.i103.preheader.new:                      ; preds = %.lr.ph.i.i103.preheader
  %unroll_iter295 = and i64 %i.pf, -2
  br label %.lr.ph.i.i103

bb.az:                                            ; preds = %bb.ay
  %i.ph = zext nneg i32 %.sroa.speculated.i.i.i97 to i64
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.ph
  %i.pj = shl nuw nsw i32 %i.ov, 3
  %i.pk = zext nneg i32 %i.pj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oh, ptr align 8 %i.pi, i64 %i.pk, i1 false)
  br label %.loopexit.i.i.i100

.lr.ph.i.i103:                                    ; preds = %.lr.ph.i.i103, %.lr.ph.i.i103.preheader.new
  %indvars.iv.next.i2.i.i104 = phi i64 [ 1, %.lr.ph.i.i103.preheader.new ], [ %indvars.iv.next.i.i.i105.1, %.lr.ph.i.i103 ] ; 4 uses
  %i.pl = phi ptr [ %i.oh, %.lr.ph.i.i103.preheader.new ], [ %i.qn, %.lr.ph.i.i103 ]
  %i.pm = phi i64 [ %i.pd, %.lr.ph.i.i103.preheader.new ], [ %i.qm, %.lr.ph.i.i103 ]
  %i.pn = phi i32 [ %.sroa.speculated.i.i.i97, %.lr.ph.i.i103.preheader.new ], [ %i.qi, %.lr.ph.i.i103 ]
  %niter296 = phi i64 [ 0, %.lr.ph.i.i103.preheader.new ], [ %niter296.next.1, %.lr.ph.i.i103 ]
  %i.po = add i32 %i.pn, 1
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.pp
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !24
  %i.ps = shl i64 %i.pr, %i.oz
  %i.pt = or i64 %i.ps, %i.pm
  store i64 %i.pt, ptr %i.pl, align 8, !tbaa !24
  %i.pu = trunc nuw i64 %indvars.iv.next.i2.i.i104 to i32
  %i.pv = add i32 %.sroa.speculated.i.i.i97, %i.pu ; 2 uses
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.pw
  %i.py = load i64, ptr %i.px, align 8, !tbaa !24
  %i.pz = lshr i64 %i.py, %i.ox                   ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.next.i2.i.i104 ; 2 uses
  store i64 %i.pz, ptr %i.qa, align 8, !tbaa !24
  %indvars.iv.next.i.i.i105 = add nuw nsw i64 %indvars.iv.next.i2.i.i104, 1 ; 2 uses
  %i.qb = add i32 %i.pv, 1
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.qc
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !24
  %i.qf = shl i64 %i.qe, %i.oz
  %i.qg = or i64 %i.qf, %i.pz
  store i64 %i.qg, ptr %i.qa, align 8, !tbaa !24
  %i.qh = trunc nuw i64 %indvars.iv.next.i.i.i105 to i32
  %i.qi = add i32 %.sroa.speculated.i.i.i97, %i.qh ; 3 uses
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.qj
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !24
  %i.qm = lshr i64 %i.ql, %i.ox                   ; 3 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.next.i.i.i105 ; 3 uses
  store i64 %i.qm, ptr %i.qn, align 8, !tbaa !24
  %indvars.iv.next.i.i.i105.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i104, 2 ; 2 uses
  %niter296.next.1 = add nuw i64 %niter296, 2     ; 2 uses
  %niter296.ncmp.1 = icmp eq i64 %niter296.next.1, %unroll_iter295
  br i1 %niter296.ncmp.1, label %.loopexit.i.i.i100.loopexit.unr-lcssa, label %.lr.ph.i.i103

.loopexit.i.i.i100.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i103
  %lcmp.mod293.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod293.not, label %.loopexit.i.i.i100, label %.lr.ph.i.i103.epil.preheader

.lr.ph.i.i103.epil.preheader:                     ; preds = %.loopexit.i.i.i100.loopexit.unr-lcssa, %.lr.ph.i.i103.preheader
  %indvars.iv.next.i2.i.i104.epil.init = phi i64 [ 1, %.lr.ph.i.i103.preheader ], [ %indvars.iv.next.i.i.i105.1, %.loopexit.i.i.i100.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init288 = phi ptr [ %i.oh, %.lr.ph.i.i103.preheader ], [ %i.qn, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %.epil.init290 = phi i64 [ %i.pd, %.lr.ph.i.i103.preheader ], [ %i.qm, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %.epil.init292 = phi i32 [ %.sroa.speculated.i.i.i97, %.lr.ph.i.i103.preheader ], [ %i.qi, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %lcmp.mod294 = trunc i64 %i.pf to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.qo = add i32 %.epil.init292, 1
  %i.qp = zext i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.qp
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !24
  %i.qs = shl i64 %i.qr, %i.oz
  %i.qt = or i64 %i.qs, %.epil.init290
  store i64 %i.qt, ptr %.epil.init288, align 8, !tbaa !24
  %i.qu = trunc nuw i64 %indvars.iv.next.i2.i.i104.epil.init to i32
  %i.qv = add i32 %.sroa.speculated.i.i.i97, %i.qu
  %i.qw = zext i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.qw
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !24
  %i.qz = lshr i64 %i.qy, %i.ox
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.next.i2.i.i104.epil.init
  store i64 %i.qz, ptr %i.ra, align 8, !tbaa !24
  br label %.loopexit.i.i.i100

.loopexit.i.i.i100:                               ; preds = %.lr.ph.i.i103.epil.preheader, %.loopexit.i.i.i100.loopexit.unr-lcssa, %bb.az, %.lr.ph.i.i.i101, %.preheader.i.i.i98
  %i.rb = zext nneg i32 %i.ov to i64
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.rb
  %i.rd = shl nuw nsw i32 %.sroa.speculated.i.i.i97, 3
  %i.re = zext nneg i32 %i.rd to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rc, i8 0, i64 %i.re, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge:    ; preds = %.loopexit.i.i.i100, %_ZNK4llvh5APInt18countTrailingZerosEv.exit95, %bb.ax, %bb.aw, %.loopexit.i.i.i68, %_ZNK4llvh5APInt18countTrailingZerosEv.exit63, %bb.an, %bb.am
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75, !llvm.loop !173

bb.ba:                                            ; preds = %_ZNK4llvh5APIntneERKS0_.exit.thread, %_ZNK4llvh5APIntneERKS0_.exit
  %i.rf = phi i64 [ %i.ik, %_ZNK4llvh5APIntneERKS0_.exit.thread ], [ %i.id, %_ZNK4llvh5APIntneERKS0_.exit ]
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ib, ptr %i.rg, align 8, !tbaa !21
  store i64 %i.rf, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !21
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh8APIntOps18RoundDoubleToAPIntEdj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %i.a = bitcast double %1 to i64                 ; 3 uses
  %.not = icmp slt i64 %i.a, 0                    ; 2 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = and i64 %i.b, 2047                       ; 5 uses
  %i.d = icmp samesign ult i64 %i.c, 1023
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !21
  %i.f = icmp ult i32 %2, 65
  br i1 %i.f, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %.loopexit.i._crit_edge.i

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i:                         ; preds = %bb.b
  %i.g = zext i32 %2 to i64
  %i.h = add nuw nsw i64 %i.g, 63                 ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  store i64 0, ptr %i.k, align 8, !tbaa !24
  %i.l = sub i32 0, %2
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 -1, %i.n
  %.pre7.i = lshr i64 %i.h, 6
  %i.p = getelementptr [8 x i8], ptr %i.k, i64 %.pre7.i
  %i.q = getelementptr i8, ptr %i.p, i64 -8       ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24
  %i.s = and i64 %i.r, %i.o
  store i64 %i.s, ptr %i.q, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %bb.a
  %i.t = and i64 %i.a, 4503599627370495
  %i.u = or disjoint i64 %i.t, 4503599627370496   ; 3 uses
  %i.v = icmp samesign ult i64 %i.c, 1075
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = sub nuw nsw i64 1075, %i.c
  %i.x = lshr i64 %i.u, %i.w                      ; 4 uses
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ult i32 %2, 65
  br i1 %i.y, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = zext i32 %2 to i64
  %i.aa = add nuw nsw i64 %i.z, 63                ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741816               ; 2 uses
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #22 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.ac, i1 false)
  store i64 %i.x, ptr %i.ad, align 8, !tbaa !24
  %i.ae = sub i32 0, %2
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 -1, %i.ag                      ; 3 uses
  %.pre7.i28 = lshr i64 %i.aa, 6                  ; 5 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ad, i64 %.pre7.i28
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8     ; 6 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = and i64 %i.ak, %i.ah
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %min.iters.check105 = icmp ult i32 %2, 193
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %bb.f
  %n.vec107 = and i64 %.pre7.i28, 134217724       ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body108 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index109 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load110 = load <2 x i64>, ptr %i.am, align 8, !tbaa !24, !noalias !182
  %wide.load111 = load <2 x i64>, ptr %i.an, align 8, !tbaa !24, !noalias !182
  %i.ao = xor <2 x i64> %wide.load110, splat (i64 -1)
  %i.ap = xor <2 x i64> %wide.load111, splat (i64 -1)
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !24, !noalias !182
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !24, !noalias !182
  %index.next112 = add nuw i64 %index109, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.aq, label %middle.block113, label %vector.body108, !llvm.loop !176

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %.pre7.i28, %n.vec107
  br i1 %cmp.n114, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.f, %middle.block113
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec107, %middle.block113 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24, !noalias !182
  %i.at = xor i64 %i.as, -1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !24, !noalias !182
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %.pre7.i28
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !177

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.e
  %i.au = sub nsw i32 0, %2
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 -1, %i.aw                      ; 2 uses
  %i.ay = xor i64 %i.x, -1
  %i.az = and i64 %i.ax, %i.ay
  %i.ba = add nuw i64 %i.az, 1
  %i.bb = and i64 %i.ba, %i.ax
  br label %_ZN4llvh5APIntD2Ev.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block113
  %i.bc = ptrtoint ptr %i.ad to i64
  %i.bd = load i64, ptr %i.aj, align 8, !tbaa !24, !noalias !182
  %i.be = and i64 %i.bd, %i.ah
  store i64 %i.be, ptr %i.aj, align 8, !tbaa !24, !noalias !182
  %i.bf = load i64, ptr %i.ad, align 8, !tbaa !24, !noalias !182
  %i.bg = add i64 %i.bf, 1                        ; 2 uses
  store i64 %i.bg, ptr %i.ad, align 8, !tbaa !24, !noalias !182
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !24, !noalias !182
  %i.bj = add i64 %i.bi, 1                        ; 2 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !24, !noalias !182
  %.not.i.i.i.i.i = icmp ne i64 %i.bj, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %.pre7.i28
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !1

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !24, !noalias !182
  %i.bl = and i64 %i.bk, %i.ah
  store i64 %i.bl, ptr %i.aj, align 8, !tbaa !24, !noalias !182
  br label %_ZN4llvh5APIntD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.bm, align 8, !tbaa !21
  %i.bn = icmp ult i32 %2, 65
  br i1 %i.bn, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i37, label %.loopexit.i._crit_edge.i32

end_hunk_2
begin_hunk_3_@_ZN4llvh5APInt11ashrInPlaceERKS0_:bb.a
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !22
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !22
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ] ; 3 uses
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ac = load i64, ptr %0, align 8, !tbaa !22
  %i.ad = sub nuw nsw i32 64, %i.b
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl i64 %i.ac, %i.ae
  %i.ag = ashr exact i64 %i.af, %i.ae
  %i.ah = icmp eq i32 %i.aa, %i.b
  %narrow.i = select i1 %i.ah, i32 63, i32 %i.aa
  %.pn.i = zext nneg i32 %narrow.i to i64
  %storemerge.i = ashr i64 %i.ag, %.pn.i
  %i.ai = sub nsw i32 0, %i.b
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 -1, %i.ak
  %i.am = and i64 %storemerge.i, %i.al
  store i64 %i.am, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11ashrInPlaceEj.exit

bb.e:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  tail call void @_ZN4llvh5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.aa)
  br label %_ZN4llvh5APInt11ashrInPlaceEj.exit

_ZN4llvh5APInt11ashrInPlaceEj.exit:               ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt12ashrSlowCaseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !22
  %i.m = and i64 %i.f, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = lshr i32 %1, 6                           ; 7 uses
  %i.p = and i32 %1, 63                           ; 3 uses
  %i.q = zext i32 %i.b to i64
  %i.r = add nuw nsw i64 %i.q, 63
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = trunc nuw nsw i64 %i.s to i32            ; 2 uses
  %i.u = sub nsw i32 %i.t, %i.o                   ; 3 uses
  %.not32 = icmp eq i32 %i.o, %i.t
  br i1 %.not32, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add nuw nsw i64 %i.s, 4294967295
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = sub i32 0, %i.b
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl i64 %i.y, %i.ab
  %i.ad = ashr exact i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !24
  %i.ae = icmp eq i32 %i.p, 0
  br i1 %i.ae, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.af = add nsw i32 %i.u, -1                    ; 4 uses
  %.not3334 = icmp eq i32 %i.af, 0
  %.pre = zext nneg i32 %i.p to i64               ; 6 uses
  br i1 %.not3334, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ag = sub nuw nsw i32 64, %i.p
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = zext i32 %i.af to i64                   ; 4 uses
  %xtraiter = and i64 %i.ai, 1
  %i.aj = icmp eq i32 %i.af, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ai, 4294967294
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.al = zext nneg i32 %i.o to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = shl nsw i32 %i.u, 3
  %i.ao = zext i32 %i.an to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false)
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod44 = trunc i32 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.aq = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ar = add i32 %i.o, %i.aq                     ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24
  %i.av = lshr i64 %i.au, %.pre
  %i.aw = add i32 %i.ar, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.ba = shl i64 %i.az, %i.ah
  %i.bb = or i64 %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.epil.init
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.pre-phi38 = phi i64 [ 0, %.preheader ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.w
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24
  %i.bg = lshr i64 %i.bf, %.pre
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi38
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !24
  %i.bi = load ptr, ptr %0, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.pre-phi38 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24
  %i.bl = shl i64 %i.bk, %.pre
  %i.bm = ashr exact i64 %i.bl, %.pre
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.bo = trunc nuw i64 %indvars.iv to i32
  %i.bp = add i32 %i.o, %i.bo                     ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bt = lshr i64 %i.bs, %.pre
  %i.bu = add i32 %i.bp, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.by = shl i64 %i.bx, %i.ah
  %i.bz = or i64 %i.by, %i.bt
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i32
  %i.cd = add i32 %i.o, %i.cc                     ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24
  %i.ch = lshr i64 %i.cg, %.pre
  %i.ci = add i32 %i.cd, 1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cm = shl i64 %i.cl, %i.ah
  %i.cn = or i64 %i.cm, %i.ch
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !213

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !22
  %i.cq = zext i32 %i.u to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = sext i1 %i.n to i8
  %i.ct = shl nuw nsw i32 %i.o, 3
  %i.cu = zext nneg i32 %i.ct to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 %i.cs, i64 %i.cu, i1 false)
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.cw = sub i32 0, %i.cv
  %i.cx = and i32 %i.cw, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 -1, %i.cy                      ; 2 uses
  %i.da = icmp ult i32 %i.cv, 65
  br i1 %i.da, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.db = load i64, ptr %0, align 8, !tbaa !22
  %i.dc = and i64 %i.db, %i.cz
  store i64 %i.dc, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

bb.h:                                             ; preds = %bb.f
  %i.dd = load ptr, ptr %0, align 8, !tbaa !22
  %i.de = zext i32 %i.cv to i64
  %i.df = add nuw nsw i64 %i.de, 63
  %i.dg = lshr i64 %i.df, 6
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8     ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !24
  %i.dk = and i64 %i.dj, %i.cz
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !24
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt11lshrInPlaceERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !22
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !22
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ] ; 5 uses
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ac = icmp eq i32 %i.aa, %i.b
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %0, align 8, !tbaa !22
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = lshr i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.h:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !22    ; 16 uses
  %i.ah = add nuw nsw i64 %i.c, 63
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN4llvh5APInt11lshrInPlaceEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = lshr i32 %i.aa, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ak) ; 9 uses
  %i.al = and i32 %i.aa, 63                       ; 3 uses
  %i.am = sub nsw i32 %i.aj, %.sroa.speculated.i.i.i ; 5 uses
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %bb.j, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.ak, %i.aj
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.ao = zext nneg i32 %i.al to i64              ; 4 uses
  %i.ap = sub nuw nsw i32 64, %i.al
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %i.au = lshr i64 %i.at, %i.ao                   ; 3 uses
  store i64 %i.au, ptr %i.ag, align 8, !tbaa !24
  %.not32.i1.i.i = icmp eq i32 %i.am, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.av = zext i32 %i.am to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %i.am, 2
  br i1 %i.ax, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, -2
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = shl nuw nsw i32 %i.am, 3
  %i.bb = zext nneg i32 %i.ba to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.az, i64 %i.bb, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %i.bc = phi ptr [ %i.ag, %.lr.ph.i.i.preheader.new ], [ %i.ce, %.lr.ph.i.i ]
  %i.bd = phi i64 [ %i.au, %.lr.ph.i.i.preheader.new ], [ %i.cd, %.lr.ph.i.i ]
  %i.be = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bf = add i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !24
  %i.bj = shl i64 %i.bi, %i.aq
  %i.bk = or i64 %i.bj, %i.bd
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !24
  %i.bl = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.bm = add i32 %.sroa.speculated.i.i.i, %i.bl  ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !24
  %i.bq = lshr i64 %i.bp, %i.ao                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.bs = add i32 %i.bm, 1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !24
  %i.bw = shl i64 %i.bv, %i.aq
  %i.bx = or i64 %i.bw, %i.bq
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !24
  %i.by = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.bz = add i32 %.sroa.speculated.i.i.i, %i.by  ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !24
  %i.cd = lshr i64 %i.cc, %i.ao                   ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !24
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ce, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init17 = phi i64 [ %i.au, %.lr.ph.i.i.preheader ], [ %i.cd, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init19 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader ], [ %i.bz, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.cf = add i32 %.epil.init19, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24
  %i.cj = shl i64 %i.ci, %i.aq
  %i.ck = or i64 %i.cj, %.epil.init17
  store i64 %i.ck, ptr %.epil.init, align 8, !tbaa !24
  %i.cl = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.cm = add i32 %.sroa.speculated.i.i.i, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !24
  %i.cq = lshr i64 %i.cp, %i.ao
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !24
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.j, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.cs = zext nneg i32 %i.am to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cs
  %i.cu = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.cv = zext nneg i32 %i.cu to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.cv, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.f, %bb.g, %bb.h, %.loopexit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt12lshrSlowCaseEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 63
  %i.f = lshr i64 %i.e, 6
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 3 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i32 %1, 6                           ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 9 uses
  %i.i = and i32 %1, 63                           ; 3 uses
  %i.j = sub nsw i32 %i.g, %.sroa.speculated.i    ; 5 uses
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not3137.not.i = icmp samesign ult i32 %i.h, %i.g
  br i1 %.not3137.not.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = zext nneg i32 %i.i to i64                ; 4 uses
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = zext nneg i32 %.sroa.speculated.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  %i.r = lshr i64 %i.q, %i.l                      ; 3 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !24
  %.not32.i1 = icmp eq i32 %i.j, 1
  br i1 %.not32.i1, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.s = zext i32 %i.j to i64
  %i.t = add nsw i64 %i.s, -1                     ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i32 %i.j, 2
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %.sroa.speculated.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v
  %i.x = shl nuw nsw i32 %i.j, 3
  %i.y = zext nneg i32 %i.x to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.a, ptr align 8 %i.w, i64 %i.y, i1 false)
  br label %.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv.next.i2 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph ] ; 4 uses
  %i.z = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ]
  %i.aa = phi i64 [ %i.r, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ]
  %i.ab = phi i32 [ %.sroa.speculated.i, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = add i32 %i.ab, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ag = shl i64 %i.af, %i.n
  %i.ah = or i64 %i.ag, %i.aa
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !24
  %i.ai = trunc nuw i64 %indvars.iv.next.i2 to i32
  %i.aj = add i32 %.sroa.speculated.i, %i.ai      ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !24
  %i.an = lshr i64 %i.am, %i.l                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i2 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i2, 1 ; 2 uses
  %i.ap = add i32 %i.aj, 1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = shl i64 %i.as, %i.n
  %i.au = or i64 %i.at, %i.an
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !24
  %i.av = trunc nuw i64 %indvars.iv.next.i to i32
  %i.aw = add i32 %.sroa.speculated.i, %i.av      ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.ba = lshr i64 %i.az, %i.l                    ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !24
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.next.i2, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.next.i2.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.bb, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init5 = phi i64 [ %i.r, %.lr.ph.preheader ], [ %i.ba, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init7 = phi i32 [ %.sroa.speculated.i, %.lr.ph.preheader ], [ %i.aw, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.bc = add i32 %.epil.init7, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24
  %i.bg = shl i64 %i.bf, %i.n
  %i.bh = or i64 %i.bg, %.epil.init5
  store i64 %i.bh, ptr %.epil.init, align 8, !tbaa !24
  %i.bi = trunc nuw i64 %indvars.iv.next.i2.epil.init to i32
  %i.bj = add i32 %.sroa.speculated.i, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24
  %i.bn = lshr i64 %i.bm, %i.l
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i2.epil.init
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !24
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i, %bb.c, %.preheader.i
  %i.bp = zext nneg i32 %i.j to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.bs = zext nneg i32 %i.br to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.bs, i1 false)
  br label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit

_ZN4llvh5APInt12tcShiftRightEPmjj.exit:           ; preds = %bb.a, %.loopexit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = lshr i32 %2, 6                           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.a) ; 9 uses
  %i.b = and i32 %2, 63                           ; 3 uses
  %i.c = sub i32 %1, %.sroa.speculated            ; 5 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not3137.not = icmp ugt i32 %1, %i.a
  br i1 %.not3137.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = zext nneg i32 %i.b to i64                ; 4 uses
  %i.f = sub nuw nsw i32 64, %i.b
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %i.h = zext nneg i32 %.sroa.speculated to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = lshr i64 %i.j, %i.e                      ; 3 uses
  store i64 %i.k, ptr %0, align 8, !tbaa !24
  %.not3241 = icmp eq i32 %i.c, 1
  br i1 %.not3241, label %.loopexit, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %.lr.ph
  %i.l = zext i32 %i.c to i64
  %i.m = add nsw i64 %i.l, -1                     ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i32 %i.c, 2
  br i1 %i.n, label %.lr.ph43.epil.preheader, label %.lr.ph43.preheader.new

.lr.ph43.preheader.new:                           ; preds = %.lr.ph43.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph43

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %.sroa.speculated to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = shl i32 %i.c, 3
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %i.p, i64 %i.r, i1 false)
  br label %.loopexit

.lr.ph43:                                         ; preds = %.lr.ph43, %.lr.ph43.preheader.new
  %indvars.iv.next42 = phi i64 [ 1, %.lr.ph43.preheader.new ], [ %indvars.iv.next.1, %.lr.ph43 ] ; 4 uses
  %i.s = phi ptr [ %0, %.lr.ph43.preheader.new ], [ %i.au, %.lr.ph43 ]
  %i.t = phi i64 [ %i.k, %.lr.ph43.preheader.new ], [ %i.at, %.lr.ph43 ]
  %i.u = phi i32 [ %.sroa.speculated, %.lr.ph43.preheader.new ], [ %i.ap, %.lr.ph43 ]
  %niter = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %niter.next.1, %.lr.ph43 ]
  %i.v = add i32 %i.u, 1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = shl i64 %i.y, %i.g
  %i.aa = or i64 %i.z, %i.t
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !24
  %i.ab = trunc nuw i64 %indvars.iv.next42 to i32
  %i.ac = add i32 %.sroa.speculated, %i.ab        ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ag = lshr i64 %i.af, %i.e                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next42 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next42, 1 ; 2 uses
  %i.ai = add i32 %i.ac, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = shl i64 %i.al, %i.g
  %i.an = or i64 %i.am, %i.ag
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !24
  %i.ao = trunc nuw i64 %indvars.iv.next to i32
  %i.ap = add i32 %.sroa.speculated, %i.ao        ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = lshr i64 %i.as, %i.e                    ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next42, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph43

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph43
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph43.epil.preheader

.lr.ph43.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph43.preheader
  %indvars.iv.next42.epil.init = phi i64 [ 1, %.lr.ph43.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %0, %.lr.ph43.preheader ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init45 = phi i64 [ %i.k, %.lr.ph43.preheader ], [ %i.at, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init47 = phi i32 [ %.sroa.speculated, %.lr.ph43.preheader ], [ %i.ap, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.av = add i32 %.epil.init47, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !24
  %i.az = shl i64 %i.ay, %i.g
  %i.ba = or i64 %i.az, %.epil.init45
  store i64 %i.ba, ptr %.epil.init, align 8, !tbaa !24
  %i.bb = trunc nuw i64 %indvars.iv.next42.epil.init to i32
  %i.bc = add i32 %.sroa.speculated, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24
  %i.bg = lshr i64 %i.bf, %i.e
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next42.epil.init
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph43.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.lr.ph, %.preheader, %bb.c
  %i.bi = zext i32 %i.c to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bk = shl nuw nsw i32 %.sroa.speculated, 3
  %i.bl = zext nneg i32 %i.bk to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bl, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntlSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !22
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !22
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntlSEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.aa) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt11shlSlowCaseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 63
  %i.f = lshr i64 %i.e, 6                         ; 3 uses
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 4 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i32 %1, 6                           ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 11 uses
  %i.i = and i32 %1, 63                           ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.h, %i.g
  br i1 %i.k, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = zext nneg i32 %i.i to i64                ; 4 uses
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %indvars.iv.next.i1 = add nsw i64 %i.f, -1      ; 3 uses
  %indvars.i2 = trunc nsw i64 %indvars.iv.next.i1 to i32 ; 2 uses
  %i.o = sub nuw nsw i32 %indvars.i2, %.sroa.speculated.i ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24
  %i.s = shl i64 %i.r, %i.l                       ; 3 uses
  %i.t = and i64 %indvars.iv.next.i1, 4294967295  ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 3 uses
  store i64 %i.s, ptr %i.u, align 8, !tbaa !24
  %i.v = icmp ult i32 %.sroa.speculated.i, %indvars.i2
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.w = xor i32 %.sroa.speculated.i, -1
  %i.x = sext i32 %i.w to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.y = add nsw i32 %i.g, -2
  %xtraiter = and i32 %i.o, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.t
  %i.z = load i64, ptr %gep.prol, align 8, !tbaa !24
  %i.aa = lshr i64 %i.z, %i.n
  %i.ab = or i64 %i.aa, %i.s
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !24
  %indvars.iv.next.i.prol = add nsw i64 %i.f, -2  ; 3 uses
  %indvars.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.ac = sub nuw nsw i32 %indvars.prol, %.sroa.speculated.i
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ag = shl i64 %i.af, %i.l                     ; 2 uses
  %i.ah = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !24
  %indvars.iv.next.prol = add nsw i64 %i.t, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.unr8 = phi i64 [ %i.s, %.lr.ph.preheader ], [ %i.ag, %.lr.ph.prol ]
  %indvars.iv.next.i3.unr = phi i64 [ %indvars.iv.next.i1, %.lr.ph.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.prol ]
  %i.aj = icmp eq i32 %i.y, %.sroa.speculated.i
  br i1 %i.aj, label %.loopexit.i, label %.lr.ph
end_hunk_3
begin_hunk_4_@_ZL12rotateModulojRKN4llvh5APIntE:bb.a
bb.j:                                             ; preds = %.thread, %bb.i
  %i.bx = phi i32 [ %i.bk, %.thread ], [ %i.bv, %bb.i ]
  %i.by = phi i64 [ %i.bi, %.thread ], [ %i.bt, %bb.i ]
  %i.bz = phi ptr [ %i.ay, %.thread ], [ %.pre, %bb.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #23
  br label %_ZN4llvh5APIntD2Ev.exit9

_ZN4llvh5APIntD2Ev.exit9:                         ; preds = %bb.i, %bb.j, %_ZN4llvh5APIntD2Ev.exit8
  %.pre.i.i10.in = phi i64 [ %i.bq, %_ZN4llvh5APIntD2Ev.exit8 ], [ %i.by, %bb.j ], [ %i.bt, %bb.i ] ; 3 uses
  %i.ca = phi i32 [ %i.bs, %_ZN4llvh5APIntD2Ev.exit8 ], [ %i.bx, %bb.j ], [ %i.bv, %bb.i ] ; 5 uses
  %.pre.i.i10 = inttoptr i64 %.pre.i.i10.in to ptr ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.cb = icmp ult i32 %i.ca, 65                  ; 3 uses
  br i1 %i.cb, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh5APIntD2Ev.exit9
  %i.cc = zext i32 %i.ca to i64
  %i.cd = add nuw nsw i64 %i.cc, 63
  %i.ce = lshr i64 %i.cd, 6                       ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl i32 %i.cf, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.l ], [ %i.ce, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.cn, %bb.l ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i10, i64 %indvars.iv.next.i.i.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.l, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.k
  %i.ck = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %.019.i.i.i.i.i, %i.cl
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cn = add i32 %.019.i.i.i.i.i, 64
  %i.co = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.co, label %bb.k, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.l, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.cm, %.thread.i.i.i.i.i ], [ %i.cg, %bb.l ]
  %i.cp = and i32 %i.ca, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.cp, 0
  %.neg.i.i.i.i.i = or i32 %i.ca, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.cq = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.cr = sub i32 %i.ca, %i.cq
  %i.cs = icmp ugt i32 %i.cr, 64
  br i1 %i.cs, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i10, align 8, !tbaa !22
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %_ZN4llvh5APIntD2Ev.exit9
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %.pre.i.i10.in, %_ZN4llvh5APIntD2Ev.exit9 ]
  %i.ct = icmp ugt i64 %.0.i.i.i, %i.ar
  br i1 %i.ct, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i11 = select i1 %i.cb, ptr %2, ptr %.pre.i.i10
  %.0.i.i = load i64, ptr %spec.select.i.i11, align 8, !tbaa !22
  %i.cu = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.m
  %i.cv = phi i32 [ %i.cu, %bb.m ], [ %0, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %0, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ]
  %i.cw = icmp eq i64 %.pre.i.i10.in, 0
  %or.cond = select i1 %i.cb, i1 true, i1 %i.cw
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit12, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i10) #23
  br label %_ZN4llvh5APIntD2Ev.exit12

_ZN4llvh5APIntD2Ev.exit12:                        ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %i.cv
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotrERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call fastcc noundef i32 @_ZL12rotateModulojRKN4llvh5APIntE(i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(12) %2)
  tail call void @_ZNK4llvh5APInt4rotrEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotrEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %i.c = urem i32 %2, %i.b                        ; 5 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !21
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !22
  store i64 %i.g, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741816                 ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !22
  %i.m = load ptr, ptr %1, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %i.k, i1 false)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.n, label %_ZNK4llvh5APInt4lshrEj.exit.thread, label %bb.f

_ZNK4llvh5APInt4lshrEj.exit.thread:               ; preds = %bb.e
  %i.o = load i64, ptr %1, align 8, !tbaa !22, !noalias !231 ; 2 uses
  %i.p = zext nneg i32 %i.c to i64
  %i.q = lshr i64 %i.o, %i.p
  %i.r = inttoptr i64 %i.o to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.s, align 8, !tbaa !21, !alias.scope !232
  br label %_ZNK4llvh5APInt3shlEj.exit

bb.f:                                             ; preds = %bb.e
  %i.t = zext i32 %i.b to i64
  %i.u = add nuw nsw i64 %i.t, 63                 ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741816                 ; 2 uses
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #22, !noalias !231 ; 18 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !noalias !231 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.z, i64 %i.w, i1 false), !noalias !231
  %i.aa = lshr i64 %i.u, 6
  %i.ab = trunc nuw nsw i64 %i.aa to i32          ; 3 uses
  %i.ac = lshr i32 %i.c, 6                        ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.ac) ; 9 uses
  %i.ad = and i32 %i.c, 63                        ; 3 uses
  %i.ae = sub nsw i32 %i.ab, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %bb.g, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.ac, %i.ab
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK4llvh5APInt4lshrEj.exit

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.ag = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.ah = sub nuw nsw i32 64, %i.ad
  %i.ai = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.aj = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24, !noalias !231
  %i.am = lshr i64 %i.al, %i.ag                   ; 3 uses
  store i64 %i.am, ptr %i.x, align 8, !tbaa !24, !noalias !231
  %.not32.i1.i.i.i = icmp eq i32 %i.ae, 1
  br i1 %.not32.i1.i.i.i, label %_ZNK4llvh5APInt4lshrEj.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.an = zext i32 %i.ae to i64
  %i.ao = add nsw i64 %i.an, -1                   ; 3 uses
  %xtraiter = and i64 %i.ao, 1
  %i.ap = icmp eq i32 %i.ae, 2
  br i1 %i.ap, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aq = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aq
  %i.as = shl nuw nsw i32 %i.ae, 3
  %i.at = zext nneg i32 %i.as to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.ar, i64 %i.at, i1 false), !noalias !231
  br label %_ZNK4llvh5APInt4lshrEj.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.au = phi ptr [ %i.x, %.lr.ph.i.i.i.preheader.new ], [ %i.bw, %.lr.ph.i.i.i ]
  %i.av = phi i64 [ %i.am, %.lr.ph.i.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i.i ]
  %i.aw = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.br, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ax = add i32 %i.aw, 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24, !noalias !231
  %i.bb = shl i64 %i.ba, %i.ai
  %i.bc = or i64 %i.bb, %i.av
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !24, !noalias !231
  %i.bd = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.be = add i32 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24, !noalias !231
  %i.bi = lshr i64 %i.bh, %i.ag                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !24, !noalias !231
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.bk = add i32 %i.be, 1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24, !noalias !231
  %i.bo = shl i64 %i.bn, %i.ai
  %i.bp = or i64 %i.bo, %i.bi
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !24, !noalias !231
  %i.bq = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.br = add i32 %.sroa.speculated.i.i.i.i, %i.bq ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !24, !noalias !231
  %i.bv = lshr i64 %i.bu, %i.ag                   ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !24, !noalias !231
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4llvh5APInt4lshrEj.exit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.x, %.lr.ph.i.i.i.preheader ], [ %i.bw, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ]
  %.epil.init20 = phi i64 [ %i.am, %.lr.ph.i.i.i.preheader ], [ %i.bv, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ]
  %.epil.init22 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.br, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.bx = add i32 %.epil.init22, 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !24, !noalias !231
  %i.cb = shl i64 %i.ca, %i.ai
  %i.cc = or i64 %i.cb, %.epil.init20
  store i64 %i.cc, ptr %.epil.init, align 8, !tbaa !24, !noalias !231
  %i.cd = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.ce = add i32 %.sroa.speculated.i.i.i.i, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !24, !noalias !231
  %i.ci = lshr i64 %i.ch, %i.ag
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !24, !noalias !231
  br label %_ZNK4llvh5APInt4lshrEj.exit

_ZNK4llvh5APInt4lshrEj.exit:                      ; preds = %.lr.ph.i.i.i.epil.preheader, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g
  %i.ck = zext nneg i32 %i.ae to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ck
  %i.cm = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cn = zext nneg i32 %i.cm to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cl, i8 0, i64 %i.cn, i1 false), !noalias !231
  %.pre = load i32, ptr %i.a, align 8, !tbaa !21  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %.pre, ptr %i.co, align 8, !tbaa !21, !alias.scope !233
  %i.cp = icmp ult i32 %.pre, 65
  br i1 %i.cp, label %_ZNK4llvh5APInt3shlEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh5APInt4lshrEj.exit
  %i.cq = zext i32 %.pre to i64
  %i.cr = add nuw nsw i64 %i.cq, 63
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = and i64 %i.cs, 1073741816               ; 2 uses
  %i.cu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #22, !noalias !233 ; 2 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !22, !noalias !233
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %i.cv, i64 %i.ct, i1 false), !noalias !233
  br label %_ZNK4llvh5APInt3shlEj.exit

_ZNK4llvh5APInt3shlEj.exit:                       ; preds = %_ZNK4llvh5APInt4lshrEj.exit, %_ZNK4llvh5APInt4lshrEj.exit.thread, %bb.h
  %i.cw = phi ptr [ %i.co, %bb.h ], [ %i.s, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %i.co, %_ZNK4llvh5APInt4lshrEj.exit ] ; 2 uses
  %.pre.pn = phi i32 [ %.pre, %bb.h ], [ %i.b, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %.pre, %_ZNK4llvh5APInt4lshrEj.exit ]
  %.sroa.0.013 = phi i64 [ %i.y, %bb.h ], [ %i.q, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %i.y, %_ZNK4llvh5APInt4lshrEj.exit ] ; 4 uses
  %.sink = phi ptr [ %i.cu, %bb.h ], [ %i.r, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %i.z, %_ZNK4llvh5APInt4lshrEj.exit ]
  %i.cx = sub i32 %.pre.pn, %i.c
  store ptr %.sink, ptr %3, align 8, !tbaa !22, !alias.scope !233
  %i.cy = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntlSEj(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.cx) ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.cz = load i32, ptr %i.cw, align 8, !tbaa !21, !noalias !234 ; 4 uses
  %i.da = icmp ult i32 %i.cz, 65
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvh5APInt3shlEj.exit
  %i.db = load i64, ptr %3, align 8, !tbaa !22, !noalias !234
  %i.dc = or i64 %i.db, %.sroa.0.013
  br label %_ZN4llvh5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZNK4llvh5APInt3shlEj.exit
  %i.dd = load ptr, ptr %3, align 8, !tbaa !22, !noalias !234 ; 8 uses
  %i.de = inttoptr i64 %.sroa.0.013 to ptr        ; 8 uses
  %i.df = zext i32 %i.cz to i64
  %i.dg = add nuw nsw i64 %i.df, 63
  %i.dh = lshr i64 %i.dg, 6                       ; 6 uses
  %min.iters.check = icmp ult i32 %i.cz, 449
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i4.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j
  %i.di = shl nuw nsw i64 %i.dh, 3                ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.de, i64 %i.di
  %bound0 = icmp ult ptr %i.dd, %i.dk
  %bound1 = icmp ugt ptr %i.dj, %i.de
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <2 x i64>, ptr %i.dl, align 8, !tbaa !24, !alias.scope !235, !noalias !234
  %wide.load16 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !24, !alias.scope !235, !noalias !234
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %wide.load17 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !24, !alias.scope !236, !noalias !237
  %wide.load18 = load <2 x i64>, ptr %i.do, align 8, !tbaa !24, !alias.scope !236, !noalias !237
  %i.dp = or <2 x i64> %wide.load17, %wide.load
  %i.dq = or <2 x i64> %wide.load18, %wide.load16
  store <2 x i64> %i.dp, ptr %i.dn, align 8, !tbaa !24, !alias.scope !236, !noalias !237
  store <2 x i64> %i.dq, ptr %i.do, align 8, !tbaa !24, !alias.scope !236, !noalias !237
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntoRERKS0_.exit.loopexit.i, label %.lr.ph.i.i.i.i4.preheader

.lr.ph.i.i.i.i4.preheader:                        ; preds = %vector.memcheck, %bb.j, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.j ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter24 = and i64 %i.dh, 3                  ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i.i4.prol

.lr.ph.i.i.i.i4.prol:                             ; preds = %.lr.ph.i.i.i.i4.preheader, %.lr.ph.i.i.i.i4.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i5.prol, %.lr.ph.i.i.i.i4.prol ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i4.prol ], [ 0, %.lr.ph.i.i.i.i4.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i.i.i.i.prol
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !24, !noalias !234
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i.i.prol ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !24, !noalias !234
  %i.dw = or i64 %i.dv, %i.dt
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !24, !noalias !234
  %indvars.iv.next.i.i.i.i5.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter24
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i.i4.prol, !llvm.loop !229

.lr.ph.i.i.i.i4.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i4.prol, %.lr.ph.i.i.i.i4.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ], [ %indvars.iv.next.i.i.i.i5.prol, %.lr.ph.i.i.i.i4.prol ]
  %i.dx = sub nsw i64 %indvars.iv.i.i.i.i.ph, %i.dh
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %_ZN4llvh5APIntoRERKS0_.exit.loopexit.i, label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %.lr.ph.i.i.i.i4.prol.loopexit, %.lr.ph.i.i.i.i4
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i5.3, %.lr.ph.i.i.i.i4 ], [ %indvars.iv.i.i.i.i.unr, %.lr.ph.i.i.i.i4.prol.loopexit ] ; 6 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i.i.i.i
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !24, !noalias !234
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !24, !noalias !234
  %i.ed = or i64 %i.ec, %i.ea
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !24, !noalias !234
  %indvars.iv.next.i.i.i.i5 = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i.i5
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !24, !noalias !234
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i.i5 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !24, !noalias !234
  %i.ei = or i64 %i.eh, %i.ef
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !24, !noalias !234
  %indvars.iv.next.i.i.i.i5.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i.i5.1
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !24, !noalias !234
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i.i5.1 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !24, !noalias !234
  %i.en = or i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.el, align 8, !tbaa !24, !noalias !234
  %indvars.iv.next.i.i.i.i5.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i.i5.2
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !24, !noalias !234
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i.i5.2 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !24, !noalias !234
  %i.es = or i64 %i.er, %i.ep
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !24, !noalias !234
  %indvars.iv.next.i.i.i.i5.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i5.3, %i.dh
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN4llvh5APIntoRERKS0_.exit.loopexit.i, label %.lr.ph.i.i.i.i4, !llvm.loop !230

_ZN4llvh5APIntoRERKS0_.exit.loopexit.i:           ; preds = %.lr.ph.i.i.i.i4.prol.loopexit, %.lr.ph.i.i.i.i4, %middle.block
  %.pre.i = load i64, ptr %3, align 8, !noalias !234
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh5APIntoRERKS0_.exit.loopexit.i, %bb.i
  %i.et = phi i64 [ %.pre.i, %_ZN4llvh5APIntoRERKS0_.exit.loopexit.i ], [ %i.dc, %bb.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cz, ptr %i.eu, align 8, !tbaa !21, !alias.scope !234
  store i64 %i.et, ptr %0, align 8, !alias.scope !234
  store i32 0, ptr %i.cw, align 8, !tbaa !21, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ev = icmp eq i64 %.sroa.0.013, 0
  %or.cond = select i1 %i.n, i1 true, i1 %i.ev
  br i1 %or.cond, label %_ZN4llvh5APIntC2ERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.ew = inttoptr i64 %.sroa.0.013 to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #23
  br label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.k, %_ZN4llvh5APIntD2Ev.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4sqrtEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 23 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %10 = alloca %"class.llvh::APInt", align 8      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 15 uses
  %i.c = sub i32 0, %i.b                          ; 7 uses
end_hunk_4
begin_hunk_5_@_ZN4llvh5APInt7udivremERKS0_S2_RS0_S3_:bb.a
  %i.hs = add nsw i64 %i.hr, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ho, i8 0, i64 %i.hs, i1 false)
  br label %_ZN4llvh5APIntaSEm.exit

_ZN4llvh5APIntaSEm.exit:                          ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i145, %bb.an
  %i.ht = load i32, ptr %i.gn, align 8, !tbaa !21 ; 3 uses
  %i.hu = icmp ult i32 %i.ht, 65
  br i1 %i.hu, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i147, label %bb.ao

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i147:      ; preds = %_ZN4llvh5APIntaSEm.exit
  %i.hv = sub nsw i32 0, %i.ht
  %i.hw = and i32 %i.hv, 63
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = lshr i64 -1, %i.hx
  %i.hz = and i64 %i.hy, %i.he
  store i64 %i.hz, ptr %3, align 8, !tbaa !22
  br label %_ZN4llvh5APIntaSEm.exit148

bb.ao:                                            ; preds = %_ZN4llvh5APIntaSEm.exit
  %i.ia = load ptr, ptr %3, align 8, !tbaa !22
  store i64 %i.he, ptr %i.ia, align 8, !tbaa !24
  %i.ib = load ptr, ptr %3, align 8, !tbaa !22
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = zext i32 %i.ht to i64
  %i.ie = add nuw nsw i64 %i.id, 63
  %sh.diff.i146 = lshr i64 %i.ie, 3
  %i.if = and i64 %sh.diff.i146, 1073741816
  %i.ig = add nsw i64 %i.if, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ic, i8 0, i64 %i.ig, i1 false)
  br label %_ZN4llvh5APIntaSEm.exit148

bb.ap:                                            ; preds = %_ZN4llvh5APInt10reallocateEj.exit144
  %i.ih = load ptr, ptr %1, align 8, !tbaa !22
  %i.ii = load ptr, ptr %2, align 8, !tbaa !22
  %i.ij = load ptr, ptr %3, align 8, !tbaa !22
  tail call void @_ZN4llvh5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.gz, i32 noundef %i.ar, ptr noundef %i.ih, i32 noundef %i.bt, ptr noundef %i.ii, ptr noundef %i.ij)
  %i.ik = load ptr, ptr %2, align 8, !tbaa !22
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.aq
  %i.im = sub nsw i64 %i.z, %i.aq
  %i.in = shl nsw i64 %i.im, 3
  %i.io = and i64 %i.in, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.il, i8 0, i64 %i.io, i1 false)
  %i.ip = load ptr, ptr %3, align 8, !tbaa !22
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.bs
  %i.ir = sub nsw i64 %i.z, %i.bs
  %i.is = shl nsw i64 %i.ir, 3
  %i.it = and i64 %i.is, 4294967288
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.iq, i8 0, i64 %i.it, i1 false)
  br label %_ZN4llvh5APIntaSEm.exit148

_ZN4llvh5APIntaSEm.exit148:                       ; preds = %bb.ao, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i147, %_ZN4llvh5APIntD2Ev.exit105, %_ZN4llvh5APIntD2Ev.exit125, %_ZN4llvh5APIntD2Ev.exit143, %bb.ap, %_ZN4llvh5APIntD2Ev.exit74
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt5magicEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.llvh::APInt::ms") align 8 captures(none) initializes((0, 12)) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 12 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !21
  store i64 0, ptr %3, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !21, !alias.scope !328
  %i.g = icmp ult i32 %i.e, 65
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.e, 63
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  br label %_ZN4llvh5APIntD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.e to i64
  %i.n = add nuw nsw i64 %i.m, 63                 ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741816                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22, !noalias !328 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.p, i1 false), !noalias !328
  store i64 0, ptr %i.q, align 8, !tbaa !24, !noalias !328
  %i.r = sub i32 0, %i.e
  %i.s = and i32 %i.r, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t
  %.pre7.i.i = lshr i64 %i.n, 6
  %i.v = getelementptr [8 x i8], ptr %i.q, i64 %.pre7.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 -8       ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24, !noalias !328
  %i.y = and i64 %i.x, %i.u
  store i64 %i.y, ptr %i.w, align 8, !tbaa !24, !noalias !328
  %i.z = add i32 %i.e, -1                         ; 2 uses
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = lshr i32 %i.z, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !24, !noalias !328
  %i.ah = or i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !24, !noalias !328
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 12 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !22, !alias.scope !328
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 1, ptr %i.aj, align 8, !tbaa !21
  store i64 0, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK4llvh5APInt3absEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.ak = load i64, ptr %6, align 8               ; 7 uses
  store i64 %i.ak, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !21 ; 5 uses
  store i32 %i.am, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.an = load i32, ptr %i.d, align 8, !tbaa !21  ; 7 uses
  %i.ao = add i32 %i.an, -1                       ; 3 uses
  %i.ap = icmp ult i32 %i.an, 65                  ; 3 uses
  %i.aq = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ar = inttoptr i64 %i.ak to ptr               ; 5 uses
  br i1 %i.ap, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.as = zext i32 %i.an to i64
  %i.at = add nuw nsw i64 %i.as, 63               ; 3 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741816               ; 4 uses
  %i.aw = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #22, !noalias !329 ; 24 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22, !noalias !329
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.ay, i64 %i.av, i1 false), !noalias !329
  %i.az = lshr i64 %i.at, 6                       ; 7 uses
  %i.ba = trunc nuw nsw i64 %i.az to i32          ; 3 uses
  %i.bb = lshr i32 %i.ao, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.bb) ; 9 uses
  %i.bc = and i32 %i.ao, 63                       ; 3 uses
  %i.bd = sub nsw i32 %i.ba, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.be = icmp eq i32 %i.bc, 0
  br i1 %i.be, label %bb.e, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.d
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.bb, %i.ba
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.bf = zext nneg i32 %i.bc to i64              ; 4 uses
  %i.bg = sub nuw nsw i32 64, %i.bc
  %i.bh = zext nneg i32 %i.bg to i64              ; 3 uses
  %i.bi = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24, !noalias !329
  %i.bl = lshr i64 %i.bk, %i.bf                   ; 3 uses
  store i64 %i.bl, ptr %i.aw, align 8, !tbaa !24, !noalias !329
  %.not32.i1.i.i.i = icmp eq i32 %i.bd, 1
  br i1 %.not32.i1.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.bm = zext i32 %i.bd to i64
  %i.bn = add nsw i64 %i.bm, -1                   ; 3 uses
  %xtraiter = and i64 %i.bn, 1
  %i.bo = icmp eq i32 %i.bd, 2
  br i1 %i.bo, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bn, -2
  br label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bp = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.br = shl nuw nsw i32 %i.bd, 3
  %i.bs = zext nneg i32 %i.br to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr nonnull align 8 %i.bq, i64 %i.bs, i1 false), !noalias !329
  br label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.bt = phi ptr [ %i.aw, %.lr.ph.i.i.i.preheader.new ], [ %i.cv, %.lr.ph.i.i.i ]
  %i.bu = phi i64 [ %i.bl, %.lr.ph.i.i.i.preheader.new ], [ %i.cu, %.lr.ph.i.i.i ]
  %i.bv = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.cq, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.bw = add i32 %i.bv, 1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !24, !noalias !329
  %i.ca = shl i64 %i.bz, %i.bh
  %i.cb = or i64 %i.ca, %i.bu
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !24, !noalias !329
  %i.cc = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.cd = add i32 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24, !noalias !329
  %i.ch = lshr i64 %i.cg, %i.bf                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !24, !noalias !329
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.cj = add i32 %i.cd, 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !24, !noalias !329
  %i.cn = shl i64 %i.cm, %i.bh
  %i.co = or i64 %i.cn, %i.ch
  store i64 %i.co, ptr %i.ci, align 8, !tbaa !24, !noalias !329
  %i.cp = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.cq = add i32 %.sroa.speculated.i.i.i.i, %i.cp ; 3 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !24, !noalias !329
  %i.cu = lshr i64 %i.ct, %i.bf                   ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !24, !noalias !329
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.lr.ph.preheader.i.i.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.aw, %.lr.ph.i.i.i.preheader ], [ %i.cv, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %.epil.init835 = phi i64 [ %i.bl, %.lr.ph.i.i.i.preheader ], [ %i.cu, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %.epil.init837 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cq, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod838 = trunc i64 %i.bn to i1
  call void @llvm.assume(i1 %lcmp.mod838)
  %i.cw = add i32 %.epil.init837, 1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !24, !noalias !329
  %i.da = shl i64 %i.cz, %i.bh
  %i.db = or i64 %i.da, %.epil.init835
  store i64 %i.db, ptr %.epil.init, align 8, !tbaa !24, !noalias !329
  %i.dc = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.dd = add i32 %.sroa.speculated.i.i.i.i, %i.dc
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !24, !noalias !329
  %i.dh = lshr i64 %i.dg, %i.bf
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !24, !noalias !329
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.epil.preheader, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.dj = zext nneg i32 %i.bd to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dj
  %i.dl = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.dm = zext nneg i32 %i.dl to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dk, i8 0, i64 %i.dm, i1 false), !noalias !329
  %i.dn = icmp eq i64 %i.az, 1
  br i1 %i.dn, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter842 = and i64 %i.az, 134217726
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i12 ] ; 4 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i12 ] ; 2 uses
  %niter843 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter843.next.1, %.lr.ph.i.i.i12 ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !24, !noalias !330 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !24, !noalias !330
  %i.ds = add i64 %i.dr, %i.dp                    ; 3 uses
  %i.dt = icmp uge i64 %i.ds, %i.dp
  %i.du = add i64 %i.ds, 1                        ; 2 uses
  %i.dv = icmp ugt i64 %i.du, %i.dp
  %.sink.i.i.i = select i1 %.02021.i.i.i, i64 %i.ds, i64 %i.du
  %.1.in.i.i.i = select i1 %.02021.i.i.i, i1 %i.dt, i1 %i.dv ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.do, align 8, !tbaa !24, !noalias !330
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !24, !noalias !330 ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !24, !noalias !330
  %i.ea = add i64 %i.dz, %i.dx                    ; 3 uses
  %i.eb = icmp uge i64 %i.ea, %i.dx
  %i.ec = add i64 %i.ea, 1                        ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, %i.dx
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.ea, i64 %i.ec
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.eb, i1 %i.ed ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.dw, align 8, !tbaa !24, !noalias !330
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter843.next.1 = add nuw nsw i64 %niter843, 2 ; 2 uses
  %niter843.ncmp.1 = icmp eq i64 %niter843.next.1, %unroll_iter842
  br i1 %niter843.ncmp.1, label %.lr.ph.preheader.i.i.i16.unr-lcssa, label %.lr.ph.i.i.i12, !llvm.loop !3

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i: ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.ee = load i64, ptr %1, align 8, !tbaa !22, !noalias !329
  %i.ef = zext nneg i32 %i.ao to i64
  %i.eg = lshr i64 %i.ee, %i.ef
  %i.eh = add i64 %i.eg, %i.aq
  %i.ei = sub nsw i32 0, %i.an
  %i.ej = and i32 %i.ei, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = lshr i64 -1, %i.ek                      ; 2 uses
  %i.em = and i64 %i.eh, %i.el                    ; 3 uses
  store i64 %i.em, ptr %4, align 8
  store i32 %i.an, ptr %i.c, align 8, !tbaa !21
  %i.en = add i64 %i.em, -1
  %i.eo = and i64 %i.en, %i.el
  %i.ep = inttoptr i64 %i.em to ptr
  br label %_ZN4llvhmiENS_5APIntEm.exit

.lr.ph.preheader.i.i.i16.unr-lcssa:               ; preds = %.lr.ph.i.i.i12
  %i.eq = and i64 %i.at, 64
  %lcmp.mod840.not = icmp eq i64 %i.eq, 0
  br i1 %lcmp.mod840.not, label %.lr.ph.preheader.i.i.i16, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %.lr.ph.preheader.i.i.i16.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.preheader.i.i.i16.unr-lcssa ] ; 2 uses
  %.02021.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %.lr.ph.preheader.i.i.i16.unr-lcssa ]
  %lcmp.mod841 = trunc i64 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod841)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !24, !noalias !330
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.epil.init
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !24, !noalias !330
  %i.ev = add i64 %i.eu, %i.es
  %not..02021.i.i.i.epil.init = xor i1 %.02021.i.i.i.epil.init, true
  %i.ew = zext i1 %not..02021.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.ev, %i.ew
  store i64 %.sink.i.i.i.epil, ptr %i.er, align 8, !tbaa !24, !noalias !330
  br label %.lr.ph.preheader.i.i.i16

.lr.ph.preheader.i.i.i16:                         ; preds = %.lr.ph.preheader.i.i.i16.unr-lcssa, %.lr.ph.i.i.i12.epil.preheader
  %i.ex = sub i32 0, %i.an
  %i.ey = and i32 %i.ex, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez                      ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %i.aw, i64 %i.az
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8     ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !24, !noalias !330
  %i.fe = and i64 %i.fd, %i.fa
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !24, !noalias !330
  store i64 %i.ax, ptr %4, align 8
  store i32 %i.an, ptr %i.c, align 8, !tbaa !21
  %i.ff = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #22 ; 6 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ff, ptr nonnull align 8 %i.aw, i64 %i.av, i1 false)
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !24, !noalias !331 ; 2 uses
  %i.fi = add i64 %i.fh, -1
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !24, !noalias !331
  %.not.peel.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i18, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.preheader.i.i.i16, %.lr.ph.i.i.i18
  %indvars.iv.i.i.i19 = phi i64 [ %indvars.iv.next.i.i.i20, %.lr.ph.i.i.i18 ], [ 1, %.lr.ph.preheader.i.i.i16 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i.i.i19 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !24, !noalias !331 ; 2 uses
  %i.fl = add i64 %i.fk, -1
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !24, !noalias !331
  %.not.i.i.i = icmp ne i64 %i.fk, 0
  %indvars.iv.next.i.i.i20 = add nuw nsw i64 %indvars.iv.i.i.i19, 1 ; 2 uses
  %exitcond.not.i.i.i21 = icmp eq i64 %indvars.iv.next.i.i.i20, %i.az
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i21
  br i1 %or.cond.i.i, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i, label %.lr.ph.i.i.i18, !llvm.loop !2

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i: ; preds = %.lr.ph.i.i.i18, %.lr.ph.preheader.i.i.i16
  %i.fm = getelementptr [8 x i8], ptr %i.ff, i64 %i.az
  %i.fn = getelementptr i8, ptr %i.fm, i64 -8     ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !24, !noalias !331
  %i.fp = and i64 %i.fo, %i.fa
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !24, !noalias !331
  br label %_ZN4llvhmiENS_5APIntEm.exit

_ZN4llvhmiENS_5APIntEm.exit:                      ; preds = %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i
  %i.fq = phi ptr [ %i.ep, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i ], [ %i.aw, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i ] ; 2 uses
  %.sroa.0473.1 = phi i64 [ %i.eo, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i ], [ %i.fg, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNK4llvh5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !21, !noalias !332 ; 7 uses
  %i.ft = icmp ult i32 %i.fs, 65
  br i1 %i.ft, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i32, label %bb.f

bb.f:                                             ; preds = %_ZN4llvhmiENS_5APIntEm.exit
  %i.fu = load ptr, ptr %7, align 8, !tbaa !22, !noalias !332 ; 2 uses
  %i.fv = zext i32 %i.fs to i64
  %i.fw = add nuw nsw i64 %i.fv, 63               ; 2 uses
  %i.fx = lshr i64 %i.fw, 6                       ; 10 uses
  %min.iters.check = icmp ult i32 %i.fs, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.fx, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %index ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fy, align 8, !tbaa !24, !noalias !332
  %wide.load782 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !24, !noalias !332
  %i.ga = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.gb = xor <2 x i64> %wide.load782, splat (i64 -1)
  store <2 x i64> %i.ga, ptr %i.fy, align 8, !tbaa !24, !noalias !332
  store <2 x i64> %i.gb, ptr %i.fz, align 8, !tbaa !24, !noalias !332
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.f, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !24, !noalias !332
  %i.gf = xor i64 %i.ge, -1
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !24, !noalias !332
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.fx
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !282

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.gg = sub i32 0, %i.fs
  %i.gh = and i32 %i.gg, 63
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = lshr i64 -1, %i.gi                      ; 3 uses
  %i.gk = load ptr, ptr %7, align 8, !tbaa !22, !noalias !332
end_hunk_5
begin_hunk_6_@_ZNK4llvh5APInt4uremERKS0_:bb.a
  %i.ck = and i64 %i.cj, %i.cg
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit35

bb.h:                                             ; preds = %bb.g
  %i.cl = icmp samesign ult i64 %i.af, %i.bj
  br i1 %i.cl, label %_ZN4llvh5APIntC2ERKS0_.exit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not.i.i.i4381 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i4381, label %_ZNK4llvh5APInteqERKS0_.exit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i.i43 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i43, label %_ZNK4llvh5APInteqERKS0_.exit, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %indvars.iv.i.i.i82 = phi i64 [ %i.cm, %bb.i ], [ %i.o, %.preheader ]
  %i.cm = add nsw i64 %indvars.iv.i.i.i82, -1     ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cm
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.co, %i.cq
  br i1 %.not13.i.i.i, label %bb.i, label %_ZNK4llvh5APInt3ultERKS0_.exit, !llvm.loop !7

_ZNK4llvh5APInt3ultERKS0_.exit:                   ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.co, %i.cq
  br i1 %.not, label %_ZNK4llvh5APInteqERKS0_.exit, label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %_ZNK4llvh5APInt3ultERKS0_.exit, %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.cr, align 8, !tbaa !21
  %i.cs = lshr i64 %i.n, 3
  %i.ct = and i64 %i.cs, 1073741816               ; 2 uses
  %i.cu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #22 ; 2 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !22
  %i.cv = load ptr, ptr %1, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %i.cv, i64 %i.ct, i1 false)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

_ZNK4llvh5APInteqERKS0_.exit:                     ; preds = %bb.i, %.preheader, %_ZNK4llvh5APInt3ultERKS0_.exit
  %i.cw = lshr i64 %i.n, 3
  %.idx.i.i = and i64 %i.cw, 1073741816
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.bf, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef 0, i1 noundef zeroext false)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

bb.k:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  %i.cx = icmp eq i64 %i.af, 1
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cy = load i64, ptr %i.q, align 8, !tbaa !24
  %i.cz = load i64, ptr %i.bf, align 8, !tbaa !24
  %i.da = urem i64 %i.cy, %i.cz
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef %i.da, i1 noundef zeroext false)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef 0, i1 noundef zeroext false)
  %i.db = load ptr, ptr %1, align 8, !tbaa !22
  %i.dc = load ptr, ptr %2, align 8, !tbaa !22
  %i.dd = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @_ZN4llvh5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.db, i32 noundef %i.ag, ptr noundef %i.dc, i32 noundef %i.bk, ptr noundef null, ptr noundef %i.dd)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

_ZN4llvh5APIntC2Ejmb.exit35:                      ; preds = %.loopexit.i._crit_edge.i37, %.loopexit.i._crit_edge.i30, %_ZN4llvh5APIntC2ERKS0_.exit, %bb.j, %bb.l, %bb.m, %_ZN4llvh5APIntC2Ejmb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt6magicuEj(ptr dead_on_unwind noalias nofree writable sret(%"struct.llvh::APInt::mu") align 8 captures(none) initializes((0, 12), (16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %.sroa.0690 = alloca i64, align 8               ; 8 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 14 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %10 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvh::APInt", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !21
  store i64 0, ptr %3, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0690)
  store i64 0, ptr %.sroa.0690, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !21
  store i64 0, ptr %4, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 1, ptr %i.c, align 8, !tbaa !21
  store i64 0, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !429
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 11 uses
  %i.g = icmp ult i32 %i.f, 65                    ; 4 uses
  br i1 %i.g, label %_ZN4llvh5APIntD2Ev.exit.thread, label %bb.b

_ZN4llvh5APIntD2Ev.exit.thread:                   ; preds = %bb.a
  %i.h = icmp eq i32 %2, %i.f
  %i.i = sub nsw i32 0, %i.f
  %i.j = and i32 %i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 -1, %i.k
  %i.m = zext nneg i32 %2 to i64
  %i.n = lshr i64 %i.l, %i.m
  %.sroa.0661.0754.ph = select i1 %i.h, i64 0, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.f, ptr %i.o, align 8, !tbaa !21, !alias.scope !430
  br label %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = zext i32 %i.f to i64
  %i.q = add nuw nsw i64 %i.p, 63                 ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.r, 1073741816                 ; 4 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #22, !noalias !431 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !noalias !431
  store i64 -1, ptr %i.t, align 8, !tbaa !24, !noalias !431
  %i.u = lshr i64 %i.q, 6                         ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.t, i64 8
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = add nsw i64 %i.v, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 -1, i64 %i.w, i1 false), !tbaa !24, !noalias !431
  %i.x = sub i32 0, %i.f
  %i.y = and i32 %i.x, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 -1, %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8     ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24, !noalias !431
  %i.ae = and i64 %i.ad, %i.aa
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !24, !noalias !431
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #22, !noalias !432 ; 18 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.t, i64 %i.s, i1 false), !noalias !432
  %i.ah = trunc nuw nsw i64 %i.u to i32           ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = lshr i32 %2, 6                          ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.ai) ; 9 uses
  %i.aj = and i32 %2, 63                          ; 3 uses
  %i.ak = sub nsw i32 %i.ah, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.al = icmp eq i32 %i.aj, 0
  br i1 %i.al, label %bb.d, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.ai, %i.ah
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.am = zext nneg i32 %i.aj to i64              ; 4 uses
  %i.an = sub nuw nsw i32 64, %i.aj
  %i.ao = zext nneg i32 %i.an to i64              ; 3 uses
  %i.ap = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24, !noalias !432
  %i.as = lshr i64 %i.ar, %i.am                   ; 3 uses
  store i64 %i.as, ptr %i.af, align 8, !tbaa !24, !noalias !432
  %.not32.i1.i.i.i = icmp eq i32 %i.ak, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.at = zext i32 %i.ak to i64
  %i.au = add nsw i64 %i.at, -1                   ; 3 uses
  %xtraiter = and i64 %i.au, 1
  %i.av = icmp eq i32 %i.ak, 2
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.au, -2
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.aw = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aw
  %i.ay = shl nuw nsw i32 %i.ak, 3
  %i.az = zext nneg i32 %i.ay to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ax, i64 %i.az, i1 false), !noalias !432
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.ba = phi ptr [ %i.af, %.lr.ph.i.i.i.preheader.new ], [ %i.cc, %.lr.ph.i.i.i ]
  %i.bb = phi i64 [ %i.as, %.lr.ph.i.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i.i ]
  %i.bc = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bx, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.bd = add i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !24, !noalias !432
  %i.bh = shl i64 %i.bg, %i.ao
  %i.bi = or i64 %i.bh, %i.bb
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !24, !noalias !432
  %i.bj = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.bk = add i32 %.sroa.speculated.i.i.i.i, %i.bj ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24, !noalias !432
  %i.bo = lshr i64 %i.bn, %i.am                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !24, !noalias !432
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.bq = add i32 %i.bk, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24, !noalias !432
  %i.bu = shl i64 %i.bt, %i.ao
  %i.bv = or i64 %i.bu, %i.bo
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !24, !noalias !432
  %i.bw = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.bx = add i32 %.sroa.speculated.i.i.i.i, %i.bw ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !24, !noalias !432
  %i.cb = lshr i64 %i.ca, %i.am                   ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !24, !noalias !432
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.af, %.lr.ph.i.i.i.preheader ], [ %i.cc, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init1071 = phi i64 [ %i.as, %.lr.ph.i.i.i.preheader ], [ %i.cb, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init1073 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bx, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1074 = trunc i64 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod1074)
  %i.cd = add i32 %.epil.init1073, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24, !noalias !432
  %i.ch = shl i64 %i.cg, %i.ao
  %i.ci = or i64 %i.ch, %.epil.init1071
  store i64 %i.ci, ptr %.epil.init, align 8, !tbaa !24, !noalias !432
  %i.cj = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.ck = add i32 %.sroa.speculated.i.i.i.i, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !24, !noalias !432
  %i.co = lshr i64 %i.cn, %i.am
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !24, !noalias !432
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.cq = zext nneg i32 %i.ak to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cq
  %i.cs = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.ct = zext nneg i32 %i.cs to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 %i.ct, i1 false), !noalias !432
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.b, %.loopexit.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #23
  %.pre = load i32, ptr %i.e, align 8, !tbaa !21  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.pre, ptr %i.cu, align 8, !tbaa !21, !alias.scope !433
  %i.cv = icmp ult i32 %.pre, 65
  br i1 %i.cv, label %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread, label %_ZN4llvh5APInt17getSignedMinValueEj.exit

_ZN4llvh5APInt17getSignedMinValueEj.exit.thread:  ; preds = %_ZN4llvh5APIntD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit.thread
  %.sroa.0661.0754956 = phi i64 [ %.sroa.0661.0754.ph, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %i.ag, %_ZN4llvh5APIntD2Ev.exit ]
  %i.cw = phi i32 [ %i.f, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %.pre, %_ZN4llvh5APIntD2Ev.exit ] ; 4 uses
  %i.cx = add nuw nsw i32 %i.cw, 63
  %i.cy = and i32 %i.cx, 63
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz                    ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  store ptr %i.db, ptr %5, align 8, !tbaa !22, !alias.scope !433
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.cw, ptr %i.dc, align 8, !tbaa !21, !alias.scope !434
  br label %_ZN4llvh5APInt17getSignedMaxValueEj.exit

_ZN4llvh5APInt17getSignedMinValueEj.exit:         ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.dd = zext i32 %.pre to i64
  %i.de = add nuw nsw i64 %i.dd, 63               ; 2 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = and i64 %i.df, 1073741816               ; 2 uses
  %i.dh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dg) #22, !noalias !433 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dh, i8 0, i64 %i.dg, i1 false), !noalias !433
  store i64 0, ptr %i.dh, align 8, !tbaa !24, !noalias !433
  %i.di = sub i32 0, %.pre
  %i.dj = and i32 %i.di, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = lshr i64 -1, %i.dk
  %.pre7.i.i = lshr i64 %i.de, 6
  %i.dm = getelementptr [8 x i8], ptr %i.dh, i64 %.pre7.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8     ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !24, !noalias !433
  %i.dp = and i64 %i.do, %i.dl
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !24, !noalias !433
  %i.dq = add i32 %.pre, -1                       ; 2 uses
  %i.dr = and i32 %i.dq, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = lshr i32 %i.dq, 6
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dv ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !24, !noalias !433
  %i.dy = or i64 %i.dx, %i.dt
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !24, !noalias !433
  %.pre897 = load i32, ptr %i.e, align 8, !tbaa !21 ; 7 uses
  store ptr %i.dh, ptr %5, align 8, !tbaa !22, !alias.scope !433
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.pre897, ptr %i.dz, align 8, !tbaa !21, !alias.scope !437
  %i.ea = icmp ult i32 %.pre897, 65
  %i.eb = ptrtoint ptr %i.dh to i64               ; 2 uses
  br i1 %i.ea, label %_ZN4llvh5APInt17getSignedMaxValueEj.exit, label %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread

_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread:  ; preds = %_ZN4llvh5APInt17getSignedMinValueEj.exit
  %i.ec = zext i32 %.pre897 to i64
  %i.ed = add nuw nsw i64 %i.ec, 63               ; 2 uses
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = and i64 %i.ee, 1073741816               ; 2 uses
  %i.eg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ef) #22, !noalias !437 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 0, i64 %i.ef, i1 false), !noalias !437
  store i64 -1, ptr %i.eg, align 8, !tbaa !24, !noalias !437
  %i.eh = lshr i64 %i.ed, 6                       ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = add nsw i64 %i.ei, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 -1, i64 %i.ej, i1 false), !tbaa !24, !noalias !437
  %i.ek = sub i32 0, %.pre897
  %i.el = and i32 %i.ek, 63
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 -1, %i.em
  %i.eo = getelementptr [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8     ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !24, !noalias !437
  %i.er = and i64 %i.eq, %i.en
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !24, !noalias !437
  %i.es = add i32 %.pre897, -1                    ; 2 uses
  %i.et = and i32 %i.es, 63
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = xor i64 %i.ev, -1
  %i.ex = lshr i32 %i.es, 6
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ey ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !24, !noalias !435
  %i.fb = and i64 %i.fa, %i.ew
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !24, !noalias !435
  store ptr %i.eg, ptr %6, align 8, !tbaa !22, !alias.scope !435
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.fc = ptrtoint ptr %i.eg to i64
  br label %.lr.ph.preheader.i.i.i21

_ZN4llvh5APInt17getSignedMaxValueEj.exit:         ; preds = %_ZN4llvh5APInt17getSignedMinValueEj.exit, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread
  %i.fd = phi i64 [ %i.da, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %i.eb, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 2 uses
  %i.fe = phi ptr [ %i.db, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %i.dh, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 2 uses
  %i.ff = phi i32 [ %i.cw, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %.pre897, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 4 uses
  %i.fg = phi i32 [ %i.cw, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %.pre, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 2 uses
  %.sroa.0661.0754955959 = phi i64 [ %.sroa.0661.0754956, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %i.ag, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 3 uses
  %i.fh = sub nsw i32 0, %i.ff
  %i.fi = and i32 %i.fh, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = lshr i64 -1, %i.fj
  %i.fl = add nuw nsw i32 %i.ff, 63
  %i.fm = and i32 %i.fl, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = xor i64 %i.fo, -1
  %i.fq = and i64 %i.fk, %i.fp                    ; 3 uses
  %i.fr = inttoptr i64 %i.fq to ptr               ; 3 uses
  store ptr %i.fr, ptr %6, align 8, !tbaa !22, !alias.scope !435
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  br i1 %i.g, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i, label %.lr.ph.preheader.i.i.i21

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i: ; preds = %_ZN4llvh5APInt17getSignedMaxValueEj.exit
  %i.fs = load i64, ptr %1, align 8, !tbaa !22, !noalias !438
  %i.ft = sub i64 %.sroa.0661.0754955959, %i.fs
  %i.fu = sub nsw i32 0, %i.f
  %i.fv = and i32 %i.fu, 63
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = lshr i64 -1, %i.fw
  %i.fy = and i64 %i.ft, %i.fx
  br label %_ZN4llvhmiENS_5APIntERKS0_.exit

.lr.ph.preheader.i.i.i21:                         ; preds = %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread, %_ZN4llvh5APInt17getSignedMaxValueEj.exit
  %i.fz = phi i64 [ %i.fc, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fq, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.ga = phi ptr [ %i.eg, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fr, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %.sroa.0661.0754955958962 = phi i64 [ %i.ag, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %.sroa.0661.0754955959, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ] ; 2 uses
  %i.gb = phi i32 [ %.pre, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fg, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.gc = phi i32 [ %.pre897, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.ff, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.gd = phi ptr [ %i.dh, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fe, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.ge = phi i64 [ %i.eb, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fd, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.gf = zext i32 %i.f to i64
  %i.gg = add nuw nsw i64 %i.gf, 63               ; 2 uses
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = and i64 %i.gh, 1073741816               ; 2 uses
  %i.gj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gi) #22 ; 4 uses
  %i.gk = inttoptr i64 %.sroa.0661.0754955958962 to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr align 8 %i.gk, i64 %i.gi, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.gl = load ptr, ptr %1, align 8, !tbaa !22, !noalias !438
  %i.gm = lshr i64 %i.gg, 6                       ; 2 uses
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %bb.g, %.lr.ph.preheader.i.i.i21
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i21 ], [ %indvars.iv.next.i.i.i, %bb.g ] ; 3 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i21 ], [ %i.gv, %bb.g ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.i.i.i ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !24, !noalias !438 ; 4 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.i.i.i
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !24, !noalias !438 ; 3 uses
  br i1 %.02021.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i22
  %.neg.i.i.i = xor i64 %i.gq, -1
  %i.gr = add i64 %i.go, %.neg.i.i.i              ; 2 uses
  %i.gs = icmp uge i64 %i.gr, %i.go
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i22
  %i.gt = sub i64 %i.go, %i.gq
  %i.gu = icmp ugt i64 %i.gq, %i.go
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i.i = phi i64 [ %i.gt, %bb.f ], [ %i.gr, %bb.e ]
end_hunk_6
