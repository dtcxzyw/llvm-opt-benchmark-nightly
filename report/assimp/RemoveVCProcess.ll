Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/RemoveVCProcess?download=true
inline.NumInlined: 199
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Assimp6Logger5debugEPKc
declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @_ZN10aiMaterialD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @_ZN10aiMaterial5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6Assimp15RemoveVCProcess11ProcessMeshEP6aiMesh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 19 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 2048
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i32 0, ptr %i.d, align 8
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = and i32 %i.e, 2
  %.not69 = icmp eq i32 %i.f, 0
  br i1 %.not69, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.h, null
  br i1 %.not70, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #14
  store ptr null, ptr %i.g, align 8
  %.pre208 = load i32, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.i = phi i32 [ %.pre208, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %.062 = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.j = and i32 %i.i, 4
  %.not71 = icmp eq i32 %i.j, 0
  br i1 %.not71, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not72 = icmp eq ptr %i.l, null
  br i1 %.not72, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #14
  store ptr null, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.m, align 8
  %.pre209 = load i32, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.p = phi i32 [ %.pre209, %bb.j ], [ %i.i, %bb.g ], [ %i.i, %bb.f ]
  %.163 = phi i1 [ true, %bb.j ], [ %.062, %bb.g ], [ %.062, %bb.f ] ; 3 uses
  %.fr = freeze i32 %i.p                          ; 2 uses
  %i.q = and i32 %.fr, 16
  %.not113 = icmp eq i32 %i.q, 0
  %i.r = getelementptr i8, ptr %1, i64 112        ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 7 uses
  %i.t = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not73 = icmp eq ptr %i.t, null                ; 2 uses
  br i1 %.not113, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.k
  br i1 %.not73, label %.split85.us, label %bb.l

.split.us:                                        ; preds = %bb.k
  br i1 %.not73, label %.split85.us, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.split.us
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #14
  store ptr null, ptr %i.r, align 8
  %i.u = getelementptr i8, ptr %1, i64 120        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not73.us = icmp eq ptr %i.v, null
  br i1 %.not73.us, label %.split85.us, label %.lr.ph89.1

.lr.ph89.1:                                       ; preds = %.lr.ph89.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #14
  store ptr null, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %1, i64 128        ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not73.us.1 = icmp eq ptr %i.x, null
  br i1 %.not73.us.1, label %.split85.us, label %.lr.ph89.2

.lr.ph89.2:                                       ; preds = %.lr.ph89.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #14
  store ptr null, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not73.us.2 = icmp eq ptr %i.z, null
  br i1 %.not73.us.2, label %.split85.us, label %.lr.ph89.3

.lr.ph89.3:                                       ; preds = %.lr.ph89.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #14
  store ptr null, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %1, i64 144       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not73.us.3 = icmp eq ptr %i.ab, null
  br i1 %.not73.us.3, label %.split85.us, label %.lr.ph89.4

.lr.ph89.4:                                       ; preds = %.lr.ph89.3
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #14
  store ptr null, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not73.us.4 = icmp eq ptr %i.ad, null
  br i1 %.not73.us.4, label %.split85.us, label %.lr.ph89.5

.lr.ph89.5:                                       ; preds = %.lr.ph89.4
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #14
  store ptr null, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %1, i64 160       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not73.us.5 = icmp eq ptr %i.af, null
  br i1 %.not73.us.5, label %.split85.us, label %.lr.ph89.6

.lr.ph89.6:                                       ; preds = %.lr.ph89.5
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #14
  store ptr null, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %1, i64 168       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not73.us.6 = icmp eq ptr %i.ah, null
  br i1 %.not73.us.6, label %.split85.us, label %..split85.us_crit_edge

..split85.us_crit_edge:                           ; preds = %.lr.ph89.6
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #14
  store ptr null, ptr %i.ag, align 8
  br label %.split85.us, !llvm.loop !11

bb.l:                                             ; preds = %.split.preheader
  %i.ai = and i32 %.fr, 33554432
  %.not114 = icmp eq i32 %i.ai, 0
  br i1 %.not114, label %.split.1, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #14
  %scevgep160 = getelementptr i8, ptr %1, i64 120
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %scevgep160, i64 56, i1 false)
  store ptr null, ptr %i.s, align 8
  br label %.split.1

.split.1:                                         ; preds = %bb.l, %._crit_edge
  %.4 = phi i1 [ true, %._crit_edge ], [ %.163, %bb.l ] ; 2 uses
  %.161 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.l ] ; 4 uses
  %i.aj = zext nneg i32 %.161 to i64              ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not73.1 = icmp eq ptr %i.al, null
  br i1 %.not73.1, label %.split85.us, label %bb.m

bb.m:                                             ; preds = %.split.1
  %i.am = load i32, ptr %i.a, align 8
  %i.an = and i32 %i.am, 67108864
  %.not114.1 = icmp eq i32 %i.an, 0
  br i1 %.not114.1, label %bb.n, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #14
  store ptr null, ptr %i.ak, align 8
  %i.ao = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep155 = getelementptr i8, ptr %i.ap, i64 112
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep156 = getelementptr i8, ptr %i.aq, i64 120
  %i.ar = shl nuw nsw i32 %.161, 3
  %i.as = sub nuw nsw i32 56, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep155, ptr noundef nonnull align 8 dereferenceable(1) %scevgep156, i64 range(i64 0, 57) %i.at, i1 false)
  store ptr null, ptr %i.s, align 8
  br label %.split.2

bb.n:                                             ; preds = %bb.m
  %i.au = add nuw nsw i32 %.161, 1                ; 2 uses
  %.pre210 = zext nneg i32 %i.au to i64
  br label %.split.2

.split.2:                                         ; preds = %bb.n, %._crit_edge.1
  %.pre-phi = phi i64 [ %.pre210, %bb.n ], [ %i.aj, %._crit_edge.1 ] ; 3 uses
  %.4.1 = phi i1 [ %.4, %bb.n ], [ true, %._crit_edge.1 ] ; 2 uses
  %.161.1 = phi i32 [ %i.au, %bb.n ], [ %.161, %._crit_edge.1 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not73.2 = icmp eq ptr %i.aw, null
  br i1 %.not73.2, label %.split85.us, label %bb.o

bb.o:                                             ; preds = %.split.2
  %i.ax = load i32, ptr %i.a, align 8
  %i.ay = and i32 %i.ax, 134217728
  %.not114.2 = icmp eq i32 %i.ay, 0
  br i1 %.not114.2, label %bb.p, label %._crit_edge.2

._crit_edge.2:                                    ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.aw) #14
  store ptr null, ptr %i.av, align 8
  %i.az = shl nuw nsw i64 %.pre-phi, 3            ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %i.az
  %scevgep150 = getelementptr i8, ptr %i.ba, i64 112
  %i.bb = getelementptr i8, ptr %1, i64 %i.az
  %scevgep151 = getelementptr i8, ptr %i.bb, i64 120
  %i.bc = shl nuw nsw i32 %.161.1, 3
  %i.bd = sub nuw nsw i32 56, %i.bc
  %i.be = zext nneg i32 %i.bd to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep150, ptr align 8 %scevgep151, i64 range(i64 0, 57) %i.be, i1 false)
  store ptr null, ptr %i.s, align 8
  br label %.split.3

bb.p:                                             ; preds = %bb.o
  %i.bf = add nuw nsw i32 %.161.1, 1              ; 2 uses
  %.pre211 = zext nneg i32 %i.bf to i64
  br label %.split.3

.split.3:                                         ; preds = %bb.p, %._crit_edge.2
  %.pre-phi212 = phi i64 [ %.pre211, %bb.p ], [ %.pre-phi, %._crit_edge.2 ] ; 3 uses
  %.4.2 = phi i1 [ %.4.1, %bb.p ], [ true, %._crit_edge.2 ] ; 2 uses
  %.161.2 = phi i32 [ %i.bf, %bb.p ], [ %.161.1, %._crit_edge.2 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi212 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not73.3 = icmp eq ptr %i.bh, null
  br i1 %.not73.3, label %.split85.us, label %bb.q

bb.q:                                             ; preds = %.split.3
  %i.bi = load i32, ptr %i.a, align 8
  %i.bj = and i32 %i.bi, 268435456
  %.not114.3 = icmp eq i32 %i.bj, 0
  br i1 %.not114.3, label %bb.r, label %._crit_edge.3

._crit_edge.3:                                    ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.bh) #14
  store ptr null, ptr %i.bg, align 8
  %i.bk = shl nuw nsw i64 %.pre-phi212, 3         ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %scevgep145 = getelementptr i8, ptr %i.bl, i64 112
  %i.bm = getelementptr i8, ptr %1, i64 %i.bk
  %scevgep146 = getelementptr i8, ptr %i.bm, i64 120
  %i.bn = shl nuw nsw i32 %.161.2, 3
  %i.bo = sub nuw nsw i32 56, %i.bn
  %i.bp = zext nneg i32 %i.bo to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep145, ptr align 8 %scevgep146, i64 range(i64 0, 57) %i.bp, i1 false)
  store ptr null, ptr %i.s, align 8
  br label %.split.4

bb.r:                                             ; preds = %bb.q
  %i.bq = add nuw nsw i32 %.161.2, 1              ; 2 uses
  %.pre213 = zext nneg i32 %i.bq to i64
  br label %.split.4

.split.4:                                         ; preds = %bb.r, %._crit_edge.3
  %.pre-phi214 = phi i64 [ %.pre213, %bb.r ], [ %.pre-phi212, %._crit_edge.3 ] ; 3 uses
  %.4.3 = phi i1 [ %.4.2, %bb.r ], [ true, %._crit_edge.3 ] ; 2 uses
  %.161.3 = phi i32 [ %i.bq, %bb.r ], [ %.161.2, %._crit_edge.3 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi214 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not73.4 = icmp eq ptr %i.bs, null
  br i1 %.not73.4, label %.split85.us, label %bb.s

bb.s:                                             ; preds = %.split.4
  %i.bt = load i32, ptr %i.a, align 8
  %i.bu = and i32 %i.bt, 536870912
  %.not114.4 = icmp eq i32 %i.bu, 0
  br i1 %.not114.4, label %bb.t, label %._crit_edge.4

._crit_edge.4:                                    ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.bs) #14
  store ptr null, ptr %i.br, align 8
  %i.bv = shl nuw nsw i64 %.pre-phi214, 3         ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv
  %scevgep140 = getelementptr i8, ptr %i.bw, i64 112
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  %scevgep141 = getelementptr i8, ptr %i.bx, i64 120
  %i.by = shl nuw nsw i32 %.161.3, 3
  %i.bz = sub nuw nsw i32 56, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep140, ptr align 8 %scevgep141, i64 range(i64 0, 57) %i.ca, i1 false)
  store ptr null, ptr %i.s, align 8
  br label %.split.5

bb.t:                                             ; preds = %bb.s
  %i.cb = add nuw nsw i32 %.161.3, 1              ; 2 uses
  %.pre215 = zext nneg i32 %i.cb to i64
  br label %.split.5

.split.5:                                         ; preds = %bb.t, %._crit_edge.4
  %.pre-phi216 = phi i64 [ %.pre215, %bb.t ], [ %.pre-phi214, %._crit_edge.4 ] ; 3 uses
  %.4.4 = phi i1 [ %.4.3, %bb.t ], [ true, %._crit_edge.4 ] ; 2 uses
  %.161.4 = phi i32 [ %i.cb, %bb.t ], [ %.161.3, %._crit_edge.4 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi216 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not73.5 = icmp eq ptr %i.cd, null
  br i1 %.not73.5, label %.split85.us, label %bb.u

bb.u:                                             ; preds = %.split.5
  %i.ce = load i32, ptr %i.a, align 8
  %i.cf = and i32 %i.ce, 1073741824
  %.not114.5 = icmp eq i32 %i.cf, 0
  br i1 %.not114.5, label %bb.v, label %._crit_edge.5

._crit_edge.5:                                    ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.cd) #14
  store ptr null, ptr %i.cc, align 8
  %i.cg = shl nuw nsw i64 %.pre-phi216, 3         ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep135 = getelementptr i8, ptr %i.ch, i64 112
  %i.ci = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep136 = getelementptr i8, ptr %i.ci, i64 120
  %i.cj = shl nuw nsw i32 %.161.4, 3
  %i.ck = sub nuw nsw i32 56, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep135, ptr align 8 %scevgep136, i64 range(i64 0, 57) %i.cl, i1 false)
  store ptr null, ptr %i.s, align 8
  br label %.split.6

bb.v:                                             ; preds = %bb.u
  %i.cm = add nuw nsw i32 %.161.4, 1              ; 2 uses
  %.pre217 = zext nneg i32 %i.cm to i64
  br label %.split.6

.split.6:                                         ; preds = %bb.v, %._crit_edge.5
  %.pre-phi218 = phi i64 [ %.pre217, %bb.v ], [ %.pre-phi216, %._crit_edge.5 ] ; 2 uses
  %.4.5 = phi i1 [ %.4.4, %bb.v ], [ true, %._crit_edge.5 ] ; 2 uses
  %.161.5 = phi i32 [ %i.cm, %bb.v ], [ %.161.4, %._crit_edge.5 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi218 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not73.6 = icmp eq ptr %i.co, null
  br i1 %.not73.6, label %.split85.us, label %bb.w

bb.w:                                             ; preds = %.split.6
  %i.cp = load i32, ptr %i.a, align 8
  %.not114.6 = icmp sgt i32 %i.cp, -1
  br i1 %.not114.6, label %.split85.us, label %._crit_edge.6

._crit_edge.6:                                    ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.co) #14
  store ptr null, ptr %i.cn, align 8
  %i.cq = shl nuw nsw i64 %.pre-phi218, 3         ; 2 uses
  %i.cr = getelementptr i8, ptr %1, i64 %i.cq
  %scevgep130 = getelementptr i8, ptr %i.cr, i64 112
  %i.cs = getelementptr i8, ptr %1, i64 %i.cq
  %scevgep131 = getelementptr i8, ptr %i.cs, i64 120
  %i.ct = shl nuw nsw i32 %.161.5, 3
  %i.cu = sub nuw nsw i32 56, %i.ct
  %i.cv = zext nneg i32 %i.cu to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep130, ptr align 8 %scevgep131, i64 range(i64 0, 57) %i.cv, i1 false)
  store ptr null, ptr %i.s, align 8
  br label %.split85.us

.split85.us:                                      ; preds = %._crit_edge.6, %bb.w, %.lr.ph89.preheader, %.lr.ph89.1, %.lr.ph89.2, %.lr.ph89.3, %.lr.ph89.4, %.lr.ph89.5, %.lr.ph89.6, %.split.preheader, %.split.1, %.split.2, %.split.3, %.split.4, %.split.5, %.split.6, %.split.us, %..split85.us_crit_edge
  %.us-phi = phi i1 [ true, %.lr.ph89.preheader ], [ %.163, %.split.us ], [ true, %..split85.us_crit_edge ], [ %.4.3, %.split.4 ], [ %.163, %.split.preheader ], [ %.4, %.split.1 ], [ true, %.lr.ph89.1 ], [ %.4.1, %.split.2 ], [ %.4.4, %.split.5 ], [ %.4.2, %.split.3 ], [ %.4.5, %.split.6 ], [ true, %.lr.ph89.6 ], [ true, %.lr.ph89.5 ], [ true, %.lr.ph89.4 ], [ true, %.lr.ph89.3 ], [ true, %.lr.ph89.2 ], [ true, %._crit_edge.6 ], [ %.4.5, %bb.w ] ; 3 uses
  %i.cw = load i32, ptr %i.a, align 8
  %.fr116 = freeze i32 %i.cw                      ; 2 uses
  %i.cx = and i32 %.fr116, 8
  %.not117 = icmp eq i32 %i.cx, 0
  %i.cy = getelementptr i8, ptr %1, i64 48        ; 10 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 8 uses
  %i.da = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not74 = icmp eq ptr %i.da, null               ; 2 uses
  br i1 %.not117, label %.split100.preheader, label %.split100.us

.split100.preheader:                              ; preds = %.split85.us
  br i1 %.not74, label %.split102.us, label %bb.x

.split100.us:                                     ; preds = %.split85.us
  br i1 %.not74, label %.split102.us, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.split100.us
  tail call void @_ZdaPv(ptr noundef nonnull %i.da) #14
  store ptr null, ptr %i.cy, align 8
  %i.db = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.not74.us = icmp eq ptr %i.dc, null
  br i1 %.not74.us, label %.split102.us, label %.lr.ph108.1

.lr.ph108.1:                                      ; preds = %.lr.ph108.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.dc) #14
  store ptr null, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not74.us.1 = icmp eq ptr %i.de, null
  br i1 %.not74.us.1, label %.split102.us, label %.lr.ph108.2

.lr.ph108.2:                                      ; preds = %.lr.ph108.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.de) #14
  store ptr null, ptr %i.dd, align 8
  %i.df = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not74.us.2 = icmp eq ptr %i.dg, null
  br i1 %.not74.us.2, label %.split102.us, label %.lr.ph108.3

.lr.ph108.3:                                      ; preds = %.lr.ph108.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.dg) #14
  store ptr null, ptr %i.df, align 8
  %i.dh = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not74.us.3 = icmp eq ptr %i.di, null
  br i1 %.not74.us.3, label %.split102.us, label %.lr.ph108.4

.lr.ph108.4:                                      ; preds = %.lr.ph108.3
  tail call void @_ZdaPv(ptr noundef nonnull %i.di) #14
  store ptr null, ptr %i.dh, align 8
  %i.dj = getelementptr i8, ptr %1, i64 88        ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not74.us.4 = icmp eq ptr %i.dk, null
  br i1 %.not74.us.4, label %.split102.us, label %.lr.ph108.5

.lr.ph108.5:                                      ; preds = %.lr.ph108.4
  tail call void @_ZdaPv(ptr noundef nonnull %i.dk) #14
  store ptr null, ptr %i.dj, align 8
  %i.dl = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not74.us.5 = icmp eq ptr %i.dm, null
  br i1 %.not74.us.5, label %.split102.us, label %.lr.ph108.6

.lr.ph108.6:                                      ; preds = %.lr.ph108.5
  tail call void @_ZdaPv(ptr noundef nonnull %i.dm) #14
  store ptr null, ptr %i.dl, align 8
  %i.dn = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not74.us.6 = icmp eq ptr %i.do, null
  br i1 %.not74.us.6, label %.split102.us, label %..split102.us_crit_edge

..split102.us_crit_edge:                          ; preds = %.lr.ph108.6
  tail call void @_ZdaPv(ptr noundef nonnull %i.do) #14
  store ptr null, ptr %i.dn, align 8
  br label %.split102.us, !llvm.loop !12

bb.x:                                             ; preds = %.split100.preheader
  %i.dp = and i32 %.fr116, 1048576
  %.not118 = icmp eq i32 %i.dp, 0
  br i1 %.not118, label %.split100.1, label %._crit_edge96

._crit_edge96:                                    ; preds = %bb.x
  tail call void @_ZdaPv(ptr noundef nonnull %i.da) #14
  %scevgep204 = getelementptr i8, ptr %1, i64 56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, ptr noundef nonnull align 8 dereferenceable(56) %scevgep204, i64 56, i1 false)
  store ptr null, ptr %i.cz, align 8
  br label %.split100.1

.split100.1:                                      ; preds = %bb.x, %._crit_edge96
  %.7 = phi i1 [ true, %._crit_edge96 ], [ %.us-phi, %bb.x ] ; 2 uses
  %.1 = phi i32 [ 0, %._crit_edge96 ], [ 1, %bb.x ] ; 5 uses
  %i.dq = zext nneg i32 %.1 to i64                ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not74.1 = icmp eq ptr %i.ds, null
  br i1 %.not74.1, label %.split102.us, label %bb.y

bb.y:                                             ; preds = %.split100.1
  %i.dt = load i32, ptr %i.a, align 8
  %i.du = shl nuw nsw i32 1048576, %.1
  %i.dv = and i32 %i.dt, %i.du
  %.not118.1 = icmp eq i32 %i.dv, 0
  br i1 %.not118.1, label %bb.z, label %._crit_edge96.1

._crit_edge96.1:                                  ; preds = %bb.y
  tail call void @_ZdaPv(ptr noundef nonnull %i.ds) #14
  store ptr null, ptr %i.dr, align 8
  %i.dw = shl nuw nsw i64 %i.dq, 3                ; 2 uses
  %i.dx = getelementptr i8, ptr %1, i64 %i.dw
  %scevgep199 = getelementptr i8, ptr %i.dx, i64 48
  %i.dy = getelementptr i8, ptr %1, i64 %i.dw
  %scevgep200 = getelementptr i8, ptr %i.dy, i64 56
  %i.dz = shl nuw nsw i32 %.1, 3
  %i.ea = sub nuw nsw i32 56, %i.dz
  %i.eb = zext nneg i32 %i.ea to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep199, ptr noundef nonnull align 8 dereferenceable(1) %scevgep200, i64 range(i64 0, 57) %i.eb, i1 false)
  store ptr null, ptr %i.cz, align 8
  br label %.split100.2

bb.z:                                             ; preds = %bb.y
  %i.ec = add nuw nsw i32 %.1, 1                  ; 2 uses
  %.pre221 = zext nneg i32 %i.ec to i64
  br label %.split100.2

.split100.2:                                      ; preds = %bb.z, %._crit_edge96.1
  %.pre-phi222 = phi i64 [ %.pre221, %bb.z ], [ %i.dq, %._crit_edge96.1 ] ; 3 uses
  %.7.1 = phi i1 [ %.7, %bb.z ], [ true, %._crit_edge96.1 ] ; 2 uses
  %.1.1 = phi i32 [ %i.ec, %bb.z ], [ %.1, %._crit_edge96.1 ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.pre-phi222 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not74.2 = icmp eq ptr %i.ee, null
  br i1 %.not74.2, label %.split102.us, label %bb.aa

bb.aa:                                            ; preds = %.split100.2
  %i.ef = load i32, ptr %i.a, align 8
  %i.eg = shl nuw nsw i32 1048576, %.1.1
  %i.eh = and i32 %i.ef, %i.eg
  %.not118.2 = icmp eq i32 %i.eh, 0
  br i1 %.not118.2, label %bb.ab, label %._crit_edge96.2

._crit_edge96.2:                                  ; preds = %bb.aa
  tail call void @_ZdaPv(ptr noundef nonnull %i.ee) #14
  store ptr null, ptr %i.ed, align 8
  %i.ei = shl nuw nsw i64 %.pre-phi222, 3         ; 2 uses
  %i.ej = getelementptr i8, ptr %1, i64 %i.ei
  %scevgep194 = getelementptr i8, ptr %i.ej, i64 48
  %i.ek = getelementptr i8, ptr %1, i64 %i.ei
  %scevgep195 = getelementptr i8, ptr %i.ek, i64 56
  %i.el = shl nuw nsw i32 %.1.1, 3
  %i.em = sub nuw nsw i32 56, %i.el
  %i.en = zext nneg i32 %i.em to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep194, ptr align 8 %scevgep195, i64 range(i64 0, 57) %i.en, i1 false)
  store ptr null, ptr %i.cz, align 8
  br label %.split100.3

bb.ab:                                            ; preds = %bb.aa
  %i.eo = add nuw nsw i32 %.1.1, 1                ; 2 uses
  %.pre223 = zext nneg i32 %i.eo to i64
  br label %.split100.3

.split100.3:                                      ; preds = %bb.ab, %._crit_edge96.2
  %.pre-phi224 = phi i64 [ %.pre223, %bb.ab ], [ %.pre-phi222, %._crit_edge96.2 ] ; 3 uses
  %.7.2 = phi i1 [ %.7.1, %bb.ab ], [ true, %._crit_edge96.2 ] ; 2 uses
  %.1.2 = phi i32 [ %i.eo, %bb.ab ], [ %.1.1, %._crit_edge96.2 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.pre-phi224 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not74.3 = icmp eq ptr %i.eq, null
  br i1 %.not74.3, label %.split102.us, label %bb.ac

bb.ac:                                            ; preds = %.split100.3
  %i.er = load i32, ptr %i.a, align 8
  %i.es = shl nuw nsw i32 1048576, %.1.2
  %i.et = and i32 %i.er, %i.es
  %.not118.3 = icmp eq i32 %i.et, 0
  br i1 %.not118.3, label %bb.ad, label %._crit_edge96.3

._crit_edge96.3:                                  ; preds = %bb.ac
  tail call void @_ZdaPv(ptr noundef nonnull %i.eq) #14
  store ptr null, ptr %i.ep, align 8
  %i.eu = shl nuw nsw i64 %.pre-phi224, 3         ; 2 uses
  %i.ev = getelementptr i8, ptr %1, i64 %i.eu
  %scevgep189 = getelementptr i8, ptr %i.ev, i64 48
  %i.ew = getelementptr i8, ptr %1, i64 %i.eu
  %scevgep190 = getelementptr i8, ptr %i.ew, i64 56
  %i.ex = shl nuw nsw i32 %.1.2, 3
  %i.ey = sub nuw nsw i32 56, %i.ex
  %i.ez = zext nneg i32 %i.ey to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep189, ptr align 8 %scevgep190, i64 range(i64 0, 57) %i.ez, i1 false)
  store ptr null, ptr %i.cz, align 8
  br label %.split100.4

bb.ad:                                            ; preds = %bb.ac
  %i.fa = add nuw nsw i32 %.1.2, 1                ; 2 uses
  %.pre225 = zext nneg i32 %i.fa to i64
  br label %.split100.4

.split100.4:                                      ; preds = %bb.ad, %._crit_edge96.3
  %.pre-phi226 = phi i64 [ %.pre225, %bb.ad ], [ %.pre-phi224, %._crit_edge96.3 ] ; 3 uses
  %.7.3 = phi i1 [ %.7.2, %bb.ad ], [ true, %._crit_edge96.3 ] ; 2 uses
  %.1.3 = phi i32 [ %i.fa, %bb.ad ], [ %.1.2, %._crit_edge96.3 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.pre-phi226 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not74.4 = icmp eq ptr %i.fc, null
  br i1 %.not74.4, label %.split102.us, label %bb.ae

bb.ae:                                            ; preds = %.split100.4
  %i.fd = load i32, ptr %i.a, align 8
  %i.fe = shl nuw nsw i32 1048576, %.1.3
  %i.ff = and i32 %i.fd, %i.fe
  %.not118.4 = icmp eq i32 %i.ff, 0
  br i1 %.not118.4, label %bb.af, label %._crit_edge96.4

._crit_edge96.4:                                  ; preds = %bb.ae
  tail call void @_ZdaPv(ptr noundef nonnull %i.fc) #14
  store ptr null, ptr %i.fb, align 8
  %i.fg = shl nuw nsw i64 %.pre-phi226, 3         ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 %i.fg
  %scevgep184 = getelementptr i8, ptr %i.fh, i64 48
  %i.fi = getelementptr i8, ptr %1, i64 %i.fg
  %scevgep185 = getelementptr i8, ptr %i.fi, i64 56
  %i.fj = shl nuw nsw i32 %.1.3, 3
  %i.fk = sub nuw nsw i32 56, %i.fj
  %i.fl = zext nneg i32 %i.fk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep184, ptr align 8 %scevgep185, i64 range(i64 0, 57) %i.fl, i1 false)
  store ptr null, ptr %i.cz, align 8
  br label %.split100.5

bb.af:                                            ; preds = %bb.ae
  %i.fm = add nuw nsw i32 %.1.3, 1                ; 2 uses
  %.pre227 = zext nneg i32 %i.fm to i64
  br label %.split100.5

.split100.5:                                      ; preds = %bb.af, %._crit_edge96.4
  %.pre-phi228 = phi i64 [ %.pre227, %bb.af ], [ %.pre-phi226, %._crit_edge96.4 ] ; 3 uses
  %.7.4 = phi i1 [ %.7.3, %bb.af ], [ true, %._crit_edge96.4 ] ; 2 uses
  %.1.4 = phi i32 [ %i.fm, %bb.af ], [ %.1.3, %._crit_edge96.4 ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.pre-phi228 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not74.5 = icmp eq ptr %i.fo, null
  br i1 %.not74.5, label %.split102.us, label %bb.ag

bb.ag:                                            ; preds = %.split100.5
  %i.fp = load i32, ptr %i.a, align 8
  %i.fq = shl nuw nsw i32 1048576, %.1.4
  %i.fr = and i32 %i.fp, %i.fq
  %.not118.5 = icmp eq i32 %i.fr, 0
  br i1 %.not118.5, label %bb.ah, label %._crit_edge96.5

._crit_edge96.5:                                  ; preds = %bb.ag
  tail call void @_ZdaPv(ptr noundef nonnull %i.fo) #14
  store ptr null, ptr %i.fn, align 8
  %i.fs = shl nuw nsw i64 %.pre-phi228, 3         ; 2 uses
  %i.ft = getelementptr i8, ptr %1, i64 %i.fs
  %scevgep179 = getelementptr i8, ptr %i.ft, i64 48
  %i.fu = getelementptr i8, ptr %1, i64 %i.fs
  %scevgep180 = getelementptr i8, ptr %i.fu, i64 56
  %i.fv = shl nuw nsw i32 %.1.4, 3
  %i.fw = sub nuw nsw i32 56, %i.fv
  %i.fx = zext nneg i32 %i.fw to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep179, ptr align 8 %scevgep180, i64 range(i64 0, 57) %i.fx, i1 false)
  store ptr null, ptr %i.cz, align 8
  br label %.split100.6

bb.ah:                                            ; preds = %bb.ag
  %i.fy = add nuw nsw i32 %.1.4, 1                ; 2 uses
  %.pre229 = zext nneg i32 %i.fy to i64
  br label %.split100.6

.split100.6:                                      ; preds = %bb.ah, %._crit_edge96.5
  %.pre-phi230 = phi i64 [ %.pre229, %bb.ah ], [ %.pre-phi228, %._crit_edge96.5 ] ; 3 uses
  %.7.5 = phi i1 [ %.7.4, %bb.ah ], [ true, %._crit_edge96.5 ] ; 2 uses
  %.1.5 = phi i32 [ %i.fy, %bb.ah ], [ %.1.4, %._crit_edge96.5 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.pre-phi230 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %.not74.6 = icmp eq ptr %i.ga, null
  br i1 %.not74.6, label %.split102.us, label %bb.ai

bb.ai:                                            ; preds = %.split100.6
  %i.gb = load i32, ptr %i.a, align 8
  %i.gc = shl nuw nsw i32 1048576, %.1.5
  %i.gd = and i32 %i.gb, %i.gc
  %.not118.6 = icmp eq i32 %i.gd, 0
  br i1 %.not118.6, label %bb.aj, label %._crit_edge96.6

._crit_edge96.6:                                  ; preds = %bb.ai
  tail call void @_ZdaPv(ptr noundef nonnull %i.ga) #14
  store ptr null, ptr %i.fz, align 8
  %i.ge = shl nuw nsw i64 %.pre-phi230, 3         ; 2 uses
  %i.gf = getelementptr i8, ptr %1, i64 %i.ge
  %scevgep174 = getelementptr i8, ptr %i.gf, i64 48
  %i.gg = getelementptr i8, ptr %1, i64 %i.ge
  %scevgep175 = getelementptr i8, ptr %i.gg, i64 56
  %i.gh = shl nuw nsw i32 %.1.5, 3
  %i.gi = sub nuw nsw i32 56, %i.gh
  %i.gj = zext nneg i32 %i.gi to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep174, ptr align 8 %scevgep175, i64 range(i64 0, 57) %i.gj, i1 false)
  store ptr null, ptr %i.cz, align 8
  br label %.split100.7

bb.aj:                                            ; preds = %bb.ai
  %i.gk = add nuw nsw i32 %.1.5, 1                ; 2 uses
  %.pre231 = zext nneg i32 %i.gk to i64
  br label %.split100.7

.split100.7:                                      ; preds = %bb.aj, %._crit_edge96.6
  %.pre-phi232 = phi i64 [ %.pre231, %bb.aj ], [ %.pre-phi230, %._crit_edge96.6 ] ; 2 uses
  %.7.6 = phi i1 [ %.7.5, %bb.aj ], [ true, %._crit_edge96.6 ] ; 2 uses
  %.1.6 = phi i32 [ %i.gk, %bb.aj ], [ %.1.5, %._crit_edge96.6 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.pre-phi232 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8            ; 2 uses
  %.not74.7 = icmp eq ptr %i.gm, null
  br i1 %.not74.7, label %.split102.us, label %bb.ak

bb.ak:                                            ; preds = %.split100.7
  %i.gn = load i32, ptr %i.a, align 8
  %i.go = shl nuw nsw i32 1048576, %.1.6
  %i.gp = and i32 %i.gn, %i.go
  %.not118.7 = icmp eq i32 %i.gp, 0
  br i1 %.not118.7, label %.split102.us, label %.preheader.7

.preheader.7:                                     ; preds = %bb.ak
  tail call void @_ZdaPv(ptr noundef nonnull %i.gm) #14
  store ptr null, ptr %i.gl, align 8
  %i.gq = icmp samesign ult i32 %.1.6, 7
  br i1 %i.gq, label %.lr.ph95.preheader.7, label %._crit_edge96.7

.lr.ph95.preheader.7:                             ; preds = %.preheader.7
  %i.gr = shl nuw nsw i64 %.pre-phi232, 3         ; 2 uses
  %i.gs = getelementptr i8, ptr %1, i64 %i.gr
  %scevgep169 = getelementptr i8, ptr %i.gs, i64 48
  %i.gt = getelementptr i8, ptr %1, i64 %i.gr
  %scevgep170 = getelementptr i8, ptr %i.gt, i64 56
  %i.gu = shl nuw nsw i32 %.1.6, 3
  %narrow = sub nuw nsw i32 56, %i.gu
  %i.gv = zext nneg i32 %narrow to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep169, ptr noundef nonnull align 8 dereferenceable(1) %scevgep170, i64 range(i64 0, 57) %i.gv, i1 false)
  br label %._crit_edge96.7

._crit_edge96.7:                                  ; preds = %.lr.ph95.preheader.7, %.preheader.7
  store ptr null, ptr %i.cz, align 8
  br label %.split102.us

.split102.us:                                     ; preds = %.lr.ph108.preheader, %.lr.ph108.1, %.lr.ph108.2, %.lr.ph108.3, %.lr.ph108.4, %.lr.ph108.5, %.lr.ph108.6, %.split100.preheader, %.split100.1, %.split100.2, %.split100.3, %.split100.4, %.split100.5, %.split100.6, %.split100.7, %bb.ak, %._crit_edge96.7, %.split100.us, %..split102.us_crit_edge
  %.us-phi103 = phi i1 [ %.7.6, %bb.ak ], [ %.us-phi, %.split100.us ], [ true, %..split102.us_crit_edge ], [ %.7.3, %.split100.4 ], [ %.us-phi, %.split100.preheader ], [ %.7, %.split100.1 ], [ %.7.6, %.split100.7 ], [ %.7.1, %.split100.2 ], [ %.7.4, %.split100.5 ], [ %.7.2, %.split100.3 ], [ %.7.5, %.split100.6 ], [ true, %._crit_edge96.7 ], [ true, %.lr.ph108.6 ], [ true, %.lr.ph108.5 ], [ true, %.lr.ph108.4 ], [ true, %.lr.ph108.3 ], [ true, %.lr.ph108.2 ], [ true, %.lr.ph108.1 ], [ true, %.lr.ph108.preheader ] ; 2 uses
  %i.gw = load i32, ptr %i.a, align 8
  %i.gx = and i32 %i.gw, 32
  %.not75 = icmp eq i32 %i.gx, 0
  br i1 %.not75, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %.split102.us
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 4 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not76 = icmp eq ptr %i.gz, null
  br i1 %.not76, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ap
  %.pre233 = load ptr, ptr %i.gy, align 8         ; 2 uses
  %i.hc = icmp eq ptr %.pre233, null
  br i1 %i.hc, label %_Z11ArrayDeleteI6aiBoneEvRPPT_Rj.exit, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.am, %bb.ap
  %i.hd = phi i32 [ %i.hl, %bb.ap ], [ %i.hb, %bb.am ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ap ], [ 0, %bb.am ] ; 2 uses
  %i.he = load ptr, ptr %i.gy, align 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.i
  %i.hg = load ptr, ptr %i.hf, align 8            ; 3 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 1048
  %i.hj = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN6aiBoneD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZdaPv(ptr noundef nonnull %i.hj) #14
  br label %_ZN6aiBoneD2Ev.exit.i

_ZN6aiBoneD2Ev.exit.i:                            ; preds = %bb.ao, %bb.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef 1120) #14
  %.pre.i = load i32, ptr %i.ha, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN6aiBoneD2Ev.exit.i, %.lr.ph.i
  %i.hl = phi i32 [ %i.hd, %.lr.ph.i ], [ %.pre.i, %_ZN6aiBoneD2Ev.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hm = zext i32 %i.hl to i64
  %i.hn = icmp samesign ult i64 %indvars.iv.next.i, %i.hm
  br i1 %i.hn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i.thread:                             ; preds = %bb.am, %._crit_edge.i
  %i.ho = phi ptr [ %.pre233, %._crit_edge.i ], [ %i.gz, %bb.am ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ho) #14
  br label %_Z11ArrayDeleteI6aiBoneEvRPPT_Rj.exit

_Z11ArrayDeleteI6aiBoneEvRPPT_Rj.exit:            ; preds = %._crit_edge.i, %._crit_edge.i.thread
  store ptr null, ptr %i.gy, align 8
  store i32 0, ptr %i.ha, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %_Z11ArrayDeleteI6aiBoneEvRPPT_Rj.exit, %bb.al, %.split102.us
  %.8 = phi i1 [ true, %_Z11ArrayDeleteI6aiBoneEvRPPT_Rj.exit ], [ %.us-phi103, %bb.al ], [ %.us-phi103, %.split102.us ]
  ret i1 %.8
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp15RemoveVCProcess15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i32 noundef 0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.a, ptr %i.b, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull @.str.9)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp15RemoveVCProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #14
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.k, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  %.pre41 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.e = icmp eq ptr %.pre41, null
  br i1 %i.e, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %i.f = phi i32 [ %i.t, %bb.i ], [ %i.b, %bb.b ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1032
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1048
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1064
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN10aiNodeAnimD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #14
  br label %_ZN10aiNodeAnimD2Ev.exit

_ZN10aiNodeAnimD2Ev.exit:                         ; preds = %bb.g, %bb.h
end_hunk_0
