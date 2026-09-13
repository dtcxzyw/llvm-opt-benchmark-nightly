Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unistr?download=true
inline.NumInlined: 387
inline.NumDeleted: 66
begin_hunk_0_@_ZN6icu_7813UnicodeStringC2Eiii:bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 6 uses
  %min.iters.check107 = icmp ult i32 %3, 4
  br i1 %min.iters.check107, label %.lr.ph85.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i32 %3, 16
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph109

vector.ph109:                                     ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %wide.trip.count, 12
  %n.vec110 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert111 = insertelement <8 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat112 = shufflevector <8 x i16> %broadcast.splatinsert111, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph109
  %index114 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body113 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %index114 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <8 x i16> %broadcast.splat112, ptr %i.ap, align 2, !tbaa !14
  store <8 x i16> %broadcast.splat112, ptr %i.aq, align 2, !tbaa !14
  %index.next115 = add nuw i64 %index114, 16      ; 2 uses
  %i.ar = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ar, label %middle.block116, label %vector.body113, !llvm.loop !35

middle.block116:                                  ; preds = %vector.body113
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count
  br i1 %cmp.n117, label %._crit_edge86, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block116
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph85.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec110, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec118 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat120 = shufflevector <4 x i16> %broadcast.splatinsert119, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %index121
  store <4 x i16> %broadcast.splat120, ptr %i.as, align 2, !tbaa !14
  %index.next122 = add nuw i64 %index121, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next122, %n.vec118
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %n.vec118, %wide.trip.count
  br i1 %cmp.n123, label %._crit_edge86, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv88.ph = phi i64 [ 0, %iter.check ], [ %n.vec110, %vec.epilog.iter.check ], [ %n.vec118, %vec.epilog.middle.block ]
  br label %.lr.ph85

._crit_edge86:                                    ; preds = %.lr.ph85, %vec.epilog.middle.block, %middle.block116
  %.pre96 = load i16, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %i.au = icmp samesign ult i32 %3, 1024
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge86
  %i.av = and i16 %.pre96, 31
  %.tr.i.i = trunc nuw nsw i32 %3 to i16
  %i.aw = shl nuw nsw i16 %.tr.i.i, 5
  %i.ax = or disjoint i16 %i.av, %i.aw
  store i16 %i.ax, ptr %i.a, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.n:                                             ; preds = %._crit_edge86
  %i.ay = or i16 %.pre96, -32
  store i16 %i.ay, ptr %i.a, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.az, align 4, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %.lr.ph85
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.lr.ph85 ], [ %indvars.iv88.ph, %.lr.ph85.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv88
  store i16 %i.an, ptr %i.bb, align 2, !tbaa !14
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge86, label %.lr.ph85, !llvm.loop !37

bb.p:                                             ; preds = %bb.h
  %i.bc = icmp samesign ugt i32 %3, 1073741823
  br i1 %i.bc, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bd = icmp slt i32 %1, 28
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i16 2, ptr %i.a, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.s:                                             ; preds = %bb.q
  %i.be = icmp samesign ult i32 %1, 2147483638
  br i1 %i.be, label %bb.t, label %.thread.i64

bb.t:                                             ; preds = %bb.s
  %i.bf = shl nuw i32 %1, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 20
  %i.bi = and i64 %i.bh, 8589934576               ; 2 uses
  %i.bj = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.bi) #24
          to label %.noexc67 unwind label %bb.g   ; 3 uses

.noexc67:                                         ; preds = %bb.t
  %.not.not.i66 = icmp eq ptr %i.bj, null
  br i1 %.not.not.i66, label %.thread.i64, label %bb.u

bb.u:                                             ; preds = %.noexc67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !12
  %i.bl = add nuw nsw i64 %i.bi, 8589934588
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !9
  %i.bn = lshr exact i64 %i.bl, 1
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !9
  store i16 4, ptr %i.a, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

.thread.i64:                                      ; preds = %.noexc67, %bb.s
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.bq, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.br, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.v:                                             ; preds = %bb.p
  %i.bs = shl nuw nsw i32 %3, 1                   ; 4 uses
  %spec.select58 = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.bs) ; 3 uses
  %i.bt = icmp samesign ult i32 %spec.select58, 28
  br i1 %i.bt, label %._crit_edge91, label %bb.w

._crit_edge91:                                    ; preds = %bb.v
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.lr.ph.preheader

bb.w:                                             ; preds = %bb.v
  %i.bu = icmp samesign ult i32 %spec.select58, 2147483638
  br i1 %i.bu, label %bb.x, label %_ZN6icu_7813UnicodeString8allocateEi.exit73

bb.x:                                             ; preds = %bb.w
  %i.bv = shl nuw i32 %spec.select58, 1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 20
  %i.by = and i64 %i.bx, 8589934576               ; 2 uses
  %i.bz = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.by) #24
          to label %.noexc72 unwind label %bb.ab  ; 3 uses

.noexc72:                                         ; preds = %bb.x
  %.not.not.i71 = icmp eq ptr %i.bz, null
  br i1 %.not.not.i71, label %_ZN6icu_7813UnicodeString8allocateEi.exit73, label %bb.y

bb.y:                                             ; preds = %.noexc72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  store i32 1, ptr %i.bz, align 4, !tbaa !12
  %i.cb = add nuw nsw i64 %i.by, 8589934588
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !9
  %i.cd = lshr exact i64 %i.cb, 1
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !9
  br label %.lr.ph.preheader

_ZN6icu_7813UnicodeString8allocateEi.exit73:      ; preds = %bb.w, %.noexc72
  store i16 1, ptr %i.a, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.cg, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ch, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

.lr.ph.preheader:                                 ; preds = %bb.y, %._crit_edge91
  %i.ci = phi ptr [ %i.ca, %bb.y ], [ %.pre, %._crit_edge91 ]
  %storemerge = phi i16 [ 4, %bb.y ], [ 2, %._crit_edge91 ] ; 2 uses
  store i16 %storemerge, ptr %i.a, align 8, !tbaa !9
  %i.cj = and i16 %storemerge, 2
  %.not.i74 = icmp eq i16 %i.cj, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cl = select i1 %.not.i74, ptr %i.ci, ptr %i.ck ; 3 uses
  %i.cm = lshr i32 %2, 10
  %i.cn = trunc nuw nsw i32 %i.cm to i16
  %i.co = add nuw nsw i16 %i.cn, -10304           ; 2 uses
  %i.cp = trunc i32 %2 to i16
  %i.cq = and i16 %i.cp, 1023
  %i.cr = or disjoint i16 %i.cq, -9216            ; 2 uses
  %i.cs = zext nneg i32 %i.bs to i64              ; 2 uses
  %4 = add nsw i64 %i.cs, -2                      ; 2 uses
  %i.ct = lshr exact i64 %4, 1
  %i.cu = add nuw i64 %i.ct, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %4, 14
  br i1 %min.iters.check, label %.lr.ph.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cu, -8                      ; 3 uses
  %i.cv = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.co, i64 0
  %broadcast.splatinsert103 = insertelement <4 x i16> poison, i16 %i.cr, i64 0
  %interleaved.vec = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> %broadcast.splatinsert103, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl nuw i64 %index, 1                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <8 x i16> %interleaved.vec, ptr %i.cx, align 2, !tbaa !14
  store <8 x i16> %interleaved.vec, ptr %i.cz, align 2, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader125

.lr.ph.preheader125:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.pre92 = load i16, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %i.db = icmp samesign ult i32 %3, 512
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  %i.dc = and i16 %.pre92, 31
  %.tr.i.i75 = trunc nuw i32 %i.bs to i16
  %i.dd = shl nuw nsw i16 %.tr.i.i75, 5
  %i.de = or disjoint i16 %i.dc, %i.dd
  store i16 %i.de, ptr %i.a, align 8, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.aa:                                            ; preds = %._crit_edge
  %i.df = or i16 %.pre92, -32
  store i16 %i.df, ptr %i.a, align 8, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bs, ptr %i.dg, align 4, !tbaa !9
  br label %_ZN6icu_7813UnicodeString8allocateEi.exit

bb.ab:                                            ; preds = %bb.x
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph:                                           ; preds = %.lr.ph.preheader125, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader125 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv ; 2 uses
  store i16 %i.co, ptr %i.di, align 2, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %i.cr, ptr %i.dj, align 2, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dk = icmp samesign ult i64 %indvars.iv.next, %i.cs
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !39

_ZN6icu_7813UnicodeString8allocateEi.exit:        ; preds = %bb.aa, %bb.z, %_ZN6icu_7813UnicodeString8allocateEi.exit73, %.thread.i64, %bb.u, %bb.r, %bb.n, %bb.m, %_ZN6icu_7813UnicodeString8allocateEi.exit63, %.thread.i, %bb.f, %bb.c
  ret void

bb.ac:                                            ; preds = %bb.ab, %bb.o, %bb.g
  %.pn56 = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.ba, %bb.o ], [ %i.dh, %bb.ab ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %.pn56
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7813UnicodeString8allocateEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((8, 10)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 28
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.b, align 8, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2147483638
  br i1 %i.c, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.d = shl nuw i32 %1, 1
  %i.e = zext i32 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 20
  %i.g = and i64 %i.f, 8589934576                 ; 2 uses
  %i.h = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.g) #24 ; 3 uses
  %.not.not = icmp eq ptr %i.h, null
  br i1 %.not.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !12
  %i.j = add nuw nsw i64 %i.g, 8589934588
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.l, align 8, !tbaa !9
  %i.m = lshr exact i64 %i.j, 1
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !9
  store i16 4, ptr %i.k, align 8, !tbaa !9
  br label %bb.f

.thread:                                          ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.p, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %bb.b
  %.1 = phi i8 [ 1, %bb.b ], [ 0, %.thread ], [ 1, %bb.e ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7813UnicodeStringC2EDs(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 12)) %0, i16 noundef zeroext %1) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 34, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %1, ptr %i.b, align 2, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7813UnicodeStringC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 10)) %0, i32 noundef %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.a, align 8, !tbaa !9
  %i.b = icmp ult i32 %1, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i32 %1 to i16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 1114112
  br i1 %i.d, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i32 %1, 10
  %i.f = trunc nuw nsw i32 %i.e to i16
  %i.g = add nuw nsw i16 %i.f, -10304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.g, ptr %i.h, align 2, !tbaa !9
  %i.i = trunc i32 %1 to i16
  %i.j = and i16 %i.i, 1023
  %i.k = or disjoint i16 %i.j, -9216
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink14 = phi i64 [ 10, %bb.b ], [ 12, %bb.d ]
  %.sink = phi i16 [ %i.c, %bb.b ], [ %i.k, %bb.d ]
  %.011 = phi i16 [ 34, %bb.b ], [ 66, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink14
  store i16 %.sink, ptr %i.l, align 2, !tbaa !9
  store i16 %.011, ptr %i.a, align 8, !tbaa !9
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813UnicodeStringC2EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 10)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !9
  %i.b = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = and i16 %i.c, 17
end_hunk_0
begin_hunk_1_@_ZN6icu_7823UnicodeStringAppendable21reserveAppendCapacityEi:bb.a
  ret i8 %i.l
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7823UnicodeStringAppendable15getAppendBufferEiiPDsiPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(ret: address, provenance) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %i.b = icmp slt i32 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !12
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32, !nonnull !33, !align !34 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = icmp slt i16 %i.f, 0
  %i.h = ashr i16 %i.f, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 5 uses
  %i.m = sub nsw i32 2147483637, %i.l             ; 2 uses
  %.not = icmp sgt i32 %1, %i.m
  %.not23 = icmp sgt i32 %2, %i.m
  %or.cond25 = or i1 %.not, %.not23
  br i1 %or.cond25, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.l, %1
  %i.o = add nsw i32 %i.l, %2
  %i.p = tail call noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i32 noundef %i.n, i32 noundef %i.o, i8 noundef signext 1, ptr noundef null, i8 noundef signext 0)
  %.not24 = icmp eq i8 %i.p, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !32, !nonnull !33, !align !34 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !9
  %i.t = and i16 %i.s, 2
  %.not.i = icmp eq i16 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = select i1 %.not.i, i32 %i.v, i32 27
  %i.x = sub nsw i32 %i.w, %i.l
  store i32 %i.x, ptr %5, align 4, !tbaa !12
  %i.y = load i16, ptr %i.r, align 8, !tbaa !9
  %i.z = and i16 %i.y, 2
  %.not.i26 = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %.not.i26, ptr %i.ac, ptr %i.aa
  %i.ae = sext i32 %i.l to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  store i32 %4, ptr %5, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.af, %bb.e ], [ %3, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @uhash_hashUnicodeString_78(ptr %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.d = and i16 %i.c, 2
  %.not.i.i.i = icmp eq i16 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i, ptr %i.g, ptr %i.e
  %i.i = icmp slt i16 %i.c, 0
  %i.j = ashr i16 %i.c, 5
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k
  %i.o = tail call i32 @ustr_hashUCharsN_78(ptr noundef %i.h, i32 noundef %i.n)
  %spec.store.select.i.i = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.o, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %spec.store.select.i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define signext range(i8 0, 2) i8 @uhash_compareUnicodeString_78(ptr nofree readonly captures(address) %0, ptr nofree readonly captures(address) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !9    ; 4 uses
  %i.f = and i16 %i.e, 1
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !9
  %i.i = trunc i16 %i.h to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp slt i16 %i.e, 0
  %i.k = ashr i16 %i.e, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i16, ptr %i.p, align 8, !tbaa !9    ; 4 uses
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = select i1 %i.r, i32 %i.v, i32 %i.t
  %i.x = and i16 %i.q, 1
  %.not9.i = icmp eq i16 %i.x, 0
  %i.y = icmp eq i32 %i.o, %i.w
  %or.cond.i = and i1 %.not9.i, %i.y
  br i1 %or.cond.i, label %bb.f, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = and i16 %i.q, 2
  %.not.i.i.i = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %.not.i.i.i, ptr %i.ac, ptr %i.aa
  %i.ae = and i16 %i.e, 2
  %.not.i.i.i.i = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %.not.i.i.i.i, ptr %i.ah, ptr %i.af
  %i.aj = shl nsw i32 %i.o, 1
  %i.ak = sext i32 %i.aj to i64
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr readonly %i.ad, i64 %i.ak)
  %i.al = icmp eq i32 %bcmp.i.i.i, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i1 [ %i.i, %bb.d ], [ %i.al, %bb.f ], [ false, %bb.e ]
  %i.am = zext i1 %.0.i to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %.0 = phi i8 [ %i.am, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i8 %.0
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !15}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"vtable pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"char16_t", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"p1 char16_t", !19, i64 0}
!21 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"p1 int", !19, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{i64 2150197787}
!26 = !{!"_ZTS10UErrorCode", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN6icu_787UObjectE"}
!29 = !{!"_ZTSN6icu_7810AppendableE", !28, i64 0}
!30 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !19, i64 0}
!31 = !{!"_ZTSN6icu_7823UnicodeStringAppendableE", !29, i64 0, !30, i64 8}
!32 = !{!31, !30, i64 8}
!33 = !{}
!34 = !{i64 8}
!35 = distinct !{!35, !15, !16, !17}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15, !17, !16}
!38 = distinct !{!38, !15, !16, !17}
!39 = distinct !{!39, !15, !17, !16}
!40 = distinct !{!40, !15}
!41 = distinct !{null}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = !{!"_ZTSN6icu_789Char16PtrE", !20, i64 0}
!47 = !{!46, !20, i64 0}
!48 = distinct !{null, null, ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii}
!49 = distinct !{null, ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii}
!50 = distinct !{!50, !15}
!51 = distinct !{null, ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii}
!52 = distinct !{null}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15, !16, !17}
!56 = distinct !{!56, !15, !16, !17}
!57 = distinct !{!57, !15, !17, !16}
!58 = distinct !{!58, !15, !16, !17}
!59 = distinct !{!59, !15, !16, !17}
!60 = distinct !{!60, !15, !17, !16}
end_hunk_1
