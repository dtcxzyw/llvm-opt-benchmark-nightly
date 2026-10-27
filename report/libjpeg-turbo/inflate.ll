Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@inflateInit2_:bb.a
  store ptr null, ptr %i.t, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -4, %bb.h ], [ -6, %bb.a ], [ -2, %bb.c ], [ -6, %bb.b ], [ %i.v, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit_(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %inflateInit2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !46
  %i.c = icmp ne i8 %i.b, 49
  %i.d = icmp ne i32 %2, 112
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %inflateInit2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %inflateInit2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @zcalloc, ptr %i.g, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.j, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ @zcalloc, %bb.e ], [ %i.h, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @zcfree, ptr %i.l, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.q = tail call ptr %i.k(ptr noundef %i.p, i32 noundef 1, i32 noundef 7160) #9, !inline_history !57 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %inflateInit2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %i.s, i8 0, i64 7152, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !17
  store ptr %0, ptr %i.q, align 8, !tbaa !21
  store i32 16180, ptr %i.s, align 8, !tbaa !22
  %i.u = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef 15) ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %inflateInit2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !45
  tail call void %i.v(ptr noundef %i.w, ptr noundef nonnull %i.q) #9, !inline_history !57
  store ptr null, ptr %i.t, align 8, !tbaa !17
  br label %inflateInit2_.exit

inflateInit2_.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ -4, %bb.h ], [ -6, %bb.a ], [ -2, %bb.c ], [ -6, %bb.b ], [ %i.u, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22
  %i.n = add i32 %i.m, -16180
  %or.cond.i = icmp ult i32 %i.n, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i32 %1, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 0, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 0, ptr %i.r, align 8, !tbaa !34
  br label %inflateStateCheck.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.s = icmp samesign ugt i32 %1, 16
  br i1 %i.s, label %inflateStateCheck.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %i.v = add i32 %i.u, %1                         ; 2 uses
  %i.w = icmp ugt i32 %i.v, 32
  br i1 %i.w, label %inflateStateCheck.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %1 to i64
  %notmask = shl nsw i64 -1, %i.x
  %i.y = trunc nsw i64 %notmask to i32
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %2, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = zext nneg i32 %i.u to i64
  %i.ad = shl i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !33
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !33
  store i32 %i.v, ptr %i.t, align 8, !tbaa !34
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.i, %bb.j, %bb.f, %inflateStateCheck.exit, %bb.k, %bb.h
  %.0 = phi i32 [ 0, %bb.k ], [ -2, %inflateStateCheck.exit ], [ 0, %bb.h ], [ 0, %bb.f ], [ -2, %bb.j ], [ -2, %bb.i ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 37 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 44 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22   ; 3 uses
  %i.n = add i32 %i.m, -16180
  %or.cond.i = icmp ult i32 %i.n, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !49
  %.not853 = icmp eq i32 %i.u, 0
  br i1 %.not853, label %bb.i, label %inflateStateCheck.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = icmp eq i32 %i.m, 16191
  br i1 %i.v, label %bb.j, label %.split1774

bb.j:                                             ; preds = %bb.i
  store i32 16192, ptr %i.l, align 8, !tbaa !22
  br label %.split1774

.split1774:                                       ; preds = %bb.i, %bb.j
  %i.w = phi i32 [ %i.m, %bb.i ], [ 16192, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !75   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 5 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 6 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 92 ; 13 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 132 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 140 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 14 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 1368 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 792 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 124 ; 3 uses
  %i.az = icmp eq i32 %1, 6                       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 7148 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 100 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 7152
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 7144
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.bk = add i32 %1, -5
  %or.cond = icmp ult i32 %i.bk, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.split1774
  %i.bp = phi i32 [ %i.w, %.split1774 ], [ %.pre, %.thread ] ; 4 uses
  %.0779 = phi ptr [ %i.r, %.split1774 ], [ %.42821, %.thread ] ; 51 uses
  %.0776 = phi ptr [ %i.p, %.split1774 ], [ %.2778, %.thread ] ; 40 uses
  %.0732 = phi i32 [ %i.aa, %.split1774 ], [ %.42774, %.thread ] ; 46 uses
  %.0730 = phi i32 [ %i.y, %.split1774 ], [ %.1731, %.thread ] ; 63 uses
  %.0686 = phi i64 [ %i.ac, %.split1774 ], [ %.42728, %.thread ] ; 33 uses
  %.0676 = phi i32 [ %i.ae, %.split1774 ], [ %.42, %.thread ] ; 43 uses
  %.0671 = phi i32 [ %i.y, %.split1774 ], [ %.3674, %.thread ] ; 58 uses
  %.0 = phi i32 [ 0, %.split1774 ], [ %.8, %.thread ] ; 32 uses
  %.07763028 = ptrtoaddr ptr %.0776 to i64
  switch i32 %i.bp, label %inflateStateCheck.exit.thread [
    i32 16180, label %bb.l
    i32 16189, label %.preheader921
    i32 16190, label %bb.ab
    i32 16191, label %bb.ae
    i32 16192, label %bb.af
    i32 16193, label %bb.an
    i32 16194, label %bb.au
    i32 16195, label %bb.av
    i32 16196, label %.preheader935
    i32 16197, label %.split
    i32 16198, label %._crit_edge2169
    i32 16199, label %bb.by
    i32 16200, label %bb.bz
    i32 16201, label %._crit_edge2172
    i32 16202, label %bb.co
    i32 16203, label %._crit_edge2177
    i32 16204, label %bb.cw
    i32 16205, label %bb.dh
    i32 16206, label %bb.dj
    i32 16208, label %.loopexit908.loopexit3074
    i32 16209, label %.loopexit908
    i32 16210, label %inflateStateCheck.exit.thread.loopexit
  ]

._crit_edge2177:                                  ; preds = %bb.k
  %.pre2178 = load i32, ptr %i.bb, align 4, !tbaa !76
  br label %bb.cu

._crit_edge2172:                                  ; preds = %bb.k
  %.pre2173 = load i32, ptr %i.bb, align 4, !tbaa !76
  br label %bb.cm

._crit_edge2169:                                  ; preds = %bb.k
  %.promoted1505.pre = load i32, ptr %i.ap, align 4, !tbaa !77
  br label %bb.bg

.preheader935:                                    ; preds = %bb.k
  %i.bq = icmp ult i32 %.0676, 14
  br i1 %i.bq, label %.lr.ph1304.preheader, label %._crit_edge1305

.lr.ph1304.preheader:                             ; preds = %.preheader935
  %i.br = zext nneg i32 %.0676 to i64             ; 4 uses
  %i.bs = icmp eq i32 %.0732, 0
  br i1 %i.bs, label %.loopexit908.loopexit1789, label %bb.az

.preheader921:                                    ; preds = %bb.k
  %i.bt = icmp ult i32 %.0676, 32
  br i1 %i.bt, label %.lr.ph1624.preheader, label %._crit_edge1625

.lr.ph1624.preheader:                             ; preds = %.preheader921
  %i.bu = zext nneg i32 %.0676 to i64             ; 5 uses
  %i.bv = icmp eq i32 %.0732, 0
  br i1 %i.bv, label %.loopexit908.loopexit1780, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.bw = load i32, ptr %i.af, align 8, !tbaa !26
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %.preheader917

.preheader917:                                    ; preds = %bb.l
  %i.by = icmp ult i32 %.0676, 16
  br i1 %i.by, label %.lr.ph1768.preheader, label %._crit_edge1769

.lr.ph1768.preheader:                             ; preds = %.preheader917
  %i.bz = zext nneg i32 %.0676 to i64             ; 4 uses
  %i.ca = icmp eq i32 %.0732, 0
  br i1 %i.ca, label %.loopexit908.loopexit1779, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 16192, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.n:                                             ; preds = %.lr.ph1768.preheader
  %i.cb = add i32 %.0732, -1                      ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0779, i64 1 ; 3 uses
  %i.cd = load i8, ptr %.0779, align 1, !tbaa !46
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, %i.bz
  %i.cg = add i64 %i.cf, %.0686                   ; 3 uses
  %indvars.iv.next2164 = add nuw nsw i64 %i.bz, 8 ; 3 uses
  %i.ch = icmp ult i32 %.0676, 8
  br i1 %i.ch, label %.lr.ph1768.1, label %._crit_edge1769.loopexit

.lr.ph1768.1:                                     ; preds = %bb.n
  %i.ci = icmp eq i32 %i.cb, 0
  br i1 %i.ci, label %.loopexit908.loopexit1779, label %bb.o

bb.o:                                             ; preds = %.lr.ph1768.1
  %i.cj = add i32 %.0732, -2
  %i.ck = getelementptr inbounds nuw i8, ptr %.0779, i64 2
  %i.cl = load i8, ptr %i.cc, align 1, !tbaa !46
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, %indvars.iv.next2164
  %i.co = add i64 %i.cn, %i.cg
  %indvars.iv.next2164.1 = or disjoint i64 %i.bz, 16
  br label %._crit_edge1769.loopexit

._crit_edge1769.loopexit:                         ; preds = %bb.o, %bb.n
  %.lcssa3240.a = phi i32 [ %i.cb, %bb.n ], [ %i.cj, %bb.o ]
  %.lcssa3239.a = phi ptr [ %i.cc, %bb.n ], [ %i.ck, %bb.o ]
  %.lcssa3238 = phi i64 [ %i.cg, %bb.n ], [ %i.co, %bb.o ]
  %indvars.iv.next2164.lcssa = phi i64 [ %indvars.iv.next2164, %bb.n ], [ %indvars.iv.next2164.1, %bb.o ]
  %i.cp = trunc nuw nsw i64 %indvars.iv.next2164.lcssa to i32
  br label %._crit_edge1769

._crit_edge1769:                                  ; preds = %._crit_edge1769.loopexit, %.preheader917
  %.1780.lcssa = phi ptr [ %.0779, %.preheader917 ], [ %.lcssa3239.a, %._crit_edge1769.loopexit ] ; 4 uses
  %.1733.lcssa = phi i32 [ %.0732, %.preheader917 ], [ %.lcssa3240.a, %._crit_edge1769.loopexit ] ; 4 uses
  %.1687.lcssa = phi i64 [ %.0686, %.preheader917 ], [ %.lcssa3238, %._crit_edge1769.loopexit ] ; 7 uses
  %.1677.lcssa = phi i32 [ %.0676, %.preheader917 ], [ %i.cp, %._crit_edge1769.loopexit ] ; 3 uses
  %i.cq = shl i64 %.1687.lcssa, 8
  %i.cr = and i64 %i.cq, 65280
  %i.cs = lshr i64 %.1687.lcssa, 8
  %i.ct = add nuw nsw i64 %i.cr, %i.cs
  %i.cu = urem i64 %i.ct, 31
  %.not885 = icmp eq i64 %i.cu, 0
  br i1 %.not885, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge1769
  store ptr @.str.1, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.q:                                             ; preds = %._crit_edge1769
  %i.cv = and i64 %.1687.lcssa, 15
  %.not886 = icmp eq i64 %i.cv, 8
  br i1 %.not886, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr @.str.2, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.cw = lshr i64 %.1687.lcssa, 4                ; 2 uses
  %i.cx = add i32 %.1677.lcssa, -4
  %i.cy = trunc i64 %i.cw to i32
  %i.cz = and i32 %i.cy, 15                       ; 3 uses
  %i.da = add nuw nsw i32 %i.cz, 8                ; 3 uses
  %i.db = load i32, ptr %i.bm, align 8, !tbaa !44 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.da, ptr %i.bm, align 8, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dd = phi i32 [ %i.da, %bb.t ], [ %i.db, %bb.s ]
  %i.de = icmp samesign ugt i32 %i.cz, 7
  %i.df = icmp ugt i32 %i.da, %i.dd
  %or.cond2559 = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond2559, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr @.str.3, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.dg = shl nuw nsw i32 256, %i.cz
  store i32 %i.dg, ptr %i.bn, align 4, !tbaa !31
  store i32 0, ptr %i.bo, align 8, !tbaa !30
  %i.dh = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.dh, ptr %i.ai, align 8, !tbaa !50
  store i64 %i.dh, ptr %i.aj, align 8, !tbaa !27
  %i.di = and i64 %.1687.lcssa, 8192
  %.not887 = icmp eq i64 %i.di, 0
  %i.dj = select i1 %.not887, i32 16191, i32 16189
  store i32 %i.dj, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.x:                                             ; preds = %.lr.ph1624.preheader
  %i.dk = add i32 %.0732, -1                      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0779, i64 1 ; 3 uses
  %i.dm = load i8, ptr %.0779, align 1, !tbaa !46
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, %i.bu
  %i.dp = add i64 %i.do, %.0686                   ; 3 uses
  %indvars.iv.next2161 = add nuw nsw i64 %i.bu, 8 ; 2 uses
  %i.dq = icmp ult i32 %.0676, 24
  br i1 %i.dq, label %.lr.ph1624.1, label %._crit_edge1625

.lr.ph1624.1:                                     ; preds = %bb.x
  %i.dr = icmp eq i32 %i.dk, 0
  br i1 %i.dr, label %.loopexit908.loopexit1780, label %bb.y

bb.y:                                             ; preds = %.lr.ph1624.1
  %i.ds = add i32 %.0732, -2                      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0779, i64 2 ; 3 uses
  %i.du = load i8, ptr %i.dl, align 1, !tbaa !46
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, %indvars.iv.next2161
  %i.dx = add i64 %i.dw, %i.dp                    ; 3 uses
  %indvars.iv.next2161.1 = add nuw nsw i64 %i.bu, 16 ; 2 uses
  %i.dy = icmp ult i32 %.0676, 16
  br i1 %i.dy, label %.lr.ph1624.2, label %._crit_edge1625

.lr.ph1624.2:                                     ; preds = %bb.y
  %i.dz = icmp eq i32 %i.ds, 0
  br i1 %i.dz, label %.loopexit908.loopexit1780, label %bb.z

bb.z:                                             ; preds = %.lr.ph1624.2
  %i.ea = add i32 %.0732, -3                      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0779, i64 3 ; 3 uses
  %i.ec = load i8, ptr %i.dt, align 1, !tbaa !46
  %i.ed = zext i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, %indvars.iv.next2161.1
  %i.ef = add i64 %i.ee, %i.dx                    ; 3 uses
  %indvars.iv.next2161.2 = add nuw nsw i64 %i.bu, 24 ; 2 uses
  %i.eg = icmp ult i32 %.0676, 8
  br i1 %i.eg, label %.lr.ph1624.3, label %._crit_edge1625

.lr.ph1624.3:                                     ; preds = %bb.z
  %i.eh = icmp eq i32 %i.ea, 0
  br i1 %i.eh, label %.loopexit908.loopexit1780, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1624.3
  %i.ei = add i32 %.0732, -4
  %i.ej = getelementptr inbounds nuw i8, ptr %.0779, i64 4
  %i.ek = load i8, ptr %i.eb, align 1, !tbaa !46
  %i.el = zext i8 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, %indvars.iv.next2161.2
  %i.en = add i64 %i.em, %i.ef
  br label %._crit_edge1625

._crit_edge1625:                                  ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %.preheader921
  %.2781.lcssa = phi ptr [ %.0779, %.preheader921 ], [ %i.dl, %bb.x ], [ %i.dt, %bb.y ], [ %i.eb, %bb.z ], [ %i.ej, %bb.aa ]
  %.2734.lcssa = phi i32 [ %.0732, %.preheader921 ], [ %i.dk, %bb.x ], [ %i.ds, %bb.y ], [ %i.ea, %bb.z ], [ %i.ei, %bb.aa ]
  %.2688.lcssa = phi i64 [ %.0686, %.preheader921 ], [ %i.dp, %bb.x ], [ %i.dx, %bb.y ], [ %i.ef, %bb.z ], [ %i.en, %bb.aa ]
  %trunc882 = trunc i64 %.2688.lcssa to i32
  %rev883 = tail call i32 @llvm.bswap.i32(i32 %trunc882)
  %i.eo = zext i32 %rev883 to i64                 ; 2 uses
  store i64 %i.eo, ptr %i.ai, align 8, !tbaa !50
  store i64 %i.eo, ptr %i.aj, align 8, !tbaa !27
  store i32 16190, ptr %i.l, align 8, !tbaa !22
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1625, %bb.k
  %.3782 = phi ptr [ %.2781.lcssa, %._crit_edge1625 ], [ %.0779, %bb.k ] ; 2 uses
  %.3735 = phi i32 [ %.2734.lcssa, %._crit_edge1625 ], [ %.0732, %bb.k ] ; 2 uses
  %.3689 = phi i64 [ 0, %._crit_edge1625 ], [ %.0686, %bb.k ] ; 2 uses
  %.3679 = phi i32 [ 0, %._crit_edge1625 ], [ %.0676, %bb.k ] ; 2 uses
  %i.ep = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %.0776, ptr %i.o, align 8, !tbaa !74
  store i32 %.0730, ptr %i.x, align 8, !tbaa !75
  store ptr %.3782, ptr %0, align 8, !tbaa !48
  store i32 %.3735, ptr %i.z, align 8, !tbaa !49
  store i64 %.3689, ptr %i.ab, align 8, !tbaa !33
  store i32 %.3679, ptr %i.ad, align 8, !tbaa !34
  br label %inflateStateCheck.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.er = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.er, ptr %i.ai, align 8, !tbaa !50
  store i64 %i.er, ptr %i.aj, align 8, !tbaa !27
  store i32 16191, ptr %i.l, align 8, !tbaa !22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.k
  %.4783 = phi ptr [ %.3782, %bb.ad ], [ %.0779, %bb.k ] ; 2 uses
  %.4736 = phi i32 [ %.3735, %bb.ad ], [ %.0732, %bb.k ] ; 2 uses
  %.4690 = phi i64 [ %.3689, %bb.ad ], [ %.0686, %bb.k ] ; 2 uses
  %.4680 = phi i32 [ %.3679, %bb.ad ], [ %.0676, %bb.k ] ; 2 uses
  br i1 %or.cond, label %.loopexit908, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.k
  %i.es = phi i32 [ 16191, %bb.ae ], [ %i.bp, %bb.k ]
  %.5784 = phi ptr [ %.4783, %bb.ae ], [ %.0779, %bb.k ] ; 5 uses
  %.5737 = phi i32 [ %.4736, %bb.ae ], [ %.0732, %bb.k ] ; 4 uses
  %.5691 = phi i64 [ %.4690, %bb.ae ], [ %.0686, %bb.k ] ; 4 uses
  %.5681 = phi i32 [ %.4680, %bb.ae ], [ %.0676, %bb.k ] ; 7 uses
  %i.et = load i32, ptr %i.bl, align 4, !tbaa !28
  %.not884 = icmp eq i32 %i.et, 0
  br i1 %.not884, label %.preheader919, label %bb.ag

.preheader919:                                    ; preds = %bb.af
  %i.eu = icmp ult i32 %.5681, 3
  br i1 %i.eu, label %.lr.ph1633, label %bb.ah

.lr.ph1633:                                       ; preds = %.preheader919
  %i.ev = icmp eq i32 %.5737, 0
  br i1 %i.ev, label %.loopexit908, label %._crit_edge1634

bb.ag:                                            ; preds = %bb.af
  %i.ew = and i32 %.5681, 7
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 %.5691, %i.ex
  %i.ez = and i32 %.5681, -8
  store i32 16206, ptr %i.l, align 8, !tbaa !22
  br label %.thread

._crit_edge1634:                                  ; preds = %.lr.ph1633
  %i.fa = or disjoint i32 %.5681, 8
  %i.fb = add i32 %.5737, -1
  %i.fc = getelementptr inbounds nuw i8, ptr %.5784, i64 1
  %i.fd = load i8, ptr %.5784, align 1, !tbaa !46
  %i.fe = zext i8 %i.fd to i64
  %i.ff = zext nneg i32 %.5681 to i64
  %i.fg = shl nuw nsw i64 %i.fe, %i.ff
  %i.fh = add i64 %i.fg, %.5691
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge1634, %.preheader919
  %.6785.lcssa = phi ptr [ %i.fc, %._crit_edge1634 ], [ %.5784, %.preheader919 ] ; 2 uses
  %.6738.lcssa = phi i32 [ %i.fb, %._crit_edge1634 ], [ %.5737, %.preheader919 ] ; 2 uses
  %.6692.lcssa = phi i64 [ %i.fh, %._crit_edge1634 ], [ %.5691, %.preheader919 ] ; 3 uses
  %.6682.lcssa = phi i32 [ %i.fa, %._crit_edge1634 ], [ %.5681, %.preheader919 ] ; 2 uses
  %i.fi = trunc i64 %.6692.lcssa to i32           ; 2 uses
  %i.fj = and i32 %i.fi, 1
  store i32 %i.fj, ptr %i.bl, align 4, !tbaa !28
  %i.fk = lshr i32 %i.fi, 1
  %i.fl = and i32 %i.fk, 3
  switch i32 %i.fl, label %default.unreachable2220 [
    i32 0, label %.sink.split
    i32 1, label %bb.ai
    i32 2, label %bb.ak
    i32 3, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  tail call void @inflate_fixed(ptr noundef nonnull %i.i) #9
  store i32 16199, ptr %i.l, align 8, !tbaa !22
  br i1 %i.az, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fm = lshr i64 %.6692.lcssa, 3
  %i.fn = add i32 %.6682.lcssa, -3
  br label %.loopexit908

bb.ak:                                            ; preds = %bb.ah
  br label %.sink.split

default.unreachable2220:                          ; preds = %bb.ah
  unreachable

bb.al:                                            ; preds = %bb.ah
  store ptr @.str.4, ptr %i.ak, align 8, !tbaa !47
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.al, %bb.ak
  %.sink = phi i32 [ 16209, %bb.al ], [ 16196, %bb.ak ], [ 16193, %bb.ah ]
  store i32 %.sink, ptr %i.l, align 8, !tbaa !22
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.ai
  %i.fo = lshr i64 %.6692.lcssa, 3
  %i.fp = add i32 %.6682.lcssa, -3
  br label %.thread

bb.an:                                            ; preds = %bb.k
  %i.fq = and i32 %.0676, 7
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = lshr i64 %.0686, %i.fr                  ; 3 uses
  %i.ft = and i32 %.0676, -8
  %i.fu = icmp ult i32 %.0676, 32
  br i1 %i.fu, label %.lr.ph1614.preheader, label %._crit_edge1615

.lr.ph1614.preheader:                             ; preds = %bb.an
  %i.fv = and i32 %.0676, 24                      ; 4 uses
  %i.fw = zext nneg i32 %i.fv to i64              ; 5 uses
  %i.fx = icmp eq i32 %.0732, 0
  br i1 %i.fx, label %.loopexit908.loopexit1781, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1614.preheader
  %i.fy = add i32 %.0732, -1                      ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0779, i64 1 ; 3 uses
end_hunk_0
begin_hunk_1_@inflate:bb.a
  br i1 %i.zc, label %.loopexit3068, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1777 = phi ptr [ %i.aaa, %vec.epilog.scalar.ph ], [ %.1777.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.7670 = phi i32 [ %i.aab, %vec.epilog.scalar.ph ], [ %.7670.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2662 = phi ptr [ %i.zy, %vec.epilog.scalar.ph ], [ %.2662.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.2662, i64 1
  %i.ze = load i8, ptr %.2662, align 1, !tbaa !46
  %i.zf = getelementptr inbounds nuw i8, ptr %.1777, i64 1
  store i8 %i.ze, ptr %.1777, align 1, !tbaa !46
  %i.zg = getelementptr inbounds nuw i8, ptr %.2662, i64 2
  %i.zh = load i8, ptr %i.zd, align 1, !tbaa !46
  %i.zi = getelementptr inbounds nuw i8, ptr %.1777, i64 2
  store i8 %i.zh, ptr %i.zf, align 1, !tbaa !46
  %i.zj = getelementptr inbounds nuw i8, ptr %.2662, i64 3
  %i.zk = load i8, ptr %i.zg, align 1, !tbaa !46
  %i.zl = getelementptr inbounds nuw i8, ptr %.1777, i64 3
  store i8 %i.zk, ptr %i.zi, align 1, !tbaa !46
  %i.zm = getelementptr inbounds nuw i8, ptr %.2662, i64 4
  %i.zn = load i8, ptr %i.zj, align 1, !tbaa !46
  %i.zo = getelementptr inbounds nuw i8, ptr %.1777, i64 4
  store i8 %i.zn, ptr %i.zl, align 1, !tbaa !46
  %i.zp = getelementptr inbounds nuw i8, ptr %.2662, i64 5
  %i.zq = load i8, ptr %i.zm, align 1, !tbaa !46
  %i.zr = getelementptr inbounds nuw i8, ptr %.1777, i64 5
  store i8 %i.zq, ptr %i.zo, align 1, !tbaa !46
  %i.zs = getelementptr inbounds nuw i8, ptr %.2662, i64 6
  %i.zt = load i8, ptr %i.zp, align 1, !tbaa !46
  %i.zu = getelementptr inbounds nuw i8, ptr %.1777, i64 6
  store i8 %i.zt, ptr %i.zr, align 1, !tbaa !46
  %i.zv = getelementptr inbounds nuw i8, ptr %.2662, i64 7
  %i.zw = load i8, ptr %i.zs, align 1, !tbaa !46
  %i.zx = getelementptr inbounds nuw i8, ptr %.1777, i64 7
  store i8 %i.zw, ptr %i.zu, align 1, !tbaa !46
  %i.zy = getelementptr inbounds nuw i8, ptr %.2662, i64 8
  %i.zz = load i8, ptr %i.zv, align 1, !tbaa !46
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1777, i64 8 ; 2 uses
  store i8 %i.zz, ptr %i.zx, align 1, !tbaa !46
  %i.aab = add i32 %.7670, -8                     ; 2 uses
  %.not879.7 = icmp eq i32 %i.aab, 0
  br i1 %.not879.7, label %.loopexit3068, label %vec.epilog.scalar.ph, !llvm.loop !73

.loopexit3068:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa2663 = phi ptr [ %i.ys, %vec.epilog.middle.block ], [ %i.yl, %middle.block ], [ %.lcssa3222.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.aaa, %vec.epilog.scalar.ph ] ; 2 uses
  %i.aac = sub i32 %.0730, %spec.select894        ; 2 uses
  %i.aad = load i32, ptr %i.al, align 4, !tbaa !51
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %bb.dg, label %.thread

bb.dg:                                            ; preds = %.loopexit3068
  store i32 16200, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.dh:                                            ; preds = %bb.k
  %i.aaf = icmp eq i32 %.0730, 0
  br i1 %i.aaf, label %.loopexit908, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aag = load i32, ptr %i.al, align 4, !tbaa !51
  %i.aah = trunc i32 %i.aag to i8
  %i.aai = getelementptr inbounds nuw i8, ptr %.0776, i64 1
  store i8 %i.aah, ptr %.0776, align 1, !tbaa !46
  %i.aaj = add i32 %.0730, -1
  store i32 16200, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.dj:                                            ; preds = %bb.k
  %i.aak = load i32, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %.not854 = icmp eq i32 %i.aak, 0
  br i1 %.not854, label %bb.ds, label %.preheader937

.preheader937:                                    ; preds = %bb.dj
  %i.aal = icmp ult i32 %.0676, 32
  br i1 %i.aal, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader937
  %i.aam = zext nneg i32 %.0676 to i64            ; 6 uses
  %i.aan = icmp eq i32 %.0732, 0
  br i1 %i.aan, label %.loopexit908.loopexit1790, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.preheader
  %i.aao = add i32 %.0732, -1                     ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.0779, i64 1 ; 3 uses
  %i.aaq = load i8, ptr %.0779, align 1, !tbaa !46
  %i.aar = zext i8 %i.aaq to i64
  %i.aas = shl nuw nsw i64 %i.aar, %i.aam
  %i.aat = add i64 %i.aas, %.0686                 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.aam, 8    ; 3 uses
  %i.aau = icmp ult i32 %.0676, 24
  br i1 %i.aau, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %bb.dk
  %i.aav = icmp eq i32 %i.aao, 0
  br i1 %i.aav, label %.loopexit908.loopexit1790, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.1
  %i.aaw = add i32 %.0732, -2                     ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.0779, i64 2 ; 3 uses
  %i.aay = load i8, ptr %i.aap, align 1, !tbaa !46
  %i.aaz = zext i8 %i.aay to i64
  %i.aba = shl nuw nsw i64 %i.aaz, %indvars.iv.next
  %i.abb = add i64 %i.aba, %i.aat                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.aam, 16 ; 3 uses
  %i.abc = icmp ult i32 %.0676, 16
  br i1 %i.abc, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %bb.dl
  %i.abd = icmp eq i32 %i.aaw, 0
  br i1 %i.abd, label %.loopexit908.loopexit1790, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.2
  %i.abe = add i32 %.0732, -3                     ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.0779, i64 3 ; 3 uses
  %i.abg = load i8, ptr %i.aax, align 1, !tbaa !46
  %i.abh = zext i8 %i.abg to i64
  %i.abi = shl nuw nsw i64 %i.abh, %indvars.iv.next.1
  %i.abj = add i64 %i.abi, %i.abb                 ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.aam, 24 ; 3 uses
  %i.abk = icmp ult i32 %.0676, 8
  br i1 %i.abk, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %bb.dm
  %i.abl = icmp eq i32 %i.abe, 0
  br i1 %i.abl, label %.loopexit908.loopexit1790, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.3
  %i.abm = add i32 %.0732, -4
  %i.abn = getelementptr inbounds nuw i8, ptr %.0779, i64 4
  %i.abo = load i8, ptr %i.abf, align 1, !tbaa !46
  %i.abp = zext i8 %i.abo to i64
  %i.abq = shl nuw nsw i64 %i.abp, %indvars.iv.next.2
  %i.abr = add i64 %i.abq, %i.abj
  %indvars.iv.next.3 = or disjoint i64 %i.aam, 32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk
  %.lcssa3087.a = phi i32 [ %i.aao, %bb.dk ], [ %i.aaw, %bb.dl ], [ %i.abe, %bb.dm ], [ %i.abm, %bb.dn ]
  %.lcssa3086.a = phi ptr [ %i.aap, %bb.dk ], [ %i.aax, %bb.dl ], [ %i.abf, %bb.dm ], [ %i.abn, %bb.dn ]
  %.lcssa3085 = phi i64 [ %i.aat, %bb.dk ], [ %i.abb, %bb.dl ], [ %i.abj, %bb.dm ], [ %i.abr, %bb.dn ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.dk ], [ %indvars.iv.next.1, %bb.dl ], [ %indvars.iv.next.2, %bb.dm ], [ %indvars.iv.next.3, %bb.dn ]
  %i.abs = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader937
  %.39818.lcssa = phi ptr [ %.0779, %.preheader937 ], [ %.lcssa3086.a, %._crit_edge.loopexit ] ; 3 uses
  %.39771.lcssa = phi i32 [ %.0732, %.preheader937 ], [ %.lcssa3087.a, %._crit_edge.loopexit ] ; 3 uses
  %.39725.lcssa = phi i64 [ %.0686, %.preheader937 ], [ %.lcssa3085, %._crit_edge.loopexit ] ; 2 uses
  %.39.lcssa = phi i32 [ %.0676, %.preheader937 ], [ %i.abs, %._crit_edge.loopexit ]
  %i.abt = sub i32 %.0671, %.0730                 ; 2 uses
  %i.abu = zext i32 %i.abt to i64                 ; 3 uses
  %i.abv = load i64, ptr %i.ag, align 8, !tbaa !55
  %i.abw = add i64 %i.abv, %i.abu
  store i64 %i.abw, ptr %i.ag, align 8, !tbaa !55
  %i.abx = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.aby = add i64 %i.abx, %i.abu
  store i64 %i.aby, ptr %i.ah, align 8, !tbaa !23
  %i.abz = and i32 %i.aak, 4                      ; 2 uses
  %i.aca = icmp ne i32 %i.abz, 0
  %i.acb = icmp ne i32 %.0671, %.0730
  %or.cond5 = select i1 %i.aca, i1 %i.acb, i1 false
  br i1 %or.cond5, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %._crit_edge
  %i.acc = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.acd = sub nsw i64 0, %i.abu
  %i.ace = getelementptr inbounds i8, ptr %.0776, i64 %i.acd
  %i.acf = tail call i64 @adler32(i64 noundef %i.acc, ptr noundef %i.ace, i32 noundef %i.abt) #9 ; 2 uses
  store i64 %i.acf, ptr %i.ai, align 8, !tbaa !50
  store i64 %i.acf, ptr %i.aj, align 8, !tbaa !27
  %.pre2166 = load i32, ptr %i.af, align 8, !tbaa !26
  %.pre2179 = and i32 %.pre2166, 4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %._crit_edge
  %.pre-phi = phi i32 [ %.pre2179, %bb.do ], [ %i.abz, %._crit_edge ]
  %.not855 = icmp eq i32 %.pre-phi, 0
  br i1 %.not855, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %trunc = trunc i64 %.39725.lcssa to i32
  %rev = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %i.acg = zext i32 %rev to i64
  %i.ach = load i64, ptr %i.ai, align 8, !tbaa !50
  %.not856 = icmp eq i64 %i.ach, %i.acg
  br i1 %.not856, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  store ptr @.str.15, ptr %i.ak, align 8, !tbaa !47
  store i32 16209, ptr %i.l, align 8, !tbaa !22
  br label %.thread

bb.ds:                                            ; preds = %bb.dq, %bb.dp, %bb.dj
  %.40819 = phi ptr [ %.0779, %bb.dj ], [ %.39818.lcssa, %bb.dp ], [ %.39818.lcssa, %bb.dq ]
  %.40772 = phi i32 [ %.0732, %bb.dj ], [ %.39771.lcssa, %bb.dp ], [ %.39771.lcssa, %bb.dq ]
  %.40726 = phi i64 [ %.0686, %bb.dj ], [ 0, %bb.dp ], [ 0, %bb.dq ]
  %.40 = phi i32 [ %.0676, %bb.dj ], [ 0, %bb.dp ], [ 0, %bb.dq ]
  %.1672 = phi i32 [ %.0671, %bb.dj ], [ %.0730, %bb.dp ], [ %.0730, %bb.dq ]
  store i32 16208, ptr %i.l, align 8, !tbaa !22
  br label %.loopexit908

.thread:                                          ; preds = %bb.bl, %bb.bq, %.loopexit3068, %bb.dg, %bb.ca, %bb.cb, %bb.dr, %bb.di, %bb.da, %bb.cs, %bb.ck, %bb.ci, %bb.cg, %bb.bw, %bb.bu, %bb.bs, %bb.be, %bb.bb, %bb.ay, %bb.ax, %bb.as, %bb.am, %bb.ag, %bb.w, %bb.v, %bb.r, %bb.p, %bb.m
  %.42821 = phi ptr [ %.0779, %bb.m ], [ %.1780.lcssa, %bb.p ], [ %.1780.lcssa, %bb.r ], [ %.1780.lcssa, %bb.v ], [ %.1780.lcssa, %bb.w ], [ %.5784, %bb.ag ], [ %.6785.lcssa, %bb.am ], [ %.7786.lcssa, %bb.as ], [ %i.hl, %bb.ax ], [ %.9788, %bb.ay ], [ %.10789.lcssa, %bb.bb ], [ %.12791.lcssa, %bb.be ], [ %.17796.lcssa, %bb.bl ], [ %.15794.lcssa, %bb.bs ], [ %.15794.lcssa, %bb.bu ], [ %.15794.lcssa, %bb.bw ], [ %i.pw, %bb.cb ], [ %i.pw, %bb.ca ], [ %.27806, %bb.cg ], [ %.27806, %bb.ci ], [ %.27806, %bb.ck ], [ %.34813, %bb.cs ], [ %.38817, %bb.da ], [ %.38817, %bb.dg ], [ %.38817, %.loopexit3068 ], [ %.0779, %bb.di ], [ %.39818.lcssa, %bb.dr ], [ %.20799, %bb.bq ]
  %.2778 = phi ptr [ %.0776, %bb.m ], [ %.0776, %bb.p ], [ %.0776, %bb.r ], [ %.0776, %bb.v ], [ %.0776, %bb.w ], [ %.0776, %bb.ag ], [ %.0776, %bb.am ], [ %.0776, %bb.as ], [ %i.hn, %bb.ax ], [ %.0776, %bb.ay ], [ %.0776, %bb.bb ], [ %.0776, %bb.be ], [ %.0776, %bb.bl ], [ %.0776, %bb.bs ], [ %.0776, %bb.bu ], [ %.0776, %bb.bw ], [ %i.pu, %bb.cb ], [ %i.pu, %bb.ca ], [ %.0776, %bb.cg ], [ %.0776, %bb.ci ], [ %.0776, %bb.ck ], [ %.0776, %bb.cs ], [ %.0776, %bb.da ], [ %.lcssa2663, %bb.dg ], [ %.lcssa2663, %.loopexit3068 ], [ %i.aai, %bb.di ], [ %.0776, %bb.dr ], [ %.0776, %bb.bq ]
  %.42774 = phi i32 [ %.0732, %bb.m ], [ %.1733.lcssa, %bb.p ], [ %.1733.lcssa, %bb.r ], [ %.1733.lcssa, %bb.v ], [ %.1733.lcssa, %bb.w ], [ %.5737, %bb.ag ], [ %.6738.lcssa, %bb.am ], [ %.7739.lcssa, %bb.as ], [ %i.hk, %bb.ax ], [ %.9741, %bb.ay ], [ %.10742.lcssa, %bb.bb ], [ %.12744.lcssa, %bb.be ], [ %.17749.lcssa, %bb.bl ], [ %.15747.lcssa, %bb.bs ], [ %.15747.lcssa, %bb.bu ], [ %.15747.lcssa, %bb.bw ], [ %i.px, %bb.cb ], [ %i.px, %bb.ca ], [ %.27759, %bb.cg ], [ %.27759, %bb.ci ], [ %.27759, %bb.ck ], [ %.34766, %bb.cs ], [ %.38770, %bb.da ], [ %.38770, %bb.dg ], [ %.38770, %.loopexit3068 ], [ %.0732, %bb.di ], [ %.39771.lcssa, %bb.dr ], [ %.20752, %bb.bq ]
  %.1731 = phi i32 [ %.0730, %bb.m ], [ %.0730, %bb.p ], [ %.0730, %bb.r ], [ %.0730, %bb.v ], [ %.0730, %bb.w ], [ %.0730, %bb.ag ], [ %.0730, %bb.am ], [ %.0730, %bb.as ], [ %i.hm, %bb.ax ], [ %.0730, %bb.ay ], [ %.0730, %bb.bb ], [ %.0730, %bb.be ], [ %.0730, %bb.bl ], [ %.0730, %bb.bs ], [ %.0730, %bb.bu ], [ %.0730, %bb.bw ], [ %i.pv, %bb.cb ], [ %i.pv, %bb.ca ], [ %.0730, %bb.cg ], [ %.0730, %bb.ci ], [ %.0730, %bb.ck ], [ %.0730, %bb.cs ], [ %.0730, %bb.da ], [ %i.aac, %bb.dg ], [ %i.aac, %.loopexit3068 ], [ %i.aaj, %bb.di ], [ %.0730, %bb.dr ], [ %.0730, %bb.bq ]
  %.42728 = phi i64 [ %.0686, %bb.m ], [ %.1687.lcssa, %bb.p ], [ %.1687.lcssa, %bb.r ], [ %i.cw, %bb.v ], [ 0, %bb.w ], [ %i.ey, %bb.ag ], [ %i.fo, %bb.am ], [ %.7693.lcssa, %bb.as ], [ %.9695, %bb.ax ], [ %.9695, %bb.ay ], [ %i.io, %bb.bb ], [ %.12698.lcssa, %bb.be ], [ %i.md, %bb.bl ], [ %.15701.lcssa, %bb.bs ], [ %.15701.lcssa, %bb.bu ], [ %.15701.lcssa, %bb.bw ], [ %i.py, %bb.cb ], [ %i.py, %bb.ca ], [ %i.sm, %bb.cg ], [ %i.sm, %bb.ci ], [ %i.sm, %bb.ck ], [ %i.wf, %bb.cs ], [ %.38724, %bb.da ], [ %.38724, %bb.dg ], [ %.38724, %.loopexit3068 ], [ %.0686, %bb.di ], [ %.39725.lcssa, %bb.dr ], [ %.20706, %bb.bq ]
  %.42 = phi i32 [ %.0676, %bb.m ], [ %.1677.lcssa, %bb.p ], [ %.1677.lcssa, %bb.r ], [ %i.cx, %bb.v ], [ 0, %bb.w ], [ %i.ez, %bb.ag ], [ %i.fp, %bb.am ], [ %.7683.lcssa, %bb.as ], [ %.9685, %bb.ax ], [ %.9685, %bb.ay ], [ %i.ip, %bb.bb ], [ %.12.lcssa, %bb.be ], [ %i.me, %bb.bl ], [ %.15.lcssa, %bb.bs ], [ %.15.lcssa, %bb.bu ], [ %.15.lcssa, %bb.bw ], [ %i.pz, %bb.cb ], [ %i.pz, %bb.ca ], [ %i.sn, %bb.cg ], [ %i.sn, %bb.ci ], [ %i.sn, %bb.ck ], [ %i.wg, %bb.cs ], [ %.38, %bb.da ], [ %.38, %bb.dg ], [ %.38, %.loopexit3068 ], [ %.0676, %bb.di ], [ %.39.lcssa, %bb.dr ], [ %.20, %bb.bq ]
  %.3674 = phi i32 [ %.0671, %bb.m ], [ %.0671, %bb.p ], [ %.0671, %bb.r ], [ %.0671, %bb.v ], [ %.0671, %bb.w ], [ %.0671, %bb.ag ], [ %.0671, %bb.am ], [ %.0671, %bb.as ], [ %.0671, %bb.ax ], [ %.0671, %bb.ay ], [ %.0671, %bb.bb ], [ %.0671, %bb.be ], [ %.0671, %bb.bl ], [ %.0671, %bb.bs ], [ %.0671, %bb.bu ], [ %.0671, %bb.bw ], [ %.0671, %bb.cb ], [ %.0671, %bb.ca ], [ %.0671, %bb.cg ], [ %.0671, %bb.ci ], [ %.0671, %bb.ck ], [ %.0671, %bb.cs ], [ %.0671, %bb.da ], [ %.0671, %bb.dg ], [ %.0671, %.loopexit3068 ], [ %.0671, %bb.di ], [ %.0730, %bb.dr ], [ %.0671, %bb.bq ]
  %.8 = phi i32 [ %.0, %bb.m ], [ %.0, %bb.p ], [ %.0, %bb.r ], [ %.0, %bb.v ], [ %.0, %bb.w ], [ %.0, %bb.ag ], [ %.0, %bb.am ], [ %.0, %bb.as ], [ %.0, %bb.ax ], [ %.0, %bb.ay ], [ %.0, %bb.bb ], [ %i.jv, %bb.be ], [ %.1, %bb.bl ], [ %.1, %bb.bs ], [ %i.pl, %bb.bu ], [ %i.pr, %bb.bw ], [ %.3, %bb.cb ], [ %.3, %bb.ca ], [ %.3, %bb.cg ], [ %.3, %bb.ci ], [ %.3, %bb.ck ], [ %.5, %bb.cs ], [ %.7, %bb.da ], [ %.7, %bb.dg ], [ %.7, %.loopexit3068 ], [ %.0, %bb.di ], [ %.0, %bb.dr ], [ %.1, %bb.bq ]
  %.pre = load i32, ptr %i.l, align 8, !tbaa !22
  br label %bb.k

.loopexit908.loopexit:                            ; preds = %.lr.ph1496
  %i.aci = trunc nuw nsw i64 %indvars.iv2137 to i32
  br label %.loopexit908

.loopexit908.loopexit1776:                        ; preds = %.lr.ph1486
  %i.acj = trunc nuw nsw i64 %indvars.iv2134 to i32
  br label %.loopexit908

.loopexit908.loopexit1777:                        ; preds = %.lr.ph1476
  %i.ack = trunc nuw nsw i64 %indvars.iv2131 to i32
  br label %.loopexit908

.loopexit908.loopexit1779:                        ; preds = %.lr.ph1768.1, %.lr.ph1768.preheader
  %indvars.iv2163.lcssa = phi i64 [ %i.bz, %.lr.ph1768.preheader ], [ %indvars.iv.next2164, %.lr.ph1768.1 ]
  %.16871766.lcssa = phi i64 [ %.0686, %.lr.ph1768.preheader ], [ %i.cg, %.lr.ph1768.1 ]
  %.17801764.lcssa = phi ptr [ %.0779, %.lr.ph1768.preheader ], [ %i.cc, %.lr.ph1768.1 ]
  %i.acl = trunc nuw nsw i64 %indvars.iv2163.lcssa to i32
  br label %.loopexit908

.loopexit908.loopexit1780:                        ; preds = %.lr.ph1624.3, %.lr.ph1624.2, %.lr.ph1624.1, %.lr.ph1624.preheader
  %indvars.iv2160.lcssa = phi i64 [ %i.bu, %.lr.ph1624.preheader ], [ %indvars.iv.next2161, %.lr.ph1624.1 ], [ %indvars.iv.next2161.1, %.lr.ph1624.2 ], [ %indvars.iv.next2161.2, %.lr.ph1624.3 ]
  %.26881622.lcssa = phi i64 [ %.0686, %.lr.ph1624.preheader ], [ %i.dp, %.lr.ph1624.1 ], [ %i.dx, %.lr.ph1624.2 ], [ %i.ef, %.lr.ph1624.3 ]
  %.27811620.lcssa = phi ptr [ %.0779, %.lr.ph1624.preheader ], [ %i.dl, %.lr.ph1624.1 ], [ %i.dt, %.lr.ph1624.2 ], [ %i.eb, %.lr.ph1624.3 ]
  %i.acm = trunc nuw nsw i64 %indvars.iv2160.lcssa to i32
  br label %.loopexit908

.loopexit908.loopexit1781:                        ; preds = %.lr.ph1614.3, %.lr.ph1614.2, %.lr.ph1614.1, %.lr.ph1614.preheader
  %indvars.iv2158.lcssa = phi i64 [ %i.fw, %.lr.ph1614.preheader ], [ %indvars.iv.next2159, %.lr.ph1614.1 ], [ %indvars.iv.next2159.1, %.lr.ph1614.2 ], [ %indvars.iv.next2159.2, %.lr.ph1614.3 ]
  %.76931611.lcssa = phi i64 [ %i.fs, %.lr.ph1614.preheader ], [ %i.gd, %.lr.ph1614.1 ], [ %i.gk, %.lr.ph1614.2 ], [ %i.gs, %.lr.ph1614.3 ]
  %.77861609.lcssa = phi ptr [ %.0779, %.lr.ph1614.preheader ], [ %i.fz, %.lr.ph1614.1 ], [ %i.gg, %.lr.ph1614.2 ], [ %i.go, %.lr.ph1614.3 ]
  %i.acn = trunc nuw nsw i64 %indvars.iv2158.lcssa to i32
  br label %.loopexit908

.loopexit908.loopexit1789:                        ; preds = %.lr.ph1304.1, %.lr.ph1304.preheader
  %indvars.iv2117.lcssa = phi i64 [ %i.br, %.lr.ph1304.preheader ], [ %indvars.iv.next2118, %.lr.ph1304.1 ]
  %.106961302.lcssa = phi i64 [ %.0686, %.lr.ph1304.preheader ], [ %i.hv, %.lr.ph1304.1 ]
  %.107891300.lcssa = phi ptr [ %.0779, %.lr.ph1304.preheader ], [ %i.hr, %.lr.ph1304.1 ]
  %i.aco = trunc nuw nsw i64 %indvars.iv2117.lcssa to i32
  br label %.loopexit908

.loopexit908.loopexit1790:                        ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.aam, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.397251295.lcssa = phi i64 [ %.0686, %.lr.ph.preheader ], [ %i.aat, %.lr.ph.1 ], [ %i.abb, %.lr.ph.2 ], [ %i.abj, %.lr.ph.3 ]
  %.398181293.lcssa = phi ptr [ %.0779, %.lr.ph.preheader ], [ %i.aap, %.lr.ph.1 ], [ %i.aax, %.lr.ph.2 ], [ %i.abf, %.lr.ph.3 ]
  %i.acp = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit908

.loopexit908.loopexit2231:                        ; preds = %.lr.ph1462.preheader, %.lr.ph1462
  %.167021460.lcssa = phi i64 [ %i.kq, %.lr.ph1462 ], [ %.157011511, %.lr.ph1462.preheader ]
  %i.acq = zext i32 %.157471510 to i64
  %i.acr = shl i32 %.157471510, 3
  %i.acs = add i32 %i.acr, %.151512
  %scevgep.le = getelementptr i8, ptr %.157941509, i64 %i.acq
  br label %.loopexit908

.loopexit908.loopexit2232:                        ; preds = %.lr.ph1603.preheader, %.lr.ph1603
  %.367221601.lcssa = phi i64 [ %i.ww, %.lr.ph1603 ], [ %.35721, %.lr.ph1603.preheader ]
  %i.act = shl i32 %.35767, 3
  %i.acu = add i32 %.35, %i.act
  %i.acv = zext i32 %.35767 to i64
  %scevgep2157.le = getelementptr i8, ptr %.35814, i64 %i.acv
  br label %.loopexit908

.loopexit908.loopexit2233:                        ; preds = %.lr.ph1591.preheader, %.lr.ph1591
  %.337191589.lcssa = phi i64 [ %i.vm, %.lr.ph1591 ], [ %.32718.lcssa, %.lr.ph1591.preheader ]
  %i.acw = zext i32 %.32764.lcssa to i64
  %i.acx = shl i32 %.32764.lcssa, 3
  %i.acy = add i32 %i.acx, %.32.lcssa
  %scevgep2155.le = getelementptr i8, ptr %.32811.lcssa, i64 %i.acw
  br label %.loopexit908

.loopexit908.loopexit2234:                        ; preds = %.lr.ph1573.preheader, %.lr.ph1573
  %.327181570.lcssa = phi i64 [ %i.uj, %.lr.ph1573 ], [ %.31717, %.lr.ph1573.preheader ]
  %i.acz = zext i32 %.31763 to i64
  %i.ada = shl i32 %.31763, 3
  %i.adb = add i32 %i.ada, %.31
  %scevgep2151.le = getelementptr i8, ptr %.31810, i64 %i.acz
  br label %.loopexit908

.loopexit908.loopexit2235:                        ; preds = %.lr.ph1558.preheader, %.lr.ph1558
  %.297151556.lcssa = phi i64 [ %i.tf, %.lr.ph1558 ], [ %.28714, %.lr.ph1558.preheader ]
  %i.adc = shl i32 %.28760, 3
  %i.add = add i32 %.28, %i.adc
  %i.ade = zext i32 %.28760 to i64
  %scevgep2148.le = getelementptr i8, ptr %.28807, i64 %i.ade
  br label %.loopexit908

.loopexit908.loopexit2236:                        ; preds = %.lr.ph1546.preheader, %.lr.ph1546
  %.267121544.lcssa = phi i64 [ %i.rv, %.lr.ph1546 ], [ %.25711.lcssa, %.lr.ph1546.preheader ]
  %i.adf = zext i32 %.25757.lcssa to i64
  %i.adg = shl i32 %.25757.lcssa, 3
  %i.adh = add i32 %i.adg, %.25.lcssa
  %scevgep2146.le = getelementptr i8, ptr %.25804.lcssa, i64 %i.adf
  br label %.loopexit908

.loopexit908.loopexit2237:                        ; preds = %.lr.ph1528.preheader, %.lr.ph1528
  %.257111525.lcssa = phi i64 [ %i.qs, %.lr.ph1528 ], [ %.24710, %.lr.ph1528.preheader ]
  %i.adi = zext i32 %.24756 to i64
  %i.adj = shl i32 %.24756, 3
  %i.adk = add i32 %i.adj, %.24
  %scevgep2142.le = getelementptr i8, ptr %.24803, i64 %i.adi
  br label %.loopexit908

.loopexit908.loopexit3074:                        ; preds = %bb.k
  br label %.loopexit908

.loopexit908:                                     ; preds = %bb.ae, %bb.at, %bb.aw, %bb.bx, %bb.cw, %bb.dh, %.lr.ph1633, %.lr.ph1314, %bb.k, %.loopexit908.loopexit3074, %.loopexit908.loopexit2237, %.loopexit908.loopexit2236, %.loopexit908.loopexit2235, %.loopexit908.loopexit2234, %.loopexit908.loopexit2233, %.loopexit908.loopexit2232, %.loopexit908.loopexit2231, %.loopexit908.loopexit1790, %.loopexit908.loopexit1789, %.loopexit908.loopexit1781, %.loopexit908.loopexit1780, %.loopexit908.loopexit1779, %.loopexit908.loopexit1777, %.loopexit908.loopexit1776, %.loopexit908.loopexit, %bb.ds, %bb.aj
  %i.adl = phi i32 [ 16198, %.loopexit908.loopexit1777 ], [ %i.bp, %bb.k ], [ 16208, %bb.ds ], [ 16201, %.loopexit908.loopexit2235 ], [ 16199, %bb.aj ], [ 16200, %.loopexit908.loopexit2237 ], [ 16198, %.loopexit908.loopexit ], [ 16200, %.loopexit908.loopexit2236 ], [ 16202, %.loopexit908.loopexit2233 ], [ 16198, %.loopexit908.loopexit1776 ], [ 16206, %.loopexit908.loopexit1790 ], [ 16202, %.loopexit908.loopexit2234 ], [ 16197, %.lr.ph1314 ], [ 16180, %.loopexit908.loopexit1779 ], [ 16196, %.loopexit908.loopexit1789 ], [ 16189, %.loopexit908.loopexit1780 ], [ 16193, %.loopexit908.loopexit1781 ], [ 16198, %.loopexit908.loopexit2231 ], [ 16203, %.loopexit908.loopexit2232 ], [ 16191, %bb.ae ], [ 16194, %bb.at ], [ 16195, %bb.aw ], [ 16199, %bb.bx ], [ 16204, %bb.cw ], [ 16205, %bb.dh ], [ %i.es, %.lr.ph1633 ], [ %i.bp, %.loopexit908.loopexit3074 ] ; 2 uses
  %.07302045 = phi i32 [ %.0730, %.loopexit908.loopexit1777 ], [ %.0730, %bb.k ], [ %.0730, %bb.ds ], [ %.0730, %.loopexit908.loopexit2235 ], [ %.0730, %bb.aj ], [ %.0730, %.loopexit908.loopexit2237 ], [ %.0730, %.loopexit908.loopexit ], [ %.0730, %.loopexit908.loopexit2236 ], [ %.0730, %.loopexit908.loopexit2233 ], [ %.0730, %.loopexit908.loopexit1776 ], [ %.0730, %.loopexit908.loopexit1790 ], [ %.0730, %.loopexit908.loopexit2234 ], [ %.0730, %.lr.ph1314 ], [ %.0730, %.loopexit908.loopexit1779 ], [ %.0730, %.loopexit908.loopexit1789 ], [ %.0730, %.loopexit908.loopexit1780 ], [ %.0730, %.loopexit908.loopexit1781 ], [ %.0730, %.loopexit908.loopexit2231 ], [ %.0730, %.loopexit908.loopexit2232 ], [ %.0730, %bb.ae ], [ %.0730, %bb.at ], [ %.0730, %bb.aw ], [ %.0730, %bb.bx ], [ 0, %bb.cw ], [ 0, %bb.dh ], [ %.0730, %.lr.ph1633 ], [ %.0730, %.loopexit908.loopexit3074 ] ; 3 uses
  %.43822 = phi ptr [ %.187971472, %.loopexit908.loopexit1777 ], [ %.0779, %bb.k ], [ %.40819, %bb.ds ], [ %scevgep2148.le, %.loopexit908.loopexit2235 ], [ %.6785.lcssa, %bb.aj ], [ %scevgep2142.le, %.loopexit908.loopexit2237 ], [ %.197981492, %.loopexit908.loopexit ], [ %scevgep2146.le, %.loopexit908.loopexit2236 ], [ %scevgep2155.le, %.loopexit908.loopexit2233 ], [ %.177961482, %.loopexit908.loopexit1776 ], [ %.398181293.lcssa, %.loopexit908.loopexit1790 ], [ %scevgep2151.le, %.loopexit908.loopexit2234 ], [ %.127911440, %.lr.ph1314 ], [ %.17801764.lcssa, %.loopexit908.loopexit1779 ], [ %.107891300.lcssa, %.loopexit908.loopexit1789 ], [ %.27811620.lcssa, %.loopexit908.loopexit1780 ], [ %.77861609.lcssa, %.loopexit908.loopexit1781 ], [ %scevgep.le, %.loopexit908.loopexit2231 ], [ %scevgep2157.le, %.loopexit908.loopexit2232 ], [ %.4783, %bb.ae ], [ %.7786.lcssa, %bb.at ], [ %.9788, %bb.aw ], [ %.15794.lcssa, %bb.bx ], [ %.38817, %bb.cw ], [ %.0779, %bb.dh ], [ %.5784, %.lr.ph1633 ], [ %.0779, %.loopexit908.loopexit3074 ]
  %.43775 = phi i32 [ 0, %.loopexit908.loopexit1777 ], [ %.0732, %bb.k ], [ %.40772, %bb.ds ], [ 0, %.loopexit908.loopexit2235 ], [ %.6738.lcssa, %bb.aj ], [ 0, %.loopexit908.loopexit2237 ], [ 0, %.loopexit908.loopexit ], [ 0, %.loopexit908.loopexit2236 ], [ 0, %.loopexit908.loopexit2233 ], [ 0, %.loopexit908.loopexit1776 ], [ 0, %.loopexit908.loopexit1790 ], [ 0, %.loopexit908.loopexit2234 ], [ 0, %.lr.ph1314 ], [ 0, %.loopexit908.loopexit1779 ], [ 0, %.loopexit908.loopexit1789 ], [ 0, %.loopexit908.loopexit1780 ], [ 0, %.loopexit908.loopexit1781 ], [ 0, %.loopexit908.loopexit2231 ], [ 0, %.loopexit908.loopexit2232 ], [ %.4736, %bb.ae ], [ %.7739.lcssa, %bb.at ], [ %.9741, %bb.aw ], [ %.15747.lcssa, %bb.bx ], [ %.38770, %bb.cw ], [ %.0732, %bb.dh ], [ 0, %.lr.ph1633 ], [ %.0732, %.loopexit908.loopexit3074 ]
  %.43729 = phi i64 [ %.187041474, %.loopexit908.loopexit1777 ], [ %.0686, %bb.k ], [ %.40726, %bb.ds ], [ %.297151556.lcssa, %.loopexit908.loopexit2235 ], [ %i.fm, %bb.aj ], [ %.257111525.lcssa, %.loopexit908.loopexit2237 ], [ %.197051494, %.loopexit908.loopexit ], [ %.267121544.lcssa, %.loopexit908.loopexit2236 ], [ %.337191589.lcssa, %.loopexit908.loopexit2233 ], [ %.177031484, %.loopexit908.loopexit1776 ], [ %.397251295.lcssa, %.loopexit908.loopexit1790 ], [ %.327181570.lcssa, %.loopexit908.loopexit2234 ], [ %.126981442, %.lr.ph1314 ], [ %.16871766.lcssa, %.loopexit908.loopexit1779 ], [ %.106961302.lcssa, %.loopexit908.loopexit1789 ], [ %.26881622.lcssa, %.loopexit908.loopexit1780 ], [ %.76931611.lcssa, %.loopexit908.loopexit1781 ], [ %.167021460.lcssa, %.loopexit908.loopexit2231 ], [ %.367221601.lcssa, %.loopexit908.loopexit2232 ], [ %.4690, %bb.ae ], [ 0, %bb.at ], [ %.9695, %bb.aw ], [ %.15701.lcssa, %bb.bx ], [ %.38724, %bb.cw ], [ %.0686, %bb.dh ], [ %.5691, %.lr.ph1633 ], [ %.0686, %.loopexit908.loopexit3074 ]
  %.43 = phi i32 [ %i.ack, %.loopexit908.loopexit1777 ], [ %.0676, %bb.k ], [ %.40, %bb.ds ], [ %i.add, %.loopexit908.loopexit2235 ], [ %i.fn, %bb.aj ], [ %i.adk, %.loopexit908.loopexit2237 ], [ %i.aci, %.loopexit908.loopexit ], [ %i.adh, %.loopexit908.loopexit2236 ], [ %i.acy, %.loopexit908.loopexit2233 ], [ %i.acj, %.loopexit908.loopexit1776 ], [ %i.acp, %.loopexit908.loopexit1790 ], [ %i.adb, %.loopexit908.loopexit2234 ], [ %.121443, %.lr.ph1314 ], [ %i.acl, %.loopexit908.loopexit1779 ], [ %i.aco, %.loopexit908.loopexit1789 ], [ %i.acm, %.loopexit908.loopexit1780 ], [ %i.acn, %.loopexit908.loopexit1781 ], [ %i.acs, %.loopexit908.loopexit2231 ], [ %i.acu, %.loopexit908.loopexit2232 ], [ %.4680, %bb.ae ], [ 0, %bb.at ], [ %.9685, %bb.aw ], [ %.15.lcssa, %bb.bx ], [ %.38, %bb.cw ], [ %.0676, %bb.dh ], [ %.5681, %.lr.ph1633 ], [ %.0676, %.loopexit908.loopexit3074 ]
  %.4675 = phi i32 [ %.0671, %.loopexit908.loopexit1777 ], [ %.0671, %bb.k ], [ %.1672, %bb.ds ], [ %.0671, %.loopexit908.loopexit2235 ], [ %.0671, %bb.aj ], [ %.0671, %.loopexit908.loopexit2237 ], [ %.0671, %.loopexit908.loopexit ], [ %.0671, %.loopexit908.loopexit2236 ], [ %.0671, %.loopexit908.loopexit2233 ], [ %.0671, %.loopexit908.loopexit1776 ], [ %.0671, %.loopexit908.loopexit1790 ], [ %.0671, %.loopexit908.loopexit2234 ], [ %.0671, %.lr.ph1314 ], [ %.0671, %.loopexit908.loopexit1779 ], [ %.0671, %.loopexit908.loopexit1789 ], [ %.0671, %.loopexit908.loopexit1780 ], [ %.0671, %.loopexit908.loopexit1781 ], [ %.0671, %.loopexit908.loopexit2231 ], [ %.0671, %.loopexit908.loopexit2232 ], [ %.0671, %.lr.ph1633 ], [ %.0671, %bb.dh ], [ %.0671, %bb.cw ], [ %.0671, %bb.bx ], [ %.0671, %bb.aw ], [ %.0671, %bb.at ], [ %.0671, %bb.ae ], [ %.0671, %.loopexit908.loopexit3074 ] ; 4 uses
  %.9 = phi i32 [ %.1, %.loopexit908.loopexit1777 ], [ -3, %bb.k ], [ 1, %bb.ds ], [ %.4, %.loopexit908.loopexit2235 ], [ %.0, %bb.aj ], [ %.3, %.loopexit908.loopexit2237 ], [ %.1, %.loopexit908.loopexit ], [ %.3, %.loopexit908.loopexit2236 ], [ %.5, %.loopexit908.loopexit2233 ], [ %.1, %.loopexit908.loopexit1776 ], [ %.0, %.loopexit908.loopexit1790 ], [ %.5, %.loopexit908.loopexit2234 ], [ %.0, %.lr.ph1314 ], [ %.0, %.loopexit908.loopexit1779 ], [ %.0, %.loopexit908.loopexit1789 ], [ %.0, %.loopexit908.loopexit1780 ], [ %.0, %.loopexit908.loopexit1781 ], [ %.1, %.loopexit908.loopexit2231 ], [ %.6, %.loopexit908.loopexit2232 ], [ %.0, %bb.ae ], [ %.0, %bb.at ], [ %.0, %bb.aw ], [ 0, %bb.bx ], [ %.7, %bb.cw ], [ %.0, %bb.dh ], [ %.0, %.lr.ph1633 ], [ 1, %.loopexit908.loopexit3074 ] ; 2 uses
  store ptr %.0776, ptr %i.o, align 8, !tbaa !74
  store i32 %.07302045, ptr %i.x, align 8, !tbaa !75
  store ptr %.43822, ptr %0, align 8, !tbaa !48
  store i32 %.43775, ptr %i.z, align 8, !tbaa !49
  store i64 %.43729, ptr %i.ab, align 8, !tbaa !33
  store i32 %.43, ptr %i.ad, align 8, !tbaa !34
  %i.adm = load i32, ptr %i.bi, align 4, !tbaa !40
  %.not888 = icmp eq i32 %i.adm, 0
  br i1 %.not888, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %.loopexit908
  %.not889 = icmp ne i32 %.4675, %.07302045
  %i.adn = icmp samesign ult i32 %i.adl, 16209
  %or.cond2563 = select i1 %.not889, i1 %i.adn, i1 false
  br i1 %or.cond2563, label %bb.du, label %updatewindow.exit.thread

bb.du:                                            ; preds = %bb.dt
  %i.ado = icmp samesign ult i32 %i.adl, 16206
  %i.adp = icmp ne i32 %1, 4
  %or.cond7 = or i1 %i.adp, %i.ado
  br i1 %or.cond7, label %bb.dv, label %updatewindow.exit.thread

bb.dv:                                            ; preds = %bb.du, %.loopexit908
  %i.adq = sub i32 %.4675, %.07302045             ; 5 uses
  %i.adr = load ptr, ptr %i.h, align 8, !tbaa !17 ; 11 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 72 ; 3 uses
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !43 ; 2 uses
  %i.adu = icmp eq ptr %i.adt, null
  br i1 %i.adu, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.adv = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !45
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adr, i64 56
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !44
  %i.aea = shl nuw i32 1, %i.adz
  %i.aeb = tail call ptr %i.adv(ptr noundef %i.adx, i32 noundef %i.aea, i32 noundef 1) #9, !inline_history !0 ; 3 uses
  store ptr %i.aeb, ptr %i.ads, align 8, !tbaa !43
  %i.aec = icmp eq ptr %i.aeb, null
  br i1 %i.aec, label %updatewindow.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aed = phi ptr [ %i.aeb, %bb.dw ], [ %i.adt, %bb.dv ] ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adr, i64 60 ; 5 uses
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !40 ; 2 uses
  %i.aeg = icmp eq i32 %i.aef, 0
  br i1 %i.aeg, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 56
  %i.aei = load i32, ptr %i.aeh, align 8, !tbaa !44
  %i.aej = shl nuw i32 1, %i.aei                  ; 2 uses
  store i32 %i.aej, ptr %i.aee, align 4, !tbaa !40
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adr, i64 68
  store i32 0, ptr %i.aek, align 4, !tbaa !42
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adr, i64 64
  store i32 0, ptr %i.ael, align 8, !tbaa !41
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.aem = phi i32 [ %i.aej, %bb.dy ], [ %i.aef, %bb.dx ] ; 3 uses
  %.not.i895 = icmp ult i32 %i.adq, %i.aem
  br i1 %.not.i895, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aen = zext i32 %i.aem to i64                 ; 2 uses
  %i.aeo = sub nsw i64 0, %i.aen
  %i.aep = getelementptr inbounds i8, ptr %.0776, i64 %i.aeo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aed, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aep, i64 %i.aen, i1 false)
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.adr, i64 68
  store i32 0, ptr %i.aeq, align 4, !tbaa !42
  %i.aer = load i32, ptr %i.aee, align 4, !tbaa !40
  %i.aes = getelementptr inbounds nuw i8, ptr %i.adr, i64 64
  store i32 %i.aer, ptr %i.aes, align 8, !tbaa !41
  br label %updatewindow.exit.thread

bb.eb:                                            ; preds = %bb.dz
  %i.aet = getelementptr inbounds nuw i8, ptr %i.adr, i64 68 ; 4 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !42 ; 2 uses
  %i.aev = sub i32 %i.aem, %i.aeu                 ; 2 uses
  %spec.select.i896 = tail call i32 @llvm.umin.i32(i32 %i.aev, i32 %i.adq) ; 4 uses
end_hunk_1
