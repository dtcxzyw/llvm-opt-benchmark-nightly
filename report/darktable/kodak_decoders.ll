Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/kodak_decoders?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw19kodak_c330_load_rawEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 5, ptr %i.c, align 16, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !75
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 1                  ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 4                  ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #14 ; 8 uses
  store i8 0, ptr %i.i, align 1, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = add nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 0, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !76
  %.not49 = icmp eq i16 %i.m, 0
  br i1 %.not49, label %_ZNSt6vectorIhSaIhEED2Ev.exit35, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph48, %._crit_edge
  %.02746 = phi i32 [ 0, %.lr.ph48 ], [ %i.cv, %._crit_edge ] ; 5 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.e unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !84   ; 2 uses
  %i.s = load i16, ptr %i.d, align 2, !tbaa !75
  %i.t = zext i16 %i.s to i64
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.i, i64 noundef %i.t, i64 noundef 2)
          to label %bb.f unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit, !call_target !96

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.h unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.i, %bb.g, %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #15
  resume { ptr, i32 } %i.z

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !99
  %.not30 = icmp ne i32 %i.aa, 0
  %i.ab = and i32 %.02746, 31
  %i.ac = icmp eq i32 %i.ab, 31
  %or.cond = and i1 %i.ac, %.not30
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !84  ; 2 uses
  %i.ae = load i16, ptr %i.d, align 2, !tbaa !75
  %i.af = zext i16 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef %i.ag, i32 noundef 1)
          to label %bb.j unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit, !call_target !105 ; 0 uses

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = load i16, ptr %i.p, align 2, !tbaa !74  ; 2 uses
  %.not50 = icmp eq i16 %i.al, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !98  ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.an = phi i16 [ %i.al, %.lr.ph ], [ %i.cs, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.ao = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !81
  %i.ar = zext i8 %i.aq to i32
  %i.as = and i64 %i.ao, 2147483644
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !81
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = add nsw i32 %i.aw, -128
  %i.ay = and i64 %i.ao, 4294967292
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !81
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -128                 ; 2 uses
  %i.be = add nsw i32 %i.aw, -126
  %i.bf = add nsw i32 %i.be, %i.bd
  %i.bg = ashr i32 %i.bf, 2
  %i.bh = sub nsw i32 %i.ar, %i.bg                ; 3 uses
  %i.bi = add nsw i32 %i.bh, %i.ax
  %i.bj = add nsw i32 %i.bh, %i.bd
  %i.bk = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 0)
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 255)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !79
  %i.bp = zext i16 %i.an to i32
  %i.bq = mul nuw nsw i32 %.02746, %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store i16 %i.bo, ptr %i.bt, align 2, !tbaa !79
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 255)
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !79
  %i.bz = load i16, ptr %i.p, align 2, !tbaa !74
  %i.ca = zext i16 %i.bz to i32
  %i.cb = mul nuw nsw i32 %.02746, %i.ca
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i16 %i.by, ptr %i.cf, align 2, !tbaa !79
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 255)
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !79
  %i.cl = load i16, ptr %i.p, align 2, !tbaa !74
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %.02746, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i16 %i.ck, ptr %i.cr, align 2, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = load i16, ptr %i.p, align 2, !tbaa !74  ; 2 uses
  %i.ct = zext i16 %i.cs to i64
  %i.cu = icmp samesign ult i64 %indvars.iv.next, %i.ct
  br i1 %i.cu, label %bb.k, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.cv = add nuw nsw i32 %.02746, 1              ; 2 uses
  %i.cw = load i16, ptr %i.l, align 4, !tbaa !76
  %i.cx = zext i16 %i.cw to i32
  %i.cy = icmp samesign ult i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.d, label %_ZNSt6vectorIhSaIhEED2Ev.exit35, !llvm.loop !166

_ZNSt6vectorIhSaIhEED2Ev.exit35:                  ; preds = %._crit_edge, %bb.c
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 6110
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !79
  %i.db = zext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !83
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19kodak_c603_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 5, ptr %i.c, align 16, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !75   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.c
  %i.f = zext i16 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #14 ; 4 uses
  store i8 0, ptr %i.h, align 1, !tbaa !81
  %1 = getelementptr i8, ptr %i.h, i64 %i.g
  %i.i = add nsw i64 %i.g, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.i, i1 false)
  %i.k = ptrtoint ptr %1 to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %.noexc, %bb.c
  %.sroa.13.0 = phi i64 [ %i.k, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %.sroa.037.0 = phi ptr [ %i.h, %.noexc ], [ null, %bb.c ] ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !76
  %.not51 = icmp eq i16 %i.m, 0
  br i1 %.not51, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph49, %._crit_edge
  %.02847 = phi i32 [ 0, %.lr.ph49 ], [ %i.fa, %._crit_edge ] ; 9 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = and i32 %.02847, 1
  %.not32.not = icmp eq i32 %i.q, 0
  br i1 %.not32.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !84   ; 2 uses
  %i.s = load i16, ptr %i.d, align 2, !tbaa !75
  %i.t = zext i16 %i.s to i64
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %.sroa.037.0, i64 noundef %i.t, i64 noundef 3)
          to label %bb.g unwind label %bb.i, !call_target !96

bb.g:                                             ; preds = %bb.f
  %i.y = icmp slt i32 %i.x, 3
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.037.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = ptrtoint ptr %.sroa.037.0 to i64
  %i.ab = sub i64 %.sroa.13.0, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0, i64 noundef %i.ab) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.ac = load i16, ptr %i.o, align 2, !tbaa !74  ; 4 uses
  %.not52 = icmp eq i16 %i.ac, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = trunc i32 %.02847 to i1
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !98  ; 6 uses
  br i1 %i.ae, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.ag = phi i16 [ %i.co, %.lr.ph.split.us ], [ %i.ac, %.lr.ph ]
  %i.ah = phi i32 [ %i.cp, %.lr.ph.split.us ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.02746.us = phi i32 [ %i.cn, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = add nuw nsw i32 %i.ai, %.02746.us
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !81
  %i.an = zext i8 %i.am to i32
  %i.ao = and i32 %.02746.us, 2147483646
  %i.ap = add nuw nsw i32 %i.ah, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = add nsw i32 %i.at, -128
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -128                 ; 2 uses
  %i.az = add nsw i32 %i.at, -126
  %i.ba = add nsw i32 %i.az, %i.ay
  %i.bb = ashr i32 %i.ba, 2
  %i.bc = sub nsw i32 %i.an, %i.bb                ; 3 uses
  %i.bd = add nsw i32 %i.bc, %i.au
  %i.be = add nsw i32 %i.bc, %i.ay
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 255)
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !79
  %i.bk = zext i16 %i.ag to i32
  %i.bl = mul nuw nsw i32 %.02847, %i.bk
  %i.bm = add nuw nsw i32 %i.bl, %.02746.us
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bn
  store i16 %i.bj, ptr %i.bo, align 2, !tbaa !79
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 255)
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !79
  %i.bu = load i16, ptr %i.o, align 2, !tbaa !74
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw nsw i32 %.02847, %i.bv
  %i.bx = add nuw nsw i32 %i.bw, %.02746.us
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 %i.bt, ptr %i.ca, align 2, !tbaa !79
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 255)
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !79
  %i.cg = load i16, ptr %i.o, align 2, !tbaa !74
  %i.ch = zext i16 %i.cg to i32
  %i.ci = mul nuw nsw i32 %.02847, %i.ch
  %i.cj = add nuw nsw i32 %i.ci, %.02746.us
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i16 %i.cf, ptr %i.cm, align 2, !tbaa !79
  %i.cn = add nuw nsw i32 %.02746.us, 1           ; 2 uses
  %i.co = load i16, ptr %i.o, align 2, !tbaa !74  ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 2 uses
  %i.cq = icmp samesign ult i32 %i.cn, %i.cp
  br i1 %i.cq, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !167

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.cr = phi i16 [ %i.ew, %.lr.ph.split ], [ %i.ac, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %i.cs = phi i32 [ %i.ex, %.lr.ph.split ], [ %i.ad, %.lr.ph ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %indvars.iv
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !81
  %i.cv = zext i8 %i.cu to i32
  %i.cw = trunc nuw nsw i64 %indvars.iv to i32
  %i.cx = and i32 %i.cw, 2147483646
  %i.cy = add nuw nsw i32 %i.cs, %i.cx
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %i.cz ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !81
  %i.dc = zext i8 %i.db to i32                    ; 2 uses
  %i.dd = add nsw i32 %i.dc, -128
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !81
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nsw i32 %i.dg, -128                 ; 2 uses
  %i.di = add nsw i32 %i.dc, -126
  %i.dj = add nsw i32 %i.di, %i.dh
  %i.dk = ashr i32 %i.dj, 2
  %i.dl = sub nsw i32 %i.cv, %i.dk                ; 3 uses
  %i.dm = add nsw i32 %i.dl, %i.dd
  %i.dn = add nsw i32 %i.dl, %i.dh
  %i.do = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 0)
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.do, i32 255)
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !79
  %i.dt = zext i16 %i.cr to i32
  %i.du = mul nuw nsw i32 %.02847, %i.dt
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  store i16 %i.ds, ptr %i.dx, align 2, !tbaa !79
  %i.dy = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dz = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 255)
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !79
  %i.ed = load i16, ptr %i.o, align 2, !tbaa !74
  %i.ee = zext i16 %i.ed to i32
  %i.ef = mul nuw nsw i32 %.02847, %i.ee
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i16 %i.ec, ptr %i.ej, align 2, !tbaa !79
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 255)
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !79
  %i.ep = load i16, ptr %i.o, align 2, !tbaa !74
  %i.eq = zext i16 %i.ep to i32
  %i.er = mul nuw nsw i32 %.02847, %i.eq
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
end_hunk_0
