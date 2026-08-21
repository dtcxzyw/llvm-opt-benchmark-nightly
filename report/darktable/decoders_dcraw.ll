inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw16nikon_read_curveEv:bb.a
  %i.au = icmp eq i32 %.0, 1
  br i1 %i.au, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %wide.trip.count62, 32766
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.av = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aw = mul nuw nsw i64 %indvars.iv, %i.as
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.aw
  store i16 %i.av, ptr %i.ax, align 2, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.j, !llvm.loop !206

bb.k:                                             ; preds = %bb.k, %.lr.ph56.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph56.new ], [ %indvars.iv.next60.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.k ]
  %i.ay = trunc nuw nsw i64 %indvars.iv59 to i32  ; 2 uses
  %i.az = urem i32 %i.ay, %.1                     ; 3 uses
  %i.ba = sub nuw nsw i32 %i.ay, %i.az            ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !96
  %i.be = zext i16 %i.bd to i32
  %i.bf = sub nsw i32 %.1, %i.az
  %i.bg = mul nsw i32 %i.bf, %i.be
  %i.bh = add nsw i32 %i.ba, %.1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !96
  %i.bl = zext i16 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.az, %i.bl
  %i.bn = add nsw i32 %i.bm, %i.bg
  %i.bo = sdiv i32 %i.bn, %.1
  %i.bp = trunc i32 %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv59
  store i16 %i.bp, ptr %i.bq, align 4, !tbaa !96
  %indvars.iv.next60 = or disjoint i64 %indvars.iv59, 1 ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv.next60 to i32 ; 2 uses
  %i.bs = urem i32 %i.br, %.1                     ; 3 uses
  %i.bt = sub nuw nsw i32 %i.br, %i.bs            ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !96
  %i.bx = zext i16 %i.bw to i32
  %i.by = sub nsw i32 %.1, %i.bs
  %i.bz = mul nsw i32 %i.by, %i.bx
  %i.ca = add nsw i32 %i.bt, %.1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !96
  %i.ce = zext i16 %i.cd to i32
  %i.cf = mul nuw nsw i32 %i.bs, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.bz
  %i.ch = sdiv i32 %i.cg, %.1
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.next60
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !96
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !207

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.ck = icmp ne i32 %i.t, 70
  %i.cl = icmp ult i16 %i.ag, 16386
  %or.cond10 = and i1 %i.ck, %i.cl
  br i1 %or.cond10, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5600
  call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.cm, i32 noundef %i.ah)
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next60.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod66 = trunc i32 %.0 to i1
  call void @llvm.assume(i1 %lcmp.mod66)
  %i.cn = trunc nuw nsw i64 %indvars.iv59.epil.init to i32 ; 2 uses
  %i.co = urem i32 %i.cn, %.1                     ; 3 uses
  %i.cp = sub nuw nsw i32 %i.cn, %i.co            ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !96
  %i.ct = zext i16 %i.cs to i32
  %i.cu = sub nsw i32 %.1, %i.co
  %i.cv = mul nsw i32 %i.cu, %i.ct
  %i.cw = add nsw i32 %i.cp, %.1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !96
  %i.da = zext i16 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.co, %i.da
  %i.dc = add nsw i32 %i.db, %i.cv
  %i.dd = sdiv i32 %i.dc, %.1
  %i.de = trunc i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv59.epil.init
  store i16 %i.de, ptr %i.df, align 2, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14nikon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [2 x [2 x i16]], align 2          ; 5 uses
  %i.d = alloca [2 x i16], align 2                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381768 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !194
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.h, i32 noundef 0), !call_target !105 ; 0 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !call_target !86
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !call_target !86 ; 2 uses
  %i.w = and i32 %i.q, 65535                      ; 3 uses
  %i.x = icmp eq i32 %i.w, 73
  %i.y = and i32 %i.v, 65535
  %i.z = icmp eq i32 %i.y, 88
  %or.cond = or i1 %i.x, %i.z
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 2110, i32 noundef 1), !call_target !105 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.af = icmp eq i32 %i.w, 70
  %spec.select = select i1 %i.af, i32 2, i32 0    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 381836 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !203
  %i.ai = icmp eq i32 %i.ah, 14
  %i.aj = add nuw nsw i32 %spec.select, 3
  %.1 = select i1 %i.ai, i32 %i.aj, i32 %spec.select
  call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.c, i32 noundef 4)
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !203
  %i.al = shl nuw i32 1, %i.ak
  %i.am = and i32 %i.al, 32767                    ; 4 uses
  %i.an = icmp eq i32 %i.w, 68
  br i1 %i.an, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %trunc = trunc i32 %i.v to i16
  switch i16 %trunc, label %bb.g [
    i16 64, label %bb.e
    i16 32, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i32 %i.am, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.067 = phi i32 [ %i.ao, %bb.e ], [ %i.am, %bb.d ]
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !194
  %i.ar = add nsw i64 %i.aq, 562
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %i.ar, i32 noundef 0), !call_target !105 ; 0 uses
  %i.aw = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ax = zext i16 %i.aw to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c
  %.168 = phi i32 [ %.067, %bb.f ], [ %i.am, %bb.d ], [ %i.am, %bb.c ] ; 3 uses
  %.065 = phi i32 [ %i.ax, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.az = icmp samesign ugt i32 %.168, 2
  br i1 %i.az, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.g
  %1 = zext nneg i32 %.168 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !96
  %i.bd = getelementptr i8, ptr %i.ba, i64 -2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !96
  %i.bf = icmp eq i16 %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %.critedge.loopexit.split.loop.exit171

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bg = icmp sgt i64 %indvars.iv, 3
  br i1 %i.bg, label %.lr.ph, label %.critedge, !llvm.loop !208

.critedge.loopexit.split.loop.exit171:            ; preds = %.lr.ph
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.split.loop.exit171, %bb.g
  %.2.lcssa = phi i32 [ %.168, %bb.g ], [ %2, %.critedge.loopexit.split.loop.exit171 ], [ 2, %bb.h ]
  %i.bh = zext nneg i32 %.1 to i64
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw14nikon_load_rawEvE10nikon_tree, i64 %i.bh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !97
  %i.bj = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !202
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef %i.bm, i32 noundef 0), !call_target !105 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 10 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 0, ptr %i.bu, align 4, !tbaa !81
  store i32 0, ptr %i.bs, align 8, !tbaa !82
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !170
  %.not137 = icmp eq i16 %i.bw, 0
  br i1 %.not137, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %.critedge
  %.not = icmp ne i32 %.065, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 381848 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 193784
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph134, %._crit_edge
  %.064133 = phi i32 [ 0, %.lr.ph134 ], [ %i.id, %._crit_edge ] ; 4 uses
  %.3132 = phi i32 [ %.2.lcssa, %.lr.ph134 ], [ %.4, %._crit_edge ] ; 2 uses
  %.069131 = phi i16 [ 0, %.lr.ph134 ], [ %.170, %._crit_edge ]
  %.071130 = phi ptr [ %i.bj, %.lr.ph134 ], [ %.273, %._crit_edge ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp eq i32 %.064133, %.065
  %or.cond82 = and i1 %.not, %i.cb
  br i1 %or.cond82, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.071130)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !97
  %i.cc = invoke noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = add nsw i32 %.3132, 32
  br label %bb.o

.loopexit:                                        ; preds = %.lr.ph125, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.s, %.lr.ph122
  %lpad.loopexit108 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.am, %bb.w, %bb.af
  %lpad.loopexit111 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.k, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %.172 = phi ptr [ %.273, %.loopexit ], [ %.273, %.loopexit.split-lp.loopexit ], [ %.273, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.071130, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit108, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit111, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ce = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.cf = call ptr @__cxa_begin_catch(ptr %i.ce) #15 ; 0 uses
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.172)
          to label %bb.n unwind label %bb.ao

bb.n:                                             ; preds = %.loopexit.split-lp
  invoke void @__cxa_rethrow() #16
          to label %bb.ar unwind label %bb.ao

bb.o:                                             ; preds = %bb.m, %bb.j
  %.273 = phi ptr [ %i.cc, %bb.m ], [ %.071130, %bb.j ] ; 7 uses
  %.170 = phi i16 [ 16, %bb.m ], [ %.069131, %bb.j ] ; 2 uses
  %.4 = phi i32 [ %i.cd, %bb.m ], [ %.3132, %bb.j ] ; 2 uses
  %i.cg = load i16, ptr %i.by, align 2, !tbaa !123
  %.not138 = icmp eq i16 %i.cg, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %.273, i64 2
  %i.ci = and i32 %.064133, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cj
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph129, %bb.an
  %indvars.iv.a = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next.a, %bb.an ] ; 7 uses
  %i.cl = load i16, ptr %.273, align 2, !tbaa !96 ; 2 uses
  %i.cm = zext i16 %i.cl to i32                   ; 3 uses
  %i.cn = add i16 %i.cl, -26
  %or.cond106 = icmp ult i16 %i.cn, -25
  br i1 %or.cond106, label %_ZN6LibRaw10getbithuffEiPt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !11 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !81 ; 3 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !74
  %.not25.i = icmp eq i32 %i.ct, 0
  br i1 %.not25.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cu = icmp samesign ult i32 %i.cq, %i.cm
  br i1 %i.cu, label %.lr.ph122, label %.critedge.loopexit.i

.lr.ph122:                                        ; preds = %.lr.ph.i, %bb.t
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit, !inline_history !125 ; 3 uses

.noexc:                                           ; preds = %.lr.ph122
  %.not21.i = icmp eq i32 %i.cz, -1
  br i1 %.not21.i, label %..critedge.loopexit_crit_edge.i, label %bb.r

..critedge.loopexit_crit_edge.i:                  ; preds = %.noexc
  %.pre.pre.i = load ptr, ptr %i.br, align 8, !tbaa !11
  br label %.critedge.loopexit.i

bb.r:                                             ; preds = %.noexc
  %i.da = load i32, ptr %i.bz, align 8, !tbaa !93
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp eq i32 %i.cz, 255
  %or.cond.i = and i1 %i.dc, %i.db
  br i1 %or.cond.i, label %bb.s, label %.critedge24.i

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !84
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit, !inline_history !125

.noexc85:                                         ; preds = %bb.s
  %i.di = icmp ne i32 %i.dh, 0                    ; 2 uses
  %i.dj = zext i1 %i.di to i32
  %i.dk = load ptr, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %i.dj, ptr %i.dl, align 8, !tbaa !74
  br i1 %i.di, label %.critedge.loopexit.i, label %bb.t

.critedge24.i:                                    ; preds = %bb.r
  %i.dm = load ptr, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 0, ptr %i.dn, align 8, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %.critedge24.i, %.noexc85
  %i.do = phi ptr [ %i.dm, %.critedge24.i ], [ %i.dk, %.noexc85 ] ; 4 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !82
  %i.dq = shl i32 %i.dp, 8
  %i.dr = and i32 %i.cz, 255
  %i.ds = or disjoint i32 %i.dq, %i.dr
  store i32 %i.ds, ptr %i.do, align 8, !tbaa !82
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !81
  %i.dv = add nsw i32 %i.du, 8                    ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !81
  %i.dw = icmp slt i32 %i.dv, %i.cm
  br i1 %i.dw, label %.lr.ph122, label %.critedge.loopexit.i, !llvm.loop !94

.critedge.loopexit.i:                             ; preds = %bb.t, %.noexc85, %.lr.ph.i, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.co, %.lr.ph.i ], [ %i.do, %bb.t ], [ %i.dk, %.noexc85 ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !81
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.dx = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.cq, %.preheader.i ] ; 3 uses
end_hunk_0
