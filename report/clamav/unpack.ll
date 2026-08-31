Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unpack?download=true
inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN8ModelPPM16RestartModelRareEv:bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fn, i64 39
  store i8 4, ptr %i.gs, align 8, !tbaa !74
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fn, i64 42
  store i8 3, ptr %i.gu, align 1, !tbaa !72
  store i16 %i.fp, ptr %i.gt, align 1, !tbaa !73
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fn, i64 43
  store i8 4, ptr %i.gv, align 4, !tbaa !74
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fn, i64 46
  store i8 3, ptr %i.gx, align 1, !tbaa !72
  store i16 %i.fp, ptr %i.gw, align 1, !tbaa !73
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fn, i64 47
  store i8 4, ptr %i.gy, align 8, !tbaa !74
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fn, i64 50
  store i8 3, ptr %i.ha, align 1, !tbaa !72
  store i16 %i.fp, ptr %i.gz, align 1, !tbaa !73
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fn, i64 51
  store i8 4, ptr %i.hb, align 4, !tbaa !74
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fn, i64 52
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fn, i64 54
  store i8 3, ptr %i.hd, align 1, !tbaa !72
  store i16 %i.fp, ptr %i.hc, align 1, !tbaa !73
  %i.he = getelementptr inbounds nuw i8, ptr %i.fn, i64 55
  store i8 4, ptr %i.he, align 8, !tbaa !74
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fn, i64 58
  store i8 3, ptr %i.hg, align 1, !tbaa !72
  store i16 %i.fp, ptr %i.hf, align 1, !tbaa !73
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fn, i64 59
  store i8 4, ptr %i.hh, align 4, !tbaa !74
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fn, i64 60
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fn, i64 62
  store i8 3, ptr %i.hj, align 1, !tbaa !72
  store i16 %i.fp, ptr %i.hi, align 1, !tbaa !73
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fn, i64 63
  store i8 4, ptr %i.hk, align 8, !tbaa !74
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 25
  br i1 %exitcond62.not, label %bb.l, label %.preheader, !llvm.loop !75

bb.l:                                             ; preds = %.preheader
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN8ModelPPM14StartModelRareEi(ptr noundef nonnull align 8 dereferenceable(19648) initializes((1652, 1656), (1664, 1920), (2688, 2689), (19120, 19158), (19286, 19287), (19296, 19632), (19640, 19648)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i8 1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i32 %1, ptr %i.b, align 4, !tbaa !48
  tail call void @_ZN8ModelPPM16RestartModelRareEv(ptr noundef nonnull align 8 dereferenceable(19648) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2176
  store i8 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2177
  store i8 2, ptr %i.d, align 1, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.e, i8 4, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %i.f, i8 6, i64 245, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1921
  store i8 1, ptr %i.h, align 1, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1922
  store i8 2, ptr %i.i, align 2, !tbaa !27
  br label %bb.a

bb.a:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.024 = phi i32 [ 1, %.lr.ph ], [ %.1.1, %bb.b ] ; 2 uses
  %.01323 = phi i32 [ 3, %.lr.ph ], [ %.114.1, %bb.b ] ; 2 uses
  %.01522 = phi i32 [ 1, %.lr.ph ], [ %.116.1, %bb.b ] ; 2 uses
  %i.j = trunc i32 %.01323 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.01522, 1                  ; 3 uses
  %i.l = zext i1 %.not to i32
  %.1 = add nsw i32 %.024, %i.l                   ; 2 uses
  %i.m = zext i1 %.not to i32
  %.114 = add nuw nsw i32 %.01323, %i.m           ; 2 uses
  %i.n = trunc i32 %.114 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next
  store i8 %i.n, ptr %i.o, align 1, !tbaa !27
  %i.p = add nsw i32 %.01522, -2
  %i.q = select i1 %.not, i32 %.024, i32 %i.p     ; 2 uses
  %.not.1 = icmp eq i32 %i.q, 0                   ; 3 uses
  %i.r = add nsw i32 %.1, 1                       ; 2 uses
  %.116.1 = select i1 %.not.1, i32 %i.r, i32 %i.q
  %i.s = zext i1 %.not.1 to i32
  %.114.1 = add nuw nsw i32 %.114, %i.s
  %.1.1 = select i1 %.not.1, i32 %i.r, i32 %.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i8 0, i64 64, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.u, i8 8, i64 192, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1603
  store i8 7, ptr %i.v, align 1, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14RARPPM_CONTEXT7rescaleEP8ModelPPM(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %struct.RARPPM_STATE, align 1       ; 4 uses
  %i.a = load i16, ptr %0, align 1, !tbaa !61
  %i.b = zext i16 %i.a to i32                     ; 3 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 1, !tbaa !27   ; 2 uses
  %.not81 = icmp eq ptr %i.e, %i.g
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.082 = phi ptr [ %i.h, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.082, i64 -10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) %.082, i64 10, i1 false), !tbaa.struct !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.082, ptr noundef nonnull align 1 dereferenceable(10) %i.h, i64 10, i1 false), !tbaa.struct !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.h, ptr noundef nonnull align 1 dereferenceable(10) %2, i64 10, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.f, align 1, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.h, %.lr.ph ] ; 2 uses
  %.lcssa78 = phi ptr [ %i.g, %bb.a ], [ %i.i, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa78, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !67
  %i.m = add i8 %i.l, 4
  store i8 %i.m, ptr %i.k, align 1, !tbaa !67
  %i.n = load i16, ptr %i.j, align 1, !tbaa !27
  %i.o = add i16 %i.n, 4                          ; 2 uses
  store i16 %i.o, ptr %i.j, align 1, !tbaa !27
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !67
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = sub nsw i32 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1648
  %i.v = load i32, ptr %i.u, align 8, !tbaa !60
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32                      ; 2 uses
  %i.y = add nuw nsw i32 %i.x, %i.s
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = trunc nuw i32 %i.z to i8
  store i8 %i.aa, ptr %i.q, align 1, !tbaa !67
  %i.ab = trunc nuw nsw i32 %i.z to i16
  store i16 %i.ab, ptr %i.j, align 1, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %._crit_edge
  %.061 = phi i32 [ %i.c, %._crit_edge ], [ %i.aw, %bb.f ]
  %.058 = phi i32 [ %i.t, %._crit_edge ], [ %i.ag, %bb.f ]
  %.1 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 10 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 11 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !67
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = sub nsw i32 %.058, %i.af                ; 3 uses
  %i.ah = add nuw nsw i32 %i.af, %i.x
  %i.ai = lshr i32 %i.ah, 1                       ; 2 uses
  %i.aj = trunc nuw i32 %i.ai to i8
  store i8 %i.aj, ptr %i.ad, align 1, !tbaa !67
  %i.ak = load i16, ptr %i.j, align 1, !tbaa !27
  %i.al = trunc nuw nsw i32 %i.ai to i16
  %i.am = add i16 %i.ak, %i.al
  store i16 %i.am, ptr %i.j, align 1, !tbaa !27
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !67  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !67
  %i.aq = icmp ugt i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.010.0.copyload = load i8, ptr %i.ac, align 1, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.057 = phi ptr [ %i.ac, %bb.c ], [ %i.ar, %bb.e ] ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %.057, i64 -10 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.057, ptr noundef nonnull align 1 dereferenceable(10) %i.ar, i64 10, i1 false), !tbaa.struct !78
  %i.as = load ptr, ptr %i.f, align 1, !tbaa !27
  %.not70 = icmp eq ptr %i.ar, %i.as
  br i1 %.not70, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds i8, ptr %.057, i64 -19
  %i.au = load i8, ptr %i.at, align 1, !tbaa !67
  %i.av = icmp ugt i8 %i.an, %i.au
  br i1 %i.av, label %bb.d, label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %bb.d, %bb.e
  store i8 %.sroa.010.0.copyload, ptr %i.ar, align 1, !tbaa !27
  %.sroa.412.0..sroa_idx13 = getelementptr inbounds i8, ptr %.057, i64 -9
  store i8 %i.an, ptr %.sroa.412.0..sroa_idx13, align 1, !tbaa !27
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds i8, ptr %.057, i64 -8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx15, align 1, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge
  %i.aw = add nsw i32 %.061, -1                   ; 2 uses
  %.not71 = icmp eq i32 %i.aw, 0
  br i1 %.not71, label %bb.g, label %bb.b, !llvm.loop !82

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 11
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !67
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %.preheader, label %._crit_edge90

._crit_edge90:                                    ; preds = %bb.g
  %.pre = load i16, ptr %0, align 1, !tbaa !61
  br label %bb.l

.preheader:                                       ; preds = %bb.g, %.preheader
  %.162 = phi i32 [ %i.ba, %.preheader ], [ 0, %bb.g ]
  %.2 = phi ptr [ %i.bb, %.preheader ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ba = add nuw nsw i32 %.162, 1                ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.2, i64 -10
  %i.bc = getelementptr inbounds i8, ptr %.2, i64 -9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !67
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %.preheader, label %bb.h, !llvm.loop !83

bb.h:                                             ; preds = %.preheader
  %i.bf = add nsw i32 %i.ba, %i.ag                ; 2 uses
  %i.bg = load i16, ptr %0, align 1, !tbaa !61
  %i.bh = trunc i32 %i.ba to i16
  %i.bi = sub i16 %i.bg, %i.bh                    ; 3 uses
  store i16 %i.bi, ptr %0, align 1, !tbaa !61
  %i.bj = icmp eq i16 %i.bi, 1
  br i1 %i.bj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.f, align 1, !tbaa !27  ; 5 uses
  %.sroa.0.0.copyload = load i8, ptr %i.bk, align 1, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !27
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.159 = phi i32 [ %i.bf, %bb.i ], [ %i.bn, %bb.j ]
  %.sroa.4.0 = phi i8 [ %.sroa.4.0.copyload, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %i.bl = lshr i8 %.sroa.4.0, 1
  %i.bm = sub i8 %.sroa.4.0, %i.bl                ; 2 uses
  %i.bn = ashr i32 %.159, 1                       ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.j, label %bb.k, !llvm.loop !84

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i32 %i.b, 1
  %i.bq = lshr i32 %i.bp, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 19157
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 19312
  %i.bw = zext i8 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  store ptr %i.by, ptr %i.bk, align 8, !tbaa !31
  store ptr %i.bk, ptr %i.bx, align 8, !tbaa !31
  store ptr %i.j, ptr %i.d, align 8, !tbaa !62
  store i8 %.sroa.0.0.copyload, ptr %i.j, align 1, !tbaa !27
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bm, ptr %.sroa.4.0..sroa_idx5, align 1, !tbaa !27
  store i64 %.sroa.7.0.copyload, ptr %i.f, align 1, !tbaa !79
  br label %bb.s

bb.l:                                             ; preds = %._crit_edge90, %bb.h
  %i.bz = phi i16 [ %i.bi, %bb.h ], [ %.pre, %._crit_edge90 ]
  %.260 = phi i32 [ %i.bf, %bb.h ], [ %i.ag, %._crit_edge90 ] ; 2 uses
  %i.ca = lshr i32 %.260, 1
  %i.cb = sub i32 %.260, %i.ca
  %i.cc = load i16, ptr %i.j, align 1, !tbaa !27
  %i.cd = trunc i32 %i.cb to i16
  %i.ce = add i16 %i.cc, %i.cd
  store i16 %i.ce, ptr %i.j, align 1, !tbaa !27
  %i.cf = add nuw nsw i32 %i.b, 1
  %i.cg = lshr i32 %i.cf, 1                       ; 2 uses
  %i.ch = zext i16 %i.bz to i32
  %i.ci = add nuw nsw i32 %i.ch, 1
  %i.cj = lshr i32 %i.ci, 1                       ; 3 uses
  %.not72 = icmp eq i32 %i.cg, %i.cj
  %.pre91 = load ptr, ptr %i.f, align 1, !tbaa !27 ; 7 uses
  br i1 %.not72, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 19158 ; 4 uses
  %i.cl = zext nneg i32 %i.cg to i64
  %i.cm = getelementptr i8, ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !27  ; 3 uses
  %i.cp = zext nneg i32 %i.cj to i64
  %i.cq = getelementptr i8, ptr %i.ck, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !27  ; 2 uses
  %i.ct = icmp eq i8 %i.co, %i.cs
  br i1 %i.ct, label %_ZN12SubAllocator11ShrinkUnitsEPvii.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 19312 ; 3 uses
  %i.cv = zext i8 %i.cs to i64                    ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !31 ; 4 uses
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !31
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !31
  %i.cz = mul nuw nsw i32 %i.cj, 20
  %i.da = zext nneg i32 %i.cz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 1 %.pre91, i64 %i.da, i1 false)
  %i.db = zext i8 %i.co to i64
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 19120 ; 4 uses
  %i.dd = zext i8 %i.co to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !27
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = sub nsw i32 %i.dg, %i.dj                ; 3 uses
  %i.dl = mul nuw nsw i32 %i.dj, 20
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre91, i64 %i.dm ; 4 uses
  %i.do = sext i32 %i.dk to i64
  %i.dp = getelementptr i8, ptr %i.ck, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !27
  %i.ds = zext i8 %i.dr to i64                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !27
  %i.dv = zext i8 %i.du to i32
  %.not.i.i = icmp eq i32 %i.dk, %i.dv
  br i1 %.not.i.i, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = add nsw i64 %i.ds, -1                   ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dw ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31
  store ptr %i.dy, ptr %i.dn, align 8, !tbaa !31
  store ptr %i.dn, ptr %i.dx, align 8, !tbaa !31
  %i.dz = getelementptr inbounds i8, ptr %i.dc, i64 %i.dw
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.eb = zext i8 %i.ea to i32                    ; 2 uses
  %i.ec = mul nuw nsw i32 %i.eb, 20
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ed
  %i.ef = sub nsw i32 %i.dk, %i.eb
  %.phi.trans.insert.i.i = sext i32 %i.ef to i64
  %.phi.trans.insert16.i.i = getelementptr i8, ptr %i.ck, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert17.i.i = getelementptr i8, ptr %.phi.trans.insert16.i.i, i64 -1
  %.pre.i.i = load i8, ptr %.phi.trans.insert17.i.i, align 1, !tbaa !27
  %.pre18.i.i = zext i8 %.pre.i.i to i64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.p, %bb.o
  %.pre-phi.i.sink.i = phi i64 [ %i.db, %bb.o ], [ %.pre18.i.i, %bb.q ], [ %i.ds, %bb.p ]
  %.0.i.sink25.i = phi ptr [ %.pre91, %bb.o ], [ %i.ee, %bb.q ], [ %i.dn, %bb.p ] ; 2 uses
  %.0.ph.i = phi ptr [ %i.cx, %bb.o ], [ %.pre91, %bb.q ], [ %.pre91, %bb.p ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.pre-phi.i.sink.i ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !31
  store ptr %i.eh, ptr %.0.i.sink25.i, align 8, !tbaa !31
  store ptr %.0.i.sink25.i, ptr %i.eg, align 8, !tbaa !31
  br label %_ZN12SubAllocator11ShrinkUnitsEPvii.exit

_ZN12SubAllocator11ShrinkUnitsEPvii.exit:         ; preds = %bb.m, %.sink.split.i
  %.0.i = phi ptr [ %.pre91, %bb.m ], [ %.0.ph.i, %.sink.split.i ] ; 2 uses
  store ptr %.0.i, ptr %i.f, align 1, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %_ZN12SubAllocator11ShrinkUnitsEPvii.exit, %bb.l
  %i.ei = phi ptr [ %.0.i, %_ZN12SubAllocator11ShrinkUnitsEPvii.exit ], [ %.pre91, %bb.l ]
  store ptr %i.ei, ptr %i.d, align 8, !tbaa !62
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN8ModelPPM7CleanUpEv(ptr noundef nonnull align 8 dereferenceable(19648) initializes((1652, 1656), (1664, 1920), (2688, 2689), (19120, 19158), (19286, 19287), (19296, 19632), (19640, 19648)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19112 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN12SubAllocator16StopSubAllocatorEv.exit.i, label %_ZN12SubAllocator16StopSubAllocatorEv.exit

_ZN12SubAllocator16StopSubAllocatorEv.exit:       ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 19288 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.d) #25
  %.pr = load i64, ptr %i.a, align 8, !tbaa !16
  switch i64 %.pr, label %bb.b [
    i64 1048576, label %_ZN12SubAllocator17StartSubAllocatorEi.exit
    i64 0, label %_ZN12SubAllocator16StopSubAllocatorEv.exit.i
  ]

bb.b:                                             ; preds = %_ZN12SubAllocator16StopSubAllocatorEv.exit
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.e) #25
  br label %_ZN12SubAllocator16StopSubAllocatorEv.exit.i

_ZN12SubAllocator16StopSubAllocatorEv.exit.i:     ; preds = %_ZN12SubAllocator16StopSubAllocatorEv.exit, %bb.a, %bb.b
  %i.f = tail call noalias dereferenceable_or_null(1747660) ptr @malloc(i64 noundef 1747660) #26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19288
  store ptr %i.f, ptr %i.g, align 8, !tbaa !20
  %.not.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN12SubAllocator16StopSubAllocatorEv.exit.i
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %_ZN12SubAllocator17StartSubAllocatorEi.exit

bb.d:                                             ; preds = %_ZN12SubAllocator16StopSubAllocatorEv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1747640
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 19632
  store ptr %i.h, ptr %i.i, align 8, !tbaa !21
  store i64 1048576, ptr %i.a, align 8, !tbaa !16
  br label %_ZN12SubAllocator17StartSubAllocatorEi.exit

_ZN12SubAllocator17StartSubAllocatorEi.exit:      ; preds = %_ZN12SubAllocator16StopSubAllocatorEv.exit, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i8 1, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i32 2, ptr %i.k, align 4, !tbaa !48
  tail call void @_ZN8ModelPPM16RestartModelRareEv(ptr noundef nonnull align 8 dereferenceable(19648) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2176
  store i8 0, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2177
  store i8 2, ptr %i.m, align 1, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.n, i8 4, i64 9, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %i.o, i8 6, i64 245, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 3 uses
  store i8 0, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1921
  store i8 1, ptr %i.q, align 1, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1922
  store i8 2, ptr %i.r, align 2, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN12SubAllocator17StartSubAllocatorEi.exit
  %indvars.iv.i = phi i64 [ 3, %_ZN12SubAllocator17StartSubAllocatorEi.exit ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %.024.i = phi i32 [ 1, %_ZN12SubAllocator17StartSubAllocatorEi.exit ], [ %.1.i3.1, %bb.f ] ; 2 uses
  %.01323.i = phi i8 [ 3, %_ZN12SubAllocator17StartSubAllocatorEi.exit ], [ %.114.i.1, %bb.f ] ; 2 uses
  %.01522.i = phi i32 [ 1, %_ZN12SubAllocator17StartSubAllocatorEi.exit ], [ %.116.i.1, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i
  store i8 %.01323.i, ptr %i.s, align 1, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN8ModelPPM14StartModelRareEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i2 = icmp eq i32 %.01522.i, 1             ; 3 uses
  %i.t = zext i1 %.not.i2 to i32
end_hunk_0
begin_hunk_1_@_ZN6Unpack4InitEmb:bb.a
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.ag = sub i64 %i.aa, %.036                    ; 2 uses
  %i.ah = and i64 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = and i64 %i.ag, %i.ac
  %i.al = getelementptr inbounds nuw i8, ptr %calloc, i64 %i.ak
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !27
  %.neg = xor i64 %.036, -1
  %i.am = add i64 %i.aa, %.neg                    ; 2 uses
  %i.an = and i64 %i.am, %i.ab
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27
  %i.aq = and i64 %i.am, %i.ac
  %i.ar = getelementptr inbounds nuw i8, ptr %calloc, i64 %i.aq
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !27
  %i.as = add nuw i64 %.036, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !324

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.036.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.at = sub i64 %i.aa, %.036.epil.init          ; 2 uses
  %i.au = and i64 %i.at, %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  %i.ax = and i64 %i.at, %i.ac
  %i.ay = getelementptr inbounds nuw i8, ptr %calloc, i64 %i.ax
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 19312 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !155 ; 2 uses
  %.not31 = icmp eq ptr %i.ba, null
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.ba) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  store ptr %calloc, ptr %i.az, align 8, !tbaa !155
  br label %bb.n

bb.n:                                             ; preds = %.thread43, %bb.m
  store i64 %spec.store.select1, ptr %i.b, align 8, !tbaa !158
  %i.bb = add nsw i64 %spec.store.select1, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 59680
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !153
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Unpack8DoUnpackEjb(ptr noundef nonnull align 8 dereferenceable(59688) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.i [
    i32 15, label %bb.b
    i32 20, label %bb.d
    i32 26, label %bb.d
    i32 29, label %bb.f
    i32 50, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19832
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !202, !noundef !203
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6Unpack8Unpack15Eb(ptr noundef nonnull align 8 dereferenceable(59688) %0, i1 noundef zeroext %2)
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 19832
  %i.e = load i8, ptr %i.d, align 8, !tbaa !272, !range !202, !noundef !203
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6Unpack8Unpack20Eb(ptr noundef nonnull align 8 dereferenceable(59688) %0, i1 noundef zeroext %2)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19832
  %i.h = load i8, ptr %i.g, align 8, !tbaa !272, !range !202, !noundef !203
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6Unpack8Unpack29Eb(ptr noundef nonnull align 8 dereferenceable(59688) %0, i1 noundef zeroext %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6Unpack7Unpack5Eb(ptr noundef nonnull align 8 dereferenceable(59688) %0, i1 noundef zeroext %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e, %bb.b, %bb.c, %bb.h, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8ModelPPM16CreateSuccessorsEbP12RARPPM_STATE(ptr noundef nonnull align 8 dereferenceable(19648) %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load ptr, ptr %i.f, align 1, !tbaa !68   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.a, align 16, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load ptr, ptr %i.h, align 1, !tbaa !58
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.idx = phi i64 [ 0, %bb.a ], [ 8, %bb.b ]    ; 2 uses
  %.not64 = icmp eq ptr %2, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.pre = load ptr, ptr %.phi.trans.insert, align 1, !tbaa !58 ; 2 uses
  br i1 %.not64, label %._crit_edge, label %.loopexit89

._crit_edge:                                      ; preds = %bb.c, %bb.g
  %i.j = phi ptr [ %i.v, %bb.g ], [ %.pre, %bb.c ] ; 6 uses
  %.1.idx = phi i64 [ %.2.add, %bb.g ], [ %.0.idx, %bb.c ] ; 3 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !61
  %.not69 = icmp eq i16 %i.k, 1
  br i1 %.not69, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load ptr, ptr %i.l, align 1, !tbaa !27   ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !65
  %i.o = load i8, ptr %i.e, align 1, !tbaa !65    ; 2 uses
  %.not70 = icmp eq i8 %i.n, %i.o
  br i1 %.not70, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %bb.d, %.preheader88
  %.046 = phi ptr [ %i.p, %.preheader88 ], [ %i.m, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.046, i64 10 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !65
  %.not71 = icmp eq i8 %i.q, %i.o
  br i1 %.not71, label %.loopexit89, label %.preheader88, !llvm.loop !325

bb.e:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %.loopexit89

.loopexit89:                                      ; preds = %.preheader88, %bb.c, %bb.e, %bb.d
  %.152 = phi ptr [ %.pre, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %.preheader88 ] ; 2 uses
  %.248 = phi ptr [ %2, %bb.c ], [ %i.m, %bb.d ], [ %i.r, %bb.e ], [ %i.p, %.preheader88 ] ; 2 uses
  %.2.idx = phi i64 [ %.0.idx, %bb.c ], [ %.1.idx, %bb.d ], [ %.1.idx, %bb.e ], [ %.1.idx, %.preheader88 ] ; 3 uses
  %.2.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2.idx ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.248, i64 2
  %i.t = load ptr, ptr %i.s, align 1, !tbaa !68   ; 2 uses
  %.not65 = icmp eq ptr %i.t, %i.g
  br i1 %.not65, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.loopexit89
  %.not66 = icmp slt i64 %.2.idx, 512
  br i1 %.not66, label %bb.g, label %_ZN14RARPPM_CONTEXT11createChildEP8ModelPPMP12RARPPM_STATERS2_.exit.thread

bb.g:                                             ; preds = %bb.f
  %.2.add = add nuw nsw i64 %.2.idx, 8            ; 2 uses
  %.ptr67 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2.add
  store ptr %.248, ptr %.2.ptr, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %.152, i64 12
  %i.v = load ptr, ptr %i.u, align 1, !tbaa !58   ; 2 uses
  %.not68 = icmp eq ptr %i.v, null
  br i1 %.not68, label %bb.h, label %._crit_edge, !llvm.loop !326

bb.h:                                             ; preds = %.loopexit89, %bb.g
  %.253 = phi ptr [ %i.t, %.loopexit89 ], [ %.152, %bb.g ] ; 2 uses
  %.3 = phi ptr [ %.2.ptr, %.loopexit89 ], [ %.ptr67, %bb.g ] ; 2 uses
  %i.w = icmp eq ptr %.3, %i.a
  br i1 %i.w, label %_ZN14RARPPM_CONTEXT11createChildEP8ModelPPMP12RARPPM_STATERS2_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.b, %bb.h
  %.383 = phi ptr [ %.3, %bb.h ], [ %.ptr, %bb.b ]
  %.25382 = phi ptr [ %.253, %bb.h ], [ %i.c, %bb.b ] ; 6 uses
  %i.x = load i8, ptr %i.g, align 1, !tbaa !27    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %3 = ptrtoint ptr %i.y to i64
  %i.z = load i16, ptr %.25382, align 1, !tbaa !61 ; 2 uses
  %.not72 = icmp eq i16 %i.z, 1
  br i1 %.not72, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 19616
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110
  %.not73 = icmp ugt ptr %.25382, %i.ab
  br i1 %.not73, label %bb.j, label %_ZN14RARPPM_CONTEXT11createChildEP8ModelPPMP12RARPPM_STATERS2_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.25382, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.25382, i64 4
  %i.ae = load ptr, ptr %i.ad, align 1, !tbaa !27 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !65
  %.not74 = icmp eq i8 %i.af, %i.x
  br i1 %.not74, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.j, %.preheader
  %.349 = phi ptr [ %i.ag, %.preheader ], [ %i.ae, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.349, i64 10 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !65
  %.not75 = icmp eq i8 %i.ah, %i.x
  br i1 %.not75, label %.loopexit, label %.preheader, !llvm.loop !327

.loopexit:                                        ; preds = %.preheader, %bb.j
  %.450 = phi ptr [ %i.ae, %bb.j ], [ %i.ag, %.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.450, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !67
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  %i.am = load i16, ptr %i.ac, align 1, !tbaa !27
  %i.an = zext i16 %i.am to i32
  %i.ao = zext i16 %i.z to i32
  %i.ap = add nuw nsw i32 %i.ak, %i.ao
  %reass.sub = sub nsw i32 %i.an, %i.ap
  %i.aq = add nsw i32 %reass.sub, 1               ; 4 uses
  %i.ar = shl nsw i32 %i.al, 1                    ; 2 uses
  %.not76 = icmp ugt i32 %i.ar, %i.aq
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.as = mul nsw i32 %i.al, 5
  %i.at = icmp ugt i32 %i.as, %i.aq
  %i.au = zext i1 %i.at to i32
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.av = mul nsw i32 %i.aq, 3
  %i.aw = add nsw i32 %i.ar, -1
  %i.ax = add nsw i32 %i.aw, %i.av
  %i.ay = shl nsw i32 %i.aq, 1
  %i.az = udiv i32 %i.ax, %i.ay
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi i32 [ %i.au, %bb.k ], [ %i.az, %bb.l ]
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = add i8 %i.bb, 1
  br label %bb.o

bb.n:                                             ; preds = %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %.25382, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.6.0 = phi i8 [ %i.be, %bb.n ], [ %i.bc, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 19112
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 19304 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 19296
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 19312 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %bb.o
  %.354 = phi ptr [ %.25382, %bb.o ], [ %.0.i12.i, %bb.t ]
  %.4 = phi ptr [ %.383, %bb.o ], [ %i.bj, %bb.t ]
  %i.bj = getelementptr inbounds i8, ptr %.4, i64 -8 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -20 ; 2 uses
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !26
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.bo, null
  br i1 %.not3.i.i, label %_ZN12SubAllocator12AllocContextEv.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  store ptr %i.bp, ptr %i.bi, align 8, !tbaa !31
  br label %bb.t

_ZN12SubAllocator12AllocContextEv.exit.i:         ; preds = %bb.r
  %i.bq = call noundef ptr @_ZN12SubAllocator14AllocUnitsRareEi(ptr noundef nonnull align 8 dereferenceable(536) %i.bf, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZN14RARPPM_CONTEXT11createChildEP8ModelPPMP12RARPPM_STATERS2_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN12SubAllocator12AllocContextEv.exit.i, %bb.s, %bb.q
  %.0.i12.i = phi ptr [ %i.bq, %_ZN12SubAllocator12AllocContextEv.exit.i ], [ %i.bo, %bb.s ], [ %i.bn, %bb.q ] ; 8 uses
  store i16 1, ptr %.0.i12.i, align 1, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 2
  store i8 %i.x, ptr %i.br, align 1, !tbaa !27
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 3
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !27
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 4
  store i64 %3, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 12
  store ptr %.354, ptr %i.bs, align 1, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store ptr %.0.i12.i, ptr %i.bt, align 1, !tbaa !68
  %.not78 = icmp eq ptr %i.bj, %i.a
  br i1 %.not78, label %_ZN14RARPPM_CONTEXT11createChildEP8ModelPPMP12RARPPM_STATERS2_.exit.thread, label %bb.p, !llvm.loop !328

_ZN14RARPPM_CONTEXT11createChildEP8ModelPPMP12RARPPM_STATERS2_.exit.thread: ; preds = %_ZN12SubAllocator12AllocContextEv.exit.i, %bb.t, %bb.i, %bb.h, %bb.f
  %.055 = phi ptr [ null, %bb.f ], [ %.253, %bb.h ], [ null, %bb.i ], [ null, %_ZN12SubAllocator12AllocContextEv.exit.i ], [ %.0.i12.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.055
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 24}
!9 = !{!"_ZTS10RangeCoder", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 12, !11, i64 24}
!10 = !{!"_ZTSN10RangeCoder8SUBRANGEE", !5, i64 0, !5, i64 4, !5, i64 8}
!11 = !{!"p1 _ZTS6Unpack", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !5, i64 4}
!14 = !{!9, !5, i64 0}
!15 = !{!9, !5, i64 8}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTS12SubAllocator", !18, i64 0, !6, i64 8, !6, i64 46, !6, i64 174, !19, i64 176, !19, i64 184, !19, i64 192, !6, i64 200, !19, i64 504, !19, i64 512, !19, i64 520, !19, i64 528}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!17, !19, i64 176}
!21 = !{!17, !19, i64 520}
!22 = !{!17, !19, i64 504}
!23 = !{!17, !19, i64 512}
!24 = !{!17, !19, i64 184}
!25 = !{!17, !19, i64 528}
!26 = !{!17, !19, i64 192}
!27 = !{!6, !6, i64 0}
!28 = !{!17, !6, i64 174}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSN12SubAllocator8RAR_NODEE", !33, i64 0}
!33 = !{!"p1 _ZTSN12SubAllocator8RAR_NODEE", !12, i64 0}
!34 = distinct !{!34, !30}
!35 = !{!36, !38, i64 12}
!36 = !{!"_ZTS14RARPPM_MEM_BLK", !37, i64 0, !37, i64 2, !38, i64 4, !38, i64 12}
!37 = !{!"short", !6, i64 0}
!38 = !{!"p1 _ZTS14RARPPM_MEM_BLK", !12, i64 0}
!39 = !{!36, !38, i64 4}
!40 = !{!36, !37, i64 0}
!41 = !{!36, !37, i64 2}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = !{!49, !5, i64 1652}
!49 = !{!"_ZTS8ModelPPM", !6, i64 1, !50, i64 1601, !51, i64 1608, !51, i64 1616, !51, i64 1624, !52, i64 1632, !5, i64 1640, !5, i64 1644, !5, i64 1648, !5, i64 1652, !5, i64 1656, !5, i64 1660, !6, i64 1664, !6, i64 1920, !6, i64 2176, !6, i64 2432, !6, i64 2688, !6, i64 2689, !6, i64 2690, !6, i64 2692, !9, i64 19080, !17, i64 19112}
!50 = !{!"_ZTS19RARPPM_SEE2_CONTEXT", !37, i64 0, !6, i64 2, !6, i64 3}
!51 = !{!"p1 _ZTS14RARPPM_CONTEXT", !12, i64 0}
!52 = !{!"p1 _ZTS12RARPPM_STATE", !12, i64 0}
!53 = !{!49, !5, i64 1660}
!54 = !{!49, !51, i64 1624}
!55 = !{!49, !51, i64 1608}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !7, i64 0}
!58 = !{!59, !51, i64 12}
!59 = !{!"_ZTS14RARPPM_CONTEXT", !37, i64 0, !6, i64 2, !51, i64 12}
!60 = !{!49, !5, i64 1648}
!61 = !{!59, !37, i64 0}
!62 = !{!49, !52, i64 1632}
!63 = !{!49, !5, i64 1656}
!64 = !{!49, !6, i64 2689}
!65 = !{!66, !6, i64 0}
!66 = !{!"_ZTS12RARPPM_STATE", !6, i64 0, !6, i64 1, !51, i64 2}
!67 = !{!66, !6, i64 1}
!68 = !{!66, !51, i64 2}
!69 = distinct !{!69, !30}
!70 = !{!37, !37, i64 0}
!71 = distinct !{!71, !30}
!72 = !{!50, !6, i64 2}
!73 = !{!50, !37, i64 0}
!74 = !{!50, !6, i64 3}
!75 = distinct !{!75, !30}
!76 = !{!49, !6, i64 2688}
!77 = !{!49, !6, i64 1603}
!78 = !{i64 0, i64 1, !27, i64 1, i64 1, !27, i64 2, i64 8, !79}
!79 = !{!51, !51, i64 0}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = !{!5, !5, i64 0}
!86 = !{!87, !5, i64 8}
!87 = !{!"_ZTS6Unpack", !88, i64 0, !89, i64 8, !91, i64 32, !91, i64 64, !92, i64 96, !6, i64 128, !5, i64 144, !5, i64 148, !5, i64 152, !18, i64 160, !18, i64 168, !5, i64 176, !5, i64 180, !94, i64 184, !95, i64 204, !18, i64 19304, !19, i64 19312, !97, i64 19320, !90, i64 19832, !18, i64 19840, !90, i64 19848, !90, i64 19849, !90, i64 19850, !18, i64 19856, !90, i64 19864, !6, i64 19866, !6, i64 20378, !6, i64 20890, !6, i64 21402, !6, i64 21914, !6, i64 22170, !6, i64 22426, !5, i64 22684, !5, i64 22688, !5, i64 22692, !5, i64 22696, !5, i64 22700, !5, i64 22704, !5, i64 22708, !5, i64 22712, !5, i64 22716, !5, i64 22720, !5, i64 22724, !5, i64 22728, !5, i64 22732, !5, i64 22736, !6, i64 22740, !6, i64 38020, !90, i64 39048, !5, i64 39052, !5, i64 39056, !5, i64 39060, !6, i64 39064, !5, i64 39432, !5, i64 39436, !49, i64 39440, !5, i64 59088, !6, i64 59092, !5, i64 59496, !90, i64 59500, !90, i64 59501, !90, i64 59502, !98, i64 59504, !89, i64 59544, !99, i64 59568, !99, i64 59600, !102, i64 59632, !5, i64 59664, !18, i64 59672, !18, i64 59680}
!88 = !{!"p1 _ZTS11ComprDataIO", !12, i64 0}
!89 = !{!"_ZTS8BitInput", !5, i64 0, !5, i64 4, !90, i64 8, !19, i64 16}
!90 = !{!"bool", !6, i64 0}
!91 = !{!"_ZTS5ArrayIhE", !19, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!92 = !{!"_ZTS5ArrayI12UnpackFilterE", !93, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!93 = !{!"p1 _ZTS12UnpackFilter", !12, i64 0}
!94 = !{!"_ZTS17UnpackBlockHeader", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !90, i64 16, !90, i64 17}
!95 = !{!"_ZTS17UnpackBlockTables", !96, i64 0, !96, i64 3820, !96, i64 7640, !96, i64 11460, !96, i64 15280}
!96 = !{!"_ZTS11DecodeTable", !5, i64 0, !6, i64 4, !6, i64 68, !5, i64 132, !6, i64 136, !6, i64 1160, !6, i64 3208}
!97 = !{!"_ZTS16FragmentedWindow", !6, i64 0, !6, i64 256}
!98 = !{!"_ZTS5RarVM", !19, i64 0, !6, i64 8}
!99 = !{!"_ZTS5ArrayIP14UnpackFilter30E", !100, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!100 = !{!"p2 _ZTS14UnpackFilter30", !101, i64 0}
!101 = !{!"any p2 pointer", !12, i64 0}
!102 = !{!"_ZTS5ArrayIiE", !103, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!103 = !{!"p1 int", !12, i64 0}
!104 = !{!87, !5, i64 176}
!105 = !{!87, !5, i64 192}
!106 = !{!87, !5, i64 184}
!107 = !{!87, !19, i64 24}
!108 = !{!87, !88, i64 0}
!109 = !{!87, !5, i64 180}
!110 = !{!49, !19, i64 19616}
!111 = !{!49, !19, i64 19632}
!112 = !{!9, !5, i64 12}
!113 = !{!9, !5, i64 16}
!114 = !{!49, !6, i64 2690}
!115 = !{!49, !5, i64 1644}
end_hunk_1
