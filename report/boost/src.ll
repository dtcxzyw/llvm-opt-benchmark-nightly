inline.NumInlined: 7221
inline.NumDeleted: 1431
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 2
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !19
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  store i8 %i.bl, ptr %i.be, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 3, ptr %i.g, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %.thread124 unwind label %bb.r

.thread124:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.thread

bb.r:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %.lr.ph352
  %i.bs = ptrtoint ptr %.sroa.074.3172351 to i64
  %i.bt = sub i64 %i.s, %i.bs
  %i.bu = icmp ugt i64 %i.bt, 5
  %i.bv = zext i8 %i.bi to i32                    ; 3 uses
  %i.bw = lshr i32 %i.bv, 4
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamEE3hex, i64 %i.bx ; 2 uses
  br i1 %i.bu, label %bb.t, label %bb.v, !prof !319

bb.t:                                             ; preds = %bb.s
  store i32 808482140, ptr %.sroa.074.3172351, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 4
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 5
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !19
  %i.cc = and i32 %i.bv, 15
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamEE3hex, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 6
  store i8 %i.cf, ptr %i.cb, align 1, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.t, %bb.p
  %.sroa.074.4 = phi ptr [ %i.bq, %bb.p ], [ %i.cg, %bb.t ], [ %i.bn, %bb.n ] ; 4 uses
  %i.ch = icmp ult ptr %.sroa.074.4, %.sroa.53.0.copyload
  br i1 %i.ch, label %bb.m, label %._crit_edge, !prof !450

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.m
  %.sroa.0.3173.lcssa = phi ptr [ %i.bm, %bb.m ], [ %.sroa.0.2179, %.lr.ph ]
  %.sroa.074.3172.lcssa = phi ptr [ %.sroa.074.4, %bb.m ], [ %.sroa.074.2178, %.lr.ph ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.074.3172.lcssa, i64 1
  store i8 34, ptr %.sroa.074.3172.lcssa, align 1, !tbaa !19
  br label %.thread

._crit_edge:                                      ; preds = %bb.ae, %bb.u, %bb.k
  %.sroa.074.3.lcssa = phi ptr [ %.sroa.074.4, %bb.u ], [ %.sroa.074.1, %bb.k ], [ %i.da, %bb.ae ] ; 2 uses
  %.sroa.0.3.lcssa = phi ptr [ %i.bm, %bb.u ], [ %.sroa.0.1, %bb.k ], [ %i.bm, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 2, ptr %i.f, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit57 unwind label %bb.d

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit57: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread

bb.v:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 1 ; 4 uses
  store i8 92, ptr %.sroa.074.3172351, align 1, !tbaa !19
  %i.ck = load i8, ptr %i.by, align 1, !tbaa !19
  store i8 %i.ck, ptr %i.be, align 8, !tbaa !19
  %i.cl = and i32 %i.bv, 15
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamEE3hex, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !19
  store i8 %i.co, ptr %i.bf, align 1, !tbaa !19
  %i.cp = icmp ult ptr %i.cj, %.sroa.53.0.copyload
  br i1 %i.cp, label %bb.w, label %bb.x, !prof !319

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 2 ; 4 uses
  store i8 117, ptr %i.cj, align 1, !tbaa !19
  %i.cr = icmp ult ptr %i.cq, %.sroa.53.0.copyload
  br i1 %i.cr, label %bb.y, label %bb.z, !prof !319

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 4, ptr %i.e, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit58 unwind label %bb.d

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit58: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 3 ; 4 uses
  store i8 48, ptr %i.cq, align 1, !tbaa !19
  %i.ct = icmp ult ptr %i.cs, %.sroa.53.0.copyload
  br i1 %i.ct, label %bb.aa, label %bb.ab, !prof !319

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 5, ptr %i.d, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 unwind label %bb.d

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 4 ; 4 uses
  store i8 48, ptr %i.cs, align 1, !tbaa !19
  %i.cv = icmp ult ptr %i.cu, %.sroa.53.0.copyload
  br i1 %i.cv, label %bb.ac, label %bb.ad, !prof !319

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 6, ptr %i.c, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 unwind label %bb.d

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  %i.cw = load i8, ptr %i.be, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 5 ; 4 uses
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !19
  %i.cy = icmp ult ptr %i.cx, %.sroa.53.0.copyload
  br i1 %i.cy, label %bb.ae, label %bb.af, !prof !319

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 7, ptr %i.b, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit61 unwind label %bb.d

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit61: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cz = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.074.3172351, i64 6 ; 3 uses
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !19
  %i.db = icmp ult ptr %i.da, %.sroa.53.0.copyload
  br i1 %i.db, label %.lr.ph, label %._crit_edge, !prof !451

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 8, ptr %i.a, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 unwind label %bb.d

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.j, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit54, %.thread124, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit61, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit58, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit57, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit55, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit, %.lr.ph._crit_edge
  %.sroa.074.5 = phi ptr [ %i.bo, %.thread124 ], [ %i.cx, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 ], [ %i.cu, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit61 ], [ %i.cs, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 ], [ %i.cq, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 ], [ %i.cj, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit58 ], [ %i.ci, %.lr.ph._crit_edge ], [ %.sroa.074.3.lcssa, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit57 ], [ %.sroa.074.0.copyload, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ %i.m, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit55 ], [ %i.ay, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit54 ], [ %i.bc, %bb.j ]
  %.sroa.0.4 = phi ptr [ %i.bm, %.thread124 ], [ %i.bm, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 ], [ %i.bm, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit61 ], [ %i.bm, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 ], [ %i.bm, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 ], [ %i.bm, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit58 ], [ %.sroa.0.3173.lcssa, %.lr.ph._crit_edge ], [ %.sroa.0.3.lcssa, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit57 ], [ %.sroa.0.0.copyload, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ %.sroa.0.0.copyload, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit55 ], [ %i.az, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit54 ], [ %.sroa.0.0.copyload, %bb.j ]
  %.4 = phi i1 [ false, %.thread124 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit61 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit58 ], [ true, %.lr.ph._crit_edge ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit57 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit55 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit54 ], [ true, %bb.j ]
  store ptr %.sroa.0.4, ptr %i.k, align 8, !tbaa !445
  store ptr %.sroa.074.5, ptr %1, align 8, !tbaa !429
  ret i1 %.4

bb.ag:                                            ; preds = %bb.r, %bb.i, %bb.d
  %.sroa.074.6 = phi ptr [ %.sroa.074.0, %bb.d ], [ %i.bo, %bb.r ], [ %i.ay, %bb.i ]
  %.sroa.0.5 = phi ptr [ %.sroa.0.0, %bb.d ], [ %i.bm, %bb.r ], [ %i.az, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.br, %bb.r ], [ %i.bb, %bb.i ]
  store ptr %.sroa.0.5, ptr %i.k, align 8, !tbaa !445
  store ptr %.sroa.074.6, ptr %1, align 8, !tbaa !429
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost4json6detail13resume_stringERNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %.sroa.079.0.copyload = load ptr, ptr %1, align 8, !tbaa !176 ; 13 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !176 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !176 ; 21 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !176 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !251  ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !324
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = add i64 %i.m, -1
  store i64 %i.t, ptr %i.l, align 8, !tbaa !251
  switch i8 %i.s, label %.thread [
    i8 8, label %.thread139
    i8 1, label %.thread127
    i8 2, label %bb.m
    i8 3, label %.sink.split
    i8 4, label %.thread131
    i8 5, label %.thread133
    i8 6, label %.thread135
    i8 7, label %.thread137
  ]

.thread:                                          ; preds = %bb.b, %bb.a
  %i.u = icmp ult ptr %.sroa.079.0.copyload, %.sroa.55.0.copyload
  br i1 %i.u, label %bb.c, label %bb.d, !prof !319

bb.c:                                             ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload, i64 1
  store i8 34, ptr %.sroa.079.0.copyload, align 1, !tbaa !19
  br label %.thread127

bb.d:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 0, ptr %i.j, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.thread141

bb.e:                                             ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.x, %._crit_edge, %bb.l, %bb.d
  %.sroa.0.0 = phi ptr [ %.sroa.0.8, %bb.ae ], [ %.sroa.0.7, %bb.ad ], [ %.sroa.0.6, %bb.ab ], [ %.sroa.0.5, %bb.z ], [ %.sroa.0.4, %bb.x ], [ %.sroa.0.3.lcssa, %._crit_edge ], [ %.sroa.0.0.copyload, %bb.l ], [ %.sroa.0.0.copyload, %bb.d ]
  %.sroa.079.0 = phi ptr [ %.sroa.079.10, %bb.ae ], [ %.sroa.079.9, %bb.ad ], [ %.sroa.079.8, %bb.ab ], [ %.sroa.079.7, %bb.z ], [ %.sroa.079.6, %bb.x ], [ %.sroa.079.4.lcssa, %._crit_edge ], [ %.sroa.079.1, %bb.l ], [ %.sroa.079.0.copyload, %bb.d ]
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.thread127:                                       ; preds = %bb.b, %bb.c
  %.sroa.079.1 = phi ptr [ %i.v, %bb.c ], [ %.sroa.079.0.copyload, %bb.b ] ; 9 uses
  %i.x = icmp ult ptr %.sroa.079.1, %.sroa.55.0.copyload
  br i1 %i.x, label %bb.f, label %bb.l, !prof !319

bb.f:                                             ; preds = %.thread127
  %i.y = ptrtoint ptr %.sroa.16.0.copyload to i64
  %i.z = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.g, !prof !320

bb.g:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %.sroa.55.0.copyload to i64
  %i.ac = ptrtoint ptr %.sroa.079.1 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, %i.aa
  br i1 %i.ae, label %.preheader.preheader, label %.preheader155.preheader

.preheader155.preheader:                          ; preds = %bb.g
  %i.af = icmp ugt i64 %i.ad, 15
  br i1 %i.af, label %.lr.ph245, label %_ZN5boost4json6detail15count_unescapedEPKcm.exit

.preheader.preheader:                             ; preds = %bb.g
  %i.ag = icmp ugt i64 %i.aa, 15
  br i1 %i.ag, label %.lr.ph248, label %_ZN5boost4json6detail15count_unescapedEPKcm.exit

.preheader:                                       ; preds = %.lr.ph248
  %i.ah = getelementptr inbounds nuw i8, ptr %.021.i247, i64 16 ; 2 uses
  %i.ai = add i64 %.022.i246, -16                 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.lr.ph248, label %_ZN5boost4json6detail15count_unescapedEPKcm.exit

.lr.ph248:                                        ; preds = %.preheader.preheader, %.preheader
  %.021.i247 = phi ptr [ %i.ah, %.preheader ], [ %.sroa.0.0.copyload, %.preheader.preheader ] ; 3 uses
  %.022.i246 = phi i64 [ %i.ai, %.preheader ], [ %i.aa, %.preheader.preheader ]
  %i.ak = load <16 x i8>, ptr %.021.i247, align 1, !tbaa !19 ; 3 uses
  %i.al = icmp eq <16 x i8> %i.ak, splat (i8 34)
  %i.am = icmp eq <16 x i8> %i.ak, splat (i8 92)
  %i.an = or <16 x i1> %i.al, %i.am
  %i.ao = icmp ult <16 x i8> %i.ak, splat (i8 32)
  %i.ap = or <16 x i1> %i.ao, %i.an
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.preheader, label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %.lr.ph248
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.021.i247, i64 %i.as
  br label %_ZN5boost4json6detail15count_unescapedEPKcm.exit

.preheader155:                                    ; preds = %.lr.ph245
  %i.au = getelementptr inbounds nuw i8, ptr %.021.i54244, i64 16 ; 2 uses
  %i.av = add i64 %.022.i53243, -16               ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.lr.ph245, label %_ZN5boost4json6detail15count_unescapedEPKcm.exit

.lr.ph245:                                        ; preds = %.preheader155.preheader, %.preheader155
  %.021.i54244 = phi ptr [ %i.au, %.preheader155 ], [ %.sroa.0.0.copyload, %.preheader155.preheader ] ; 3 uses
  %.022.i53243 = phi i64 [ %i.av, %.preheader155 ], [ %i.ad, %.preheader155.preheader ]
  %i.ax = load <16 x i8>, ptr %.021.i54244, align 1, !tbaa !19 ; 3 uses
  %i.ay = icmp eq <16 x i8> %i.ax, splat (i8 34)
  %i.az = icmp eq <16 x i8> %i.ax, splat (i8 92)
  %i.ba = or <16 x i1> %i.ay, %i.az
  %i.bb = icmp ult <16 x i8> %i.ax, splat (i8 32)
  %i.bc = or <16 x i1> %i.bb, %i.ba
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not.i56 = icmp eq i16 %i.bd, 0
  br i1 %.not.i56, label %.preheader155, label %.split.loop.exit.i57

.split.loop.exit.i57:                             ; preds = %.lr.ph245
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.i54244, i64 %i.bf
  br label %_ZN5boost4json6detail15count_unescapedEPKcm.exit

_ZN5boost4json6detail15count_unescapedEPKcm.exit: ; preds = %.preheader155, %.preheader, %.preheader155.preheader, %.preheader.preheader, %.split.loop.exit.i57, %.split.loop.exit.i
  %.pn154.in = phi ptr [ %i.ah, %.preheader ], [ %i.at, %.split.loop.exit.i ], [ %i.bg, %.split.loop.exit.i57 ], [ %.sroa.0.0.copyload, %.preheader.preheader ], [ %.sroa.0.0.copyload, %.preheader155.preheader ], [ %i.au, %.preheader155 ] ; 2 uses
  %.not49 = icmp eq ptr %.pn154.in, %.sroa.0.0.copyload
  br i1 %.not49, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4json6detail15count_unescapedEPKcm.exit
  %.pn154 = ptrtoint ptr %.pn154.in to i64
  %.042 = sub i64 %.pn154, %i.z                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.079.1, ptr align 1 %.sroa.0.0.copyload, i64 %.042, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.079.1, i64 %.042 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.042 ; 3 uses
  %i.bj = icmp ult ptr %i.bh, %.sroa.55.0.copyload
  br i1 %i.bj, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 1, ptr %i.i, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 unwind label %bb.j

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.thread141

bb.j:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.k:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.079.1, i64 1
  store i8 34, ptr %.sroa.079.1, align 1, !tbaa !19
  br label %.thread141

bb.l:                                             ; preds = %.thread127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 1, ptr %i.h, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.thread141

.sink.split:                                      ; preds = %.thread139, %bb.b
  %.sink = phi i64 [ 80, %bb.b ], [ 81, %.thread139 ]
  %.sroa.079.10.sink256 = phi ptr [ %.sroa.079.0.copyload, %bb.b ], [ %.sroa.079.10, %.thread139 ] ; 2 uses
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.8, %.thread139 ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %3 = load i8, ptr %2, align 1, !tbaa !19
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.079.10.sink256, i64 1
  store i8 %3, ptr %.sroa.079.10.sink256, align 1, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZN5boost4json6detail15count_unescapedEPKcm.exit, %bb.h, %bb.b
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ %i.bi, %bb.h ], [ %.sroa.0.0.copyload, %_ZN5boost4json6detail15count_unescapedEPKcm.exit ], [ %.sroa.0.2.ph, %.sink.split ] ; 4 uses
  %.sroa.079.3 = phi ptr [ %.sroa.079.0.copyload, %bb.b ], [ %i.bh, %bb.h ], [ %.sroa.079.1, %_ZN5boost4json6detail15count_unescapedEPKcm.exit ], [ %4, %.sink.split ] ; 4 uses
  %i.bm = icmp ult ptr %.sroa.079.3, %.sroa.55.0.copyload
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !prof !449

.lr.ph:                                           ; preds = %bb.m
  %i.bn = ptrtoint ptr %.sroa.55.0.copyload to i64
  %i.bo = icmp ult ptr %.sroa.0.2, %.sroa.16.0.copyload
  br i1 %i.bo, label %.lr.ph252, label %._crit_edge253, !prof !449

bb.n:                                             ; preds = %bb.v
  %i.bp = icmp ult ptr %i.bu, %.sroa.16.0.copyload
  br i1 %i.bp, label %.lr.ph252, label %._crit_edge253, !prof !450

.lr.ph252:                                        ; preds = %.lr.ph, %bb.n
  %.sroa.0.3173251 = phi ptr [ %i.bu, %bb.n ], [ %.sroa.0.2, %.lr.ph ] ; 2 uses
  %.sroa.079.4174250 = phi ptr [ %.sroa.079.5, %bb.n ], [ %.sroa.079.3, %.lr.ph ] ; 12 uses
  %i.bq = load i8, ptr %.sroa.0.3173251, align 1, !tbaa !19 ; 3 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamEE3esc, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.3173251, i64 1 ; 7 uses
  switch i8 %i.bt, label %bb.p [
    i8 0, label %bb.o
    i8 117, label %bb.t
  ]

bb.o:                                             ; preds = %.lr.ph252
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.079.4174250, i64 1
  store i8 %i.bq, ptr %.sroa.079.4174250, align 1, !tbaa !19
  br label %bb.v

bb.p:                                             ; preds = %.lr.ph252
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.079.4174250, i64 1 ; 4 uses
  store i8 92, ptr %.sroa.079.4174250, align 1, !tbaa !19
  %i.bx = icmp ult ptr %i.bw, %.sroa.55.0.copyload
  br i1 %i.bx, label %bb.q, label %bb.r, !prof !319

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.079.4174250, i64 2
  store i8 %i.bt, ptr %i.bw, align 1, !tbaa !19
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.bt, ptr %i.bz, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 3, ptr %i.g, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %.thread146 unwind label %bb.s

.thread146:                                       ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.thread141

bb.s:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.t:                                             ; preds = %.lr.ph252
  %i.cb = ptrtoint ptr %.sroa.079.4174250 to i64
  %i.cc = sub i64 %i.bn, %i.cb
  %i.cd = icmp ugt i64 %i.cc, 5
  %i.ce = zext i8 %i.bq to i32                    ; 2 uses
  %i.cf = lshr i32 %i.ce, 4
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamEE3hex, i64 %i.cg ; 2 uses
  %i.ci = and i32 %i.ce, 15
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamEE3hex, i64 %i.cj ; 2 uses
  br i1 %i.cd, label %bb.u, label %.thread150, !prof !319

bb.u:                                             ; preds = %bb.t
  store i32 808482140, ptr %.sroa.079.4174250, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.079.4174250, i64 4
  %i.cm = load i8, ptr %i.ch, align 1, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.079.4174250, i64 5
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !19
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.079.4174250, i64 6
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !19
  br label %bb.v

.thread150:                                       ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.079.4174250, i64 1
  store i8 92, ptr %.sroa.079.4174250, align 1, !tbaa !19
  %i.cr = load i8, ptr %i.ch, align 1, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.cr, ptr %i.cs, align 8, !tbaa !19
  %i.ct = load i8, ptr %i.ck, align 1, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !19
  br label %.thread131

bb.v:                                             ; preds = %bb.o, %bb.u, %bb.q
  %.sroa.079.5 = phi ptr [ %i.by, %bb.q ], [ %i.cp, %bb.u ], [ %i.bv, %bb.o ] ; 4 uses
  %i.cv = icmp ult ptr %.sroa.079.5, %.sroa.55.0.copyload
  br i1 %i.cv, label %bb.n, label %._crit_edge, !prof !450

._crit_edge253:                                   ; preds = %bb.n, %.lr.ph
  %.sroa.079.4174.lcssa = phi ptr [ %.sroa.079.3, %.lr.ph ], [ %.sroa.079.5, %bb.n ] ; 2 uses
  %.sroa.0.3173.lcssa = phi ptr [ %.sroa.0.2, %.lr.ph ], [ %i.bu, %bb.n ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.079.4174.lcssa, i64 1
  store i8 34, ptr %.sroa.079.4174.lcssa, align 1, !tbaa !19
  br label %.thread141

._crit_edge:                                      ; preds = %bb.v, %bb.m
  %.sroa.0.3.lcssa = phi ptr [ %.sroa.0.2, %bb.m ], [ %i.bu, %bb.v ] ; 2 uses
  %.sroa.079.4.lcssa = phi ptr [ %.sroa.079.3, %bb.m ], [ %.sroa.079.5, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 2, ptr %i.f, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread141

.thread131:                                       ; preds = %bb.b, %.thread150
  %.sroa.0.4 = phi ptr [ %i.bu, %.thread150 ], [ %.sroa.0.0.copyload, %bb.b ] ; 3 uses
  %.sroa.079.6 = phi ptr [ %i.cq, %.thread150 ], [ %.sroa.079.0.copyload, %bb.b ] ; 5 uses
  %i.cx = icmp ult ptr %.sroa.079.6, %.sroa.55.0.copyload
  br i1 %i.cx, label %bb.w, label %bb.x, !prof !319

bb.w:                                             ; preds = %.thread131
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.079.6, i64 1
  store i8 117, ptr %.sroa.079.6, align 1, !tbaa !19
  br label %.thread133

bb.x:                                             ; preds = %.thread131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 4, ptr %i.e, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit63 unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit63: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread141

.thread133:                                       ; preds = %bb.b, %bb.w
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %bb.w ], [ %.sroa.0.0.copyload, %bb.b ] ; 3 uses
  %.sroa.079.7 = phi ptr [ %i.cy, %bb.w ], [ %.sroa.079.0.copyload, %bb.b ] ; 5 uses
  %i.cz = icmp ult ptr %.sroa.079.7, %.sroa.55.0.copyload
  br i1 %i.cz, label %bb.y, label %bb.z, !prof !319

bb.y:                                             ; preds = %.thread133
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.079.7, i64 1
  store i8 48, ptr %.sroa.079.7, align 1, !tbaa !19
  br label %.thread135

bb.z:                                             ; preds = %.thread133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 5, ptr %i.d, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit64 unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit64: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread141

.thread135:                                       ; preds = %bb.b, %bb.y
  %.sroa.0.6 = phi ptr [ %.sroa.0.5, %bb.y ], [ %.sroa.0.0.copyload, %bb.b ] ; 3 uses
  %.sroa.079.8 = phi ptr [ %i.da, %bb.y ], [ %.sroa.079.0.copyload, %bb.b ] ; 5 uses
  %i.db = icmp ult ptr %.sroa.079.8, %.sroa.55.0.copyload
  br i1 %i.db, label %bb.aa, label %bb.ab, !prof !319

bb.aa:                                            ; preds = %.thread135
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.079.8, i64 1
  store i8 48, ptr %.sroa.079.8, align 1, !tbaa !19
  br label %.thread137

bb.ab:                                            ; preds = %.thread135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 6, ptr %i.c, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit65 unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit65: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread141

.thread137:                                       ; preds = %bb.b, %bb.aa
  %.sroa.0.7 = phi ptr [ %.sroa.0.6, %bb.aa ], [ %.sroa.0.0.copyload, %bb.b ] ; 3 uses
  %.sroa.079.9 = phi ptr [ %i.dc, %bb.aa ], [ %.sroa.079.0.copyload, %bb.b ] ; 5 uses
  %i.dd = icmp ult ptr %.sroa.079.9, %.sroa.55.0.copyload
  br i1 %i.dd, label %bb.ac, label %bb.ad, !prof !319

bb.ac:                                            ; preds = %.thread137
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.df = load i8, ptr %i.de, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.079.9, i64 1
  store i8 %i.df, ptr %.sroa.079.9, align 1, !tbaa !19
  br label %.thread139

bb.ad:                                            ; preds = %.thread137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 7, ptr %i.b, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit66 unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit66: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread141

.thread139:                                       ; preds = %bb.b, %bb.ac
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %bb.ac ], [ %.sroa.0.0.copyload, %bb.b ] ; 3 uses
  %.sroa.079.10 = phi ptr [ %i.dg, %bb.ac ], [ %.sroa.079.0.copyload, %bb.b ] ; 4 uses
  %i.dh = icmp ult ptr %.sroa.079.10, %.sroa.55.0.copyload
  br i1 %i.dh, label %.sink.split, label %bb.ae, !prof !319

bb.ae:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 8, ptr %i.a, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit67 unwind label %bb.e

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit67: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread141

.thread141:                                       ; preds = %bb.k, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59, %.thread146, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit67, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit66, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit65, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit64, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit63, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit, %._crit_edge253
  %.sroa.0.9 = phi ptr [ %i.bu, %.thread146 ], [ %.sroa.0.8, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit67 ], [ %.sroa.0.7, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit66 ], [ %.sroa.0.6, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit65 ], [ %.sroa.0.5, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit64 ], [ %.sroa.0.4, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit63 ], [ %.sroa.0.3173.lcssa, %._crit_edge253 ], [ %.sroa.0.3.lcssa, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 ], [ %.sroa.0.0.copyload, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ %.sroa.0.0.copyload, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 ], [ %i.bi, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 ], [ %.sroa.0.0.copyload, %bb.k ]
  %.sroa.079.11 = phi ptr [ %i.bw, %.thread146 ], [ %.sroa.079.10, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit67 ], [ %.sroa.079.9, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit66 ], [ %.sroa.079.8, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit65 ], [ %.sroa.079.7, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit64 ], [ %.sroa.079.6, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit63 ], [ %i.cw, %._crit_edge253 ], [ %.sroa.079.4.lcssa, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 ], [ %.sroa.079.0.copyload, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ %.sroa.079.1, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 ], [ %i.bh, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 ], [ %i.bl, %bb.k ]
  %.9 = phi i1 [ false, %.thread146 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit67 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit66 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit65 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit64 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit63 ], [ true, %._crit_edge253 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit62 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit60 ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit59 ], [ true, %bb.k ]
  store ptr %.sroa.0.9, ptr %i.k, align 8, !tbaa !445
  store ptr %.sroa.079.11, ptr %1, align 8, !tbaa !429
  ret i1 %.9

bb.af:                                            ; preds = %bb.s, %bb.j, %bb.e
  %.sroa.0.10 = phi ptr [ %.sroa.0.0, %bb.e ], [ %i.bu, %bb.s ], [ %i.bi, %bb.j ]
  %.sroa.079.12 = phi ptr [ %.sroa.079.0, %bb.e ], [ %i.bw, %bb.s ], [ %i.bh, %bb.j ]
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.ca, %bb.s ], [ %i.bk, %bb.j ]
  store ptr %.sroa.0.10, ptr %i.k, align 8, !tbaa !445
  store ptr %.sroa.079.12, ptr %1, align 8, !tbaa !429
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5boost4json10serializerC2ERKNS0_17serialize_optionsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(129) initializes((0, 49), (72, 80), (112, 129)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #17 align 2 {
_ZN5boost4json11storage_ptrD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.b = load i8, ptr %1, align 1, !tbaa !218
  store i8 %i.b, ptr %i.a, align 8, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.c, align 8, !tbaa !426
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.d, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5boost4json10serializerC2ENS0_11storage_ptrEPhmRKNS0_17serialize_optionsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(129) initializes((0, 49), (72, 80), (112, 129)) %0, ptr nofree noundef align 8 captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4) unnamed_addr #17 align 2 {
_ZN5boost4json11storage_ptrD2Ev.exit:
  %i.a = load i64, ptr %1, align 8, !tbaa !15
  store i64 0, ptr %1, align 8, !tbaa !15
  store i64 %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.b, align 8, !tbaa !441
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.d, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.e, align 8, !tbaa !442
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %4, align 1, !tbaa !218
  store i8 %i.g, ptr %i.f, align 8, !tbaa !218
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.h, align 8, !tbaa !426
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.i, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail11write_valueILb1EEEbRNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !426  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !19    ; 3 uses
  %i.j = and i8 %i.i, 63
  switch i8 %i.j, label %bb.b [
    i8 0, label %bb.y
    i8 6, label %bb.c
    i8 5, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 1, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN5boost4json6detail12write_objectILb1EEEbRNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN5boost4json6detail10write_trueERNS1_6writerERNS1_6streamE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN5boost4json6detail11write_arrayILb1EEEbRNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN5boost4json6detail10write_trueERNS1_6writerERNS1_6streamE.exit

bb.d:                                             ; preds = %bb.a
  %i.m = icmp eq i8 %i.i, -123
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.i.i = select i1 %i.m, ptr %i.n, ptr %i.q    ; 2 uses
  %i.r = icmp eq i8 %i.i, 5
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.p, align 4, !tbaa !396
  %i.t = zext i32 %i.s to i64
  br label %_ZNK5boost4json6string4sizeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ashr i64 %i.u, 56
  %i.w = sub nsw i64 14, %i.v
  br label %_ZNK5boost4json6string4sizeEv.exit

_ZNK5boost4json6string4sizeEv.exit:               ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %i.w, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.i.i, ptr %i.z, align 8, !tbaa !176
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !176
  %i.aa = tail call noundef zeroext i1 @_ZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN5boost4json6detail10write_trueERNS1_6writerERNS1_6streamE.exit

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !176 ; 7 uses
  %.sroa.13.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload22.i.i = load ptr, ptr %.sroa.13.0..sroa_idx21.i.i, align 8, !tbaa !176
  %i.ad = ptrtoint ptr %.sroa.13.0.copyload22.i.i to i64
  %i.ae = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp ugt i64 %i.af, 26
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !319

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call noundef i32 @_ZN5boost4json6detail12format_int64EPcl(ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %i.ac) #46
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ai
  br label %_ZN5boost4json6detail11write_int64ERNS1_6writerERNS1_6streamEl.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.al = tail call noundef i32 @_ZN5boost4json6detail12format_int64EPcl(ptr noundef nonnull %i.ak, i64 noundef %i.ac) #46
  %i.am = zext i32 %i.al to i64                   ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !176
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !176
  %i.ap = icmp samesign ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i.i, ptr nonnull align 8 %i.ak, i64 %i.af, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.af ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !445
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.af
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 9, ptr %i.e, align 1, !tbaa !443
  invoke void @_ZN5boost4json6detail5stack4pushINS1_6writer5stateEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i.i unwind label %.body.i.i

_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN5boost4json6detail11write_int64ERNS1_6writerERNS1_6streamEl.exit

common.resume:                                    ; preds = %.body.i.i38, %.body.i.i
  %storemerge = phi ptr [ %i.br, %.body.i.i38 ], [ %i.aq, %.body.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %.body.i.i38 ], [ %i.at, %.body.i.i ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !429
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i.i, ptr nonnull align 8 %i.ak, i64 %i.am, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.am
  br label %_ZN5boost4json6detail11write_int64ERNS1_6writerERNS1_6streamEl.exit

_ZN5boost4json6detail11write_int64ERNS1_6writerERNS1_6streamEl.exit: ; preds = %bb.h, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i.i, %bb.k
  %.sroa.0.0.i.i = phi ptr [ %i.aj, %bb.h ], [ %i.aq, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i.i ], [ %i.au, %bb.k ]
  %.0.i.i33 = phi i1 [ true, %bb.h ], [ false, %_ZN5boost4json6detail6writer7suspendENS2_5stateE.exit.i.i ], [ true, %bb.k ]
  store ptr %.sroa.0.0.i.i, ptr %1, align 8, !tbaa !429
  br label %_ZN5boost4json6detail10write_trueERNS1_6writerERNS1_6streamE.exit

bb.l:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !19
  %i.ax = tail call noundef zeroext i1 @_ZN5boost4json6detail12write_bufferINS1_16uint64_formatterEEEbRNS1_6writerERNS1_6streamET_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.aw)
  br label %_ZN5boost4json6detail10write_trueERNS1_6writerERNS1_6streamE.exit
end_hunk_0
