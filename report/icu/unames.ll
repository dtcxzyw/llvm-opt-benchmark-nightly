Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unames?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_78L10getExtNameEjPct:bb.a
  %i.ad = ashr i32 %.04568, 4                     ; 2 uses
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %._crit_edge72.loopexit, label %.lr.ph71, !llvm.loop !50

._crit_edge72.loopexit:                           ; preds = %.lr.ph71
  %i.ae = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 4)
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %bb.j
  %.044.lcssa = phi i32 [ 4, %bb.j ], [ %i.ae, %._crit_edge72.loopexit ] ; 3 uses
  %.not89 = icmp eq i16 %.3, 0
  br i1 %.not89, label %._crit_edge80.thread, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %._crit_edge72
  %i.af = sext i32 %.044.lcssa to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %indvars.iv = phi i64 [ %i.af, %.lr.ph79.preheader ], [ %indvars.iv.next, %.lr.ph79 ] ; 2 uses
  %.176 = phi i32 [ %0, %.lr.ph79.preheader ], [ %i.an, %.lr.ph79 ] ; 2 uses
  %.475 = phi i16 [ %.3, %.lr.ph79.preheader ], [ %i.ao, %.lr.ph79 ]
  %i.ag = and i32 %.176, 15                       ; 3 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  %i.ai = or disjoint i32 %i.ag, 48
  %i.aj = add nuw nsw i32 %i.ag, 55
  %i.ak = select i1 %i.ah, i32 %i.ai, i32 %i.aj
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.352, i64 %indvars.iv.next
  store i8 %i.al, ptr %i.am, align 1, !tbaa !25
  %i.an = ashr i32 %.176, 4                       ; 2 uses
  %i.ao = add i16 %.475, -1                       ; 3 uses
  %i.ap = icmp ne i32 %i.an, 0
  %i.aq = icmp sgt i64 %indvars.iv, 1
  %or.cond = or i1 %i.ap, %i.aq
  %i.ar = icmp ne i16 %i.ao, 0
  %i.as = select i1 %or.cond, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph79, label %._crit_edge80, !llvm.loop !51

._crit_edge80:                                    ; preds = %.lr.ph79
  %i.at = icmp eq i16 %i.ao, 0
  br i1 %i.at, label %._crit_edge80.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge80
  %i.au = zext nneg i32 %.044.lcssa to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.352, i64 %i.au
  store i8 62, ptr %i.av, align 1, !tbaa !25
  br label %._crit_edge80.thread

._crit_edge80.thread:                             ; preds = %._crit_edge72, %bb.k, %._crit_edge80
  %i.aw = trunc i32 %.044.lcssa to i16
  %i.ax = add i16 %.046.lcssa, %i.aw
  ret i16 %i.ax
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define i32 @u_getISOComment_78(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ne i32 %2, 0
  %i.f = icmp eq ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %3, align 4, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call i32 @u_terminateChars_78(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define i32 @u_charFromName_78(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [8 x i16], align 16               ; 6 uses
  %i.c = alloca [8 x ptr], align 16               ; 5 uses
  %i.d = alloca [8 x ptr], align 16               ; 7 uses
  %i.e = alloca [120 x i8], align 16              ; 8 uses
  %i.f = alloca [120 x i8], align 16              ; 12 uses
  %3 = alloca %"struct.icu_78::FindName", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.e, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.f, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 4, !tbaa !11
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %0, 3
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %1, align 1, !tbaa !25
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call fastcc noundef signext i8 @_ZN6icu_78L12isDataLoadedEP10UErrorCode(ptr noundef %2)
  %.not98 = icmp eq i8 %i.n, 0
  br i1 %.not98, label %.loopexit, label %.preheader114

.preheader114:                                    ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %.088138 = phi ptr [ %i.p, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %i.o = load i8, ptr %.088138, align 1, !tbaa !25 ; 3 uses
  %.not99 = icmp eq i8 %i.o, 0
  br i1 %.not99, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader114
  %i.p = getelementptr inbounds nuw i8, ptr %.088138, i64 1
  %i.q = tail call signext i8 @uprv_toupper_78(i8 noundef signext %i.o)
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.q, ptr %i.r, align 1, !tbaa !25
  %i.s = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.o)
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.s, ptr %i.t, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 120
  br i1 %exitcond.not, label %.loopexit.sink.split, label %.preheader114, !llvm.loop !52

bb.g:                                             ; preds = %.preheader114
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 0, ptr %i.v, align 1, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 0, ptr %i.w, align 1, !tbaa !25
  %i.x = load i8, ptr %i.f, align 16, !tbaa !25
  %i.y = icmp eq i8 %i.x, 60
  br i1 %i.y, label %bb.h, label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq i32 %0, 2
  br i1 %i.z, label %bb.i, label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.u, -1                    ; 6 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = icmp eq i8 %i.ad, 62
  br i1 %i.ae, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  %.old7 = icmp ugt i32 %i.aa, 2
  br i1 %.old7, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.j, %.preheader
  %indvars.iv173 = phi i64 [ %i.af, %.preheader ], [ %i.ab, %bb.j ]
  %i.af = add nsw i64 %indvars.iv173, -1          ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = icmp ne i8 %i.ah, 45
  %.wide = icmp ugt i64 %i.af, 2
  %or.cond8 = and i1 %i.ai, %.wide
  br i1 %or.cond8, label %.preheader, label %.critedge.thread.loopexit, !llvm.loop !53

.critedge:                                        ; preds = %bb.j
  %i.aj = icmp eq i32 %i.aa, 2
  br i1 %i.aj, label %.critedge.thread, label %.loopexit.sink.split

.critedge.thread.loopexit:                        ; preds = %.preheader
  %i.ak = trunc i64 %i.af to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge
  %.281106 = phi i32 [ 2, %.critedge ], [ %i.ak, %.critedge.thread.loopexit ] ; 4 uses
  %i.al = zext i32 %.281106 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = icmp eq i8 %i.an, 45
  %i.ap = add i32 %i.u, -3
  %i.aq = sub i32 %i.ap, %.281106
  %i.ar = icmp ult i32 %i.aq, 8
  %or.cond6 = and i1 %i.ao, %i.ar
  br i1 %or.cond6, label %bb.k, label %.loopexit.sink.split

bb.k:                                             ; preds = %.critedge.thread
  store i8 0, ptr %i.am, align 1, !tbaa !25
  %i.as = add i32 %.281106, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.as)
  %.3266 = add i32 %.281106, 1                    ; 2 uses
  %i.at = icmp ult i32 %.3266, %i.aa
  br i1 %i.at, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %bb.n
  %.3 = add i32 %.3268, 1                         ; 2 uses
  %i.au = icmp ult i32 %.3, %i.aa
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !54

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.3268 = phi i32 [ %.3, %bb.l ], [ %.3266, %bb.k ] ; 2 uses
  %.077267 = phi i32 [ %.178, %bb.l ], [ 0, %bb.k ]
  %i.av = zext i32 %.3268 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25  ; 3 uses
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = add i8 %i.ax, -48
  %or.cond103 = icmp ult i8 %i.az, 10
  br i1 %or.cond103, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ba = add i8 %i.ax, -97
  %or.cond104 = icmp ult i8 %i.ba, 6
  br i1 %or.cond104, label %bb.n, label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %.sink246 = phi i32 [ -48, %.lr.ph ], [ -87, %bb.m ]
  %i.bb = shl i32 %.077267, 4
  %i.bc = add i32 %i.bb, %.sink246
  %.178 = add i32 %i.bc, %i.ay                    ; 3 uses
  %i.bd = icmp sgt i32 %.178, 1114111
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.077.lcssa = phi i32 [ 0, %bb.k ], [ %.178, %bb.l ] ; 2 uses
  %i.be = tail call fastcc noundef zeroext i8 @_ZN6icu_78L10getCharCatEi(i32 noundef %.077.lcssa)
  %i.bf = zext i32 %umax to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bf
  store i8 0, ptr %i.bg, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 59 uses
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 %i.bi, 7955443211351191157
  %i.bk = getelementptr i8, ptr %i.bh, i64 3
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 %i.bl, 28259022526837619
  %i.bn = or i64 %i.bj, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not102 = icmp eq i32 %i.bp, 0
  br i1 %.not102, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %._crit_edge
  %.0145.lcssa.wide = phi i32 [ 0, %._crit_edge ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 6, %bb.u ], [ 7, %bb.v ], [ 8, %bb.w ], [ 9, %bb.x ], [ 10, %bb.y ], [ 11, %bb.z ], [ 12, %bb.aa ], [ 13, %bb.ab ], [ 14, %bb.ac ], [ 15, %bb.ad ], [ 16, %bb.ae ], [ 17, %bb.af ], [ 18, %bb.ag ], [ 19, %bb.ah ], [ 20, %bb.ai ], [ 21, %bb.aj ], [ 22, %bb.ak ], [ 23, %bb.al ], [ 24, %bb.am ], [ 25, %bb.an ], [ 26, %bb.ao ], [ 27, %bb.ap ], [ 28, %bb.aq ], [ 29, %bb.ar ], [ 30, %bb.as ], [ 31, %bb.at ], [ 32, %bb.au ]
  %i.bq = zext i8 %i.be to i32
  %i.br = icmp eq i32 %.0145.lcssa.wide, %i.bq
  br i1 %i.br, label %.loopexit, label %.loopexit.sink.split

bb.p:                                             ; preds = %._crit_edge
  %i.bs = load i128, ptr %i.bh, align 1
  %i.bt = xor i128 %i.bs, 152058775483562005317584794628922568821
  %i.bu = getelementptr i8, ptr %i.bh, i64 16
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i128
  %i.bx = or i128 %i.bt, %i.bw
  %i.by = icmp ne i128 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not102.1 = icmp eq i32 %i.bz, 0
  br i1 %.not102.1, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i128, ptr %i.bh, align 1
  %i.cb = xor i128 %i.ca, 152058775483562005317584794628923027308
  %i.cc = getelementptr i8, ptr %i.bh, i64 16
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i128
  %i.cf = or i128 %i.cb, %i.ce
  %i.cg = icmp ne i128 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %.not102.2 = icmp eq i32 %i.ch, 0
  br i1 %.not102.2, label %bb.o, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load i128, ptr %i.bh, align 1
  %i.cj = xor i128 %i.ci, 152058775483562005317584794573205694836
  %i.ck = getelementptr i8, ptr %i.bh, i64 16
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i128
  %i.cn = or i128 %i.cj, %i.cm
  %i.co = icmp ne i128 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %.not102.3 = icmp eq i32 %i.cp, 0
  br i1 %.not102.3, label %bb.o, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = load i128, ptr %i.bh, align 1
  %i.cr = icmp ne i128 %i.cq, 593979591732664084204632485665206125
  %i.cs = zext i1 %i.cr to i32
  %.not102.4 = icmp eq i32 %i.cs, 0
  br i1 %.not102.4, label %bb.o, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = load i64, ptr %i.bh, align 1
  %i.cu = xor i64 %i.ct, 7308251971015177327
  %i.cv = getelementptr i8, ptr %i.bh, i64 5
  %i.cw = load i64, ptr %i.cv, align 1
  %i.cx = xor i64 %i.cw, 32199698188430368
  %i.cy = or i64 %i.cu, %i.cx
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not102.5 = icmp eq i32 %i.da, 0
  br i1 %.not102.5, label %bb.o, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = load i128, ptr %i.bh, align 1
  %i.dc = xor i128 %i.db, 142821293430488798095289473538120904558
  %i.dd = getelementptr i8, ptr %i.bh, i64 16
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = zext i8 %i.de to i128
  %i.dg = or i128 %i.dc, %i.df
  %i.dh = icmp ne i128 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not102.6 = icmp eq i32 %i.di, 0
  br i1 %.not102.6, label %bb.o, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = load i64, ptr %i.bh, align 1
  %i.dk = xor i64 %i.dj, 7956017139123711589
  %i.dl = getelementptr i8, ptr %i.bh, i64 7
  %i.dm = load i64, ptr %i.dl, align 1
  %i.dn = xor i64 %i.dm, 30243585276274542
  %i.do = or i64 %i.dk, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %.not102.7 = icmp eq i32 %i.dq, 0
  br i1 %.not102.7, label %bb.o, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load i128, ptr %i.bh, align 1
  %i.ds = xor i128 %i.dr, 146762286384970928912371629185672507235
  %i.dt = getelementptr i8, ptr %i.bh, i64 7
  %i.du = load i128, ptr %i.dt, align 1
  %i.dv = xor i128 %i.du, 557895677462846867559724506008282990
  %i.dw = or i128 %i.ds, %i.dv
  %i.dx = icmp ne i128 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %.not102.8 = icmp eq i32 %i.dy, 0
  br i1 %.not102.8, label %bb.o, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = load i128, ptr %i.bh, align 1
  %i.ea = xor i128 %i.dz, 156091486421469099763153504946199160164
  %i.eb = getelementptr i8, ptr %i.bh, i64 5
  %i.ec = load i128, ptr %i.eb, align 1
  %i.ed = xor i128 %i.ec, 593978163478696016689179028642360417
  %i.ee = or i128 %i.ea, %i.ed
  %i.ef = icmp ne i128 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %.not102.9 = icmp eq i32 %i.eg, 0
  br i1 %.not102.9, label %bb.o, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = load i64, ptr %i.bh, align 1
  %i.ei = xor i64 %i.eh, 7935468323497862508
  %i.ej = getelementptr i8, ptr %i.bh, i64 6
  %i.ek = load i64, ptr %i.ej, align 1
  %i.el = xor i64 %i.ek, 32199620762627616
  %i.em = or i64 %i.ei, %i.el
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = zext i1 %i.en to i32
  %.not102.10 = icmp eq i32 %i.eo, 0
  br i1 %.not102.10, label %bb.o, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = load i64, ptr %i.bh, align 1
  %i.eq = xor i64 %i.ep, 8461736425575445615
  %i.er = getelementptr i8, ptr %i.bh, i64 5
  %i.es = load i64, ptr %i.er, align 1
  %i.et = xor i64 %i.es, 32199620762627616
  %i.eu = or i64 %i.eq, %i.et
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %.not102.11 = icmp eq i32 %i.ew, 0
  br i1 %.not102.11, label %bb.o, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = load i128, ptr %i.bh, align 1
  %i.ey = icmp ne i128 %i.ex, 594182409964150978733631820781416563
  %i.ez = zext i1 %i.ey to i32
  %.not102.12 = icmp eq i32 %i.ez, 0
  br i1 %.not102.12, label %bb.o, label %bb.ab

end_hunk_0
begin_hunk_1_@uchar_swapNames_78:bb.a
  %i.fv = sub i32 %.0263331, %i.fu                ; 2 uses
  %.not295323 = icmp eq i32 %i.ft, 0
  br i1 %.not295323, label %.loopexit304, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.u, %bb.w
  %.1326 = phi ptr [ %.2, %bb.w ], [ %i.fo, %bb.u ] ; 3 uses
  %.1260325 = phi ptr [ %.2261, %bb.w ], [ %i.fj, %bb.u ] ; 3 uses
  %.1266324 = phi i32 [ %i.gk, %bb.w ], [ %i.ft, %bb.u ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.1260325, i64 1 ; 2 uses
  %i.fx = load i8, ptr %.1260325, align 1, !tbaa !25
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !25
  %i.gb = getelementptr inbounds nuw i8, ptr %.1326, i64 1 ; 2 uses
  store i8 %i.ga, ptr %.1326, align 1, !tbaa !25
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fy
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !29
  %.not296 = icmp eq i16 %i.gd, -2
  br i1 %.not296, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph328
  %i.ge = getelementptr inbounds nuw i8, ptr %.1260325, i64 2
  %i.gf = load i8, ptr %i.fw, align 1, !tbaa !25
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !25
  %i.gj = getelementptr inbounds nuw i8, ptr %.1326, i64 2
  store i8 %i.gi, ptr %i.gb, align 1, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph328, %bb.v
  %.sink = phi i32 [ -2, %bb.v ], [ -1, %.lr.ph328 ]
  %.2261 = phi ptr [ %i.ge, %bb.v ], [ %i.fw, %.lr.ph328 ] ; 2 uses
  %.2 = phi ptr [ %i.gj, %bb.v ], [ %i.gb, %.lr.ph328 ] ; 2 uses
  %i.gk = add i32 %.1266324, %.sink               ; 2 uses
  %.not295 = icmp eq i32 %i.gk, 0
  br i1 %.not295, label %.loopexit304, label %.lr.ph328, !llvm.loop !96

._crit_edge336:                                   ; preds = %.loopexit304, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge336, %bb.s
  %i.gl = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.gm = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !16
  %i.gp = tail call noundef i32 %i.gl(i32 noundef %i.go) ; 2 uses
  %i.gq = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gm
  %i.gs = tail call noundef i32 %i.gq(ptr noundef nonnull %0, ptr noundef nonnull %i.gn, i32 noundef 4, ptr noundef %i.gr, ptr noundef nonnull %4) ; 0 uses
  %i.gt = add nuw i32 %i.aw, 4                    ; 2 uses
  %.not349 = icmp eq i32 %i.gp, 0
  br i1 %.not349, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph340, %bb.ah
  %.5338 = phi i32 [ 0, %.lr.ph340 ], [ %i.ir, %bb.ah ] ; 4 uses
  %.1272337 = phi i32 [ %i.gt, %.lr.ph340 ], [ %i.he, %bb.ah ] ; 3 uses
  %i.gv = icmp ugt i32 %.1272337, %i.aq
  br i1 %i.gv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.aq, i32 noundef %.5338)
  store i32 8, ptr %4, align 4, !tbaa !11
  br label %.critedge298

bb.aa:                                            ; preds = %bb.y
  %i.gw = zext nneg i32 %.1272337 to i64          ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gw ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gw ; 4 uses
  %i.gz = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 10 ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !21
  %i.hc = tail call noundef zeroext i16 %i.gz(i16 noundef zeroext %i.hb)
  %i.hd = zext i16 %i.hc to i32
  %i.he = add nuw i32 %.1272337, %i.hd            ; 4 uses
  %i.hf = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.hg = tail call noundef i32 %i.hf(ptr noundef nonnull %0, ptr noundef nonnull %i.gx, i32 noundef 8, ptr noundef %i.gy, ptr noundef nonnull %4) ; 0 uses
  %i.hh = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 10
  %i.hj = tail call noundef i32 %i.hh(ptr noundef nonnull %0, ptr noundef nonnull %i.ha, i32 noundef 2, ptr noundef nonnull %i.hi, ptr noundef nonnull %4) ; 0 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hl = load i8, ptr %i.hk, align 4, !tbaa !26  ; 2 uses
  switch i8 %i.hl, label %bb.ag [
    i8 0, label %bb.ab
    i8 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.hm = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.ho = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hn) #12
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.hr = tail call noundef i32 %i.hm(ptr noundef nonnull %0, ptr noundef nonnull %i.hn, i32 noundef %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %4) ; 0 uses
  %i.hs = load i32, ptr %4, align 4, !tbaa !11
  %i.ht = icmp slt i32 %i.hs, 1
  br i1 %i.ht, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %.5338)
  br label %.critedge298

bb.ad:                                            ; preds = %bb.aa
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 9
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !27  ; 2 uses
  %i.hw = zext i8 %i.hv to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 2 uses
  %i.hz = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.ia = shl nuw nsw i32 %i.hw, 1
  %i.ib = tail call noundef i32 %i.hz(ptr noundef nonnull %0, ptr noundef nonnull %i.hx, i32 noundef %i.ia, ptr noundef nonnull %i.hy, ptr noundef nonnull %4) ; 0 uses
  %i.ic = zext i8 %i.hv to i64                    ; 2 uses
  %.idx = shl nuw nsw i64 %i.ic, 1                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ic
  %i.if = add nuw nsw i64 %i.gw, 12
  %i.ig = add nuw nsw i64 %i.if, %.idx
  %i.ih = trunc nuw i64 %i.ig to i32              ; 2 uses
  %.not292419 = icmp eq i32 %i.he, %i.ih
  br i1 %.not292419, label %.critedge, label %.lr.ph422

.lr.ph422:                                        ; preds = %bb.ad
  %i.ii = sub i32 %i.he, %i.ih
  %i.ij = zext i32 %i.ii to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %.not292 = icmp eq i64 %i.ik, 0
  br i1 %.not292, label %.critedge, label %bb.af, !llvm.loop !97

bb.af:                                            ; preds = %.lr.ph422, %bb.ae
  %indvars.iv376420 = phi i64 [ %i.ij, %.lr.ph422 ], [ %i.ik, %bb.ae ] ; 2 uses
  %i.ik = add nsw i64 %indvars.iv376420, -1       ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !25
  %.not293 = icmp eq i8 %i.im, 0
  br i1 %.not293, label %.critedge.split.loop.exit407, label %bb.ae, !llvm.loop !97

.critedge.split.loop.exit407:                     ; preds = %bb.af
  %i.in = trunc nuw i64 %indvars.iv376420 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ad, %.critedge.split.loop.exit407
  %.1264.lcssa = phi i32 [ %i.in, %.critedge.split.loop.exit407 ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  %i.io = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.ip = tail call noundef i32 %i.io(ptr noundef nonnull %0, ptr noundef nonnull %i.id, i32 noundef %.1264.lcssa, ptr noundef nonnull %i.ie, ptr noundef nonnull %4) ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.iq = zext i8 %i.hl to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.iq, i32 noundef %.5338)
  store i32 16, ptr %4, align 4, !tbaa !11
  br label %.critedge298

bb.ah:                                            ; preds = %.critedge, %bb.ab
  %i.ir = add nuw i32 %.5338, 1                   ; 2 uses
  %exitcond379.not = icmp eq i32 %i.ir, %i.gp
  br i1 %exitcond379.not, label %._crit_edge341, label %bb.y, !llvm.loop !98

._crit_edge341:                                   ; preds = %bb.ah, %bb.x
  %.1272.lcssa = phi i32 [ %i.gt, %bb.x ], [ %i.he, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %._crit_edge341
  %.3274 = phi i32 [ %.1272.lcssa, %._crit_edge341 ], [ %i.bi, %bb.k ], [ %i.br, %bb.l ]
  %i.is = add nsw i32 %.3274, %i.f
  br label %bb.ai

.critedge298:                                     ; preds = %bb.ac, %bb.ag, %bb.z, %bb.r, %bb.q, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge298, %bb.a, %bb.b, %.loopexit, %bb.j, %._crit_edge381
  %.1277 = phi i32 [ 0, %._crit_edge381 ], [ %i.is, %.loopexit ], [ 0, %.critedge298 ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1277
}

declare i32 @udata_swapDataHeader_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare signext i16 @udata_readInt16_78(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12makeTokenMapPK12UDataSwapperPstPhP10UErrorCode(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = load i32, ptr %4, align 4, !tbaa !11
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %vector.body, label %bb.c

vector.body:                                      ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %3, align 1, !tbaa !25
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.k, align 1, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.l, align 1, !tbaa !25
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.m, align 1, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.n, align 1, !tbaa !25
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.o, align 1, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.p, align 1, !tbaa !25
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.q, align 1, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.r, align 1, !tbaa !25
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.s, align 1, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.t, align 1, !tbaa !25
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.u, align 1, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.v, align 1, !tbaa !25
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.w, align 1, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.x, align 1, !tbaa !25
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.y, align 1, !tbaa !25
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.z = icmp ugt i16 %2, 1
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %spec.store.select = tail call i16 @llvm.umin.i16(i16 %2, i16 256)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext nneg i16 %spec.store.select to i64 ; 2 uses
  br label %bb.d

.lr.ph47.preheader:                               ; preds = %bb.h
  %5 = add nsw i64 %wide.trip.count, -1           ; 3 uses
  %xtraiter = and i64 %5, 1
  %6 = icmp eq i16 %2, 2
  br i1 %6, label %.lr.ph47.epil.preheader, label %.lr.ph47.preheader.new

.lr.ph47.preheader.new:                           ; preds = %.lr.ph47.preheader
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph47

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29
  %i.ad = icmp eq i16 %i.ac, -1
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc i64 %indvars.iv to i8
  store i8 %i.ae, ptr %i.b, align 1, !tbaa !25
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ag = call noundef i32 %i.af(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %4) ; 0 uses
  %i.ah = load i32, ptr %4, align 4, !tbaa !11
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = and i32 %i.aj, 65535
  %i.al = load i8, ptr %i.f, align 1, !tbaa !38
  %i.am = zext i8 %i.al to i32
  call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, i32 noundef %i.ak, i32 noundef %i.am)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.an = load i8, ptr %i.c, align 1, !tbaa !25   ; 2 uses
  %i.ao = load i8, ptr %i.b, align 1, !tbaa !25
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !25
  %i.ar = zext i8 %i.an to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 1, ptr %i.as, align 1, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph47.preheader, label %bb.d, !llvm.loop !103

.lr.ph47:                                         ; preds = %23, %.lr.ph47.preheader.new
  %indvars.iv52 = phi i64 [ 1, %.lr.ph47.preheader.new ], [ %indvars.iv.next53.1, %23 ] ; 3 uses
  %.046 = phi i16 [ 1, %.lr.ph47.preheader.new ], [ %.2.1, %23 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph47.preheader.new ], [ %niter.next.1, %23 ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv52 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.preheader40, label %.lr.ph47.1

.preheader40:                                     ; preds = %.lr.ph47, %.preheader40
  %.1 = phi i16 [ %10, %.preheader40 ], [ %.046, %.lr.ph47 ] ; 3 uses
  %7 = zext i16 %.1 to i64
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !25
  %.not38 = icmp eq i8 %9, 0
  %10 = add i16 %.1, 1                            ; 2 uses
  br i1 %.not38, label %11, label %.preheader40, !llvm.loop !104

11:                                               ; preds = %.preheader40
  %12 = trunc i16 %.1 to i8
  store i8 %12, ptr %i.at, align 1, !tbaa !25
  br label %.lr.ph47.1

.lr.ph47.1:                                       ; preds = %.lr.ph47, %11
  %.2 = phi i16 [ %10, %11 ], [ %.046, %.lr.ph47 ] ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv52
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 2 uses
  %15 = load i8, ptr %14, align 1, !tbaa !25
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %.preheader40.1, label %23

.preheader40.1:                                   ; preds = %.lr.ph47.1, %.preheader40.1
  %.1.1 = phi i16 [ %20, %.preheader40.1 ], [ %.2, %.lr.ph47.1 ] ; 3 uses
  %17 = zext i16 %.1.1 to i64
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %.not38.1 = icmp eq i8 %19, 0
  %20 = add i16 %.1.1, 1                          ; 2 uses
  br i1 %.not38.1, label %21, label %.preheader40.1, !llvm.loop !104

21:                                               ; preds = %.preheader40.1
  %22 = trunc i16 %.1.1 to i8
  store i8 %22, ptr %14, align 1, !tbaa !25
  br label %23

23:                                               ; preds = %21, %.lr.ph47.1
  %.2.1 = phi i16 [ %20, %21 ], [ %.2, %.lr.ph47.1 ] ; 2 uses
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit65.unr-lcssa, label %.lr.ph47, !llvm.loop !105

.loopexit.loopexit65.unr-lcssa:                   ; preds = %23
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph47.epil.preheader

.lr.ph47.epil.preheader:                          ; preds = %.loopexit.loopexit65.unr-lcssa, %.lr.ph47.preheader
  %indvars.iv52.epil.init = phi i64 [ 1, %.lr.ph47.preheader ], [ %indvars.iv.next53.1, %.loopexit.loopexit65.unr-lcssa ]
  %.046.epil.init = phi i16 [ 1, %.lr.ph47.preheader ], [ %.2.1, %.loopexit.loopexit65.unr-lcssa ]
  %lcmp.mod67 = trunc i64 %5 to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv52.epil.init ; 2 uses
  %25 = load i8, ptr %24, align 1, !tbaa !25
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %.preheader40.epil, label %.loopexit

.preheader40.epil:                                ; preds = %.lr.ph47.epil.preheader, %.preheader40.epil
  %.1.epil = phi i16 [ %30, %.preheader40.epil ], [ %.046.epil.init, %.lr.ph47.epil.preheader ] ; 3 uses
  %27 = zext i16 %.1.epil to i64
  %28 = getelementptr inbounds nuw i8, ptr %i.a, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !25
  %.not38.epil = icmp eq i8 %29, 0
  %30 = add i16 %.1.epil, 1
  br i1 %.not38.epil, label %31, label %.preheader40.epil, !llvm.loop !104

31:                                               ; preds = %.preheader40.epil
  %32 = trunc i16 %.1.epil to i8
  store i8 %32, ptr %24, align 1, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit65.unr-lcssa, %31, %.lr.ph47.epil.preheader, %vector.body, %bb.c, %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare i32 @udata_swapInvStringBlock_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN6icu_78L18expandGroupLengthsEPKhPtS2_(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.i
  %.02749 = phi i16 [ 0, %bb.a ], [ %.2, %bb.i ]  ; 2 uses
  %.02848 = phi i16 [ 0, %bb.a ], [ %.129, %bb.i ] ; 4 uses
  %.03047 = phi i16 [ 0, %bb.a ], [ %.131, %bb.i ] ; 3 uses
  %.03246 = phi ptr [ %2, %bb.a ], [ %.133, %bb.i ] ; 5 uses
  %.03445 = phi ptr [ %1, %bb.a ], [ %.135, %bb.i ] ; 5 uses
  %.03644 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.03644, i64 1 ; 2 uses
  %i.b = load i8, ptr %.03644, align 1, !tbaa !25 ; 5 uses
  %i.c = icmp samesign ugt i16 %.02749, 11
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i16 %.02749, 4
  %i.e = and i16 %i.d, 48
  %i.f = lshr i8 %i.b, 4
  %i.g = zext nneg i8 %i.f to i16
  %i.h = or disjoint i16 %i.e, 12
  %i.i = add nuw nsw i16 %i.h, %i.g
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i8 %i.b, -65
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i8 %i.b, 4
  %i.l = zext nneg i8 %i.k to i16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = and i8 %i.b, 63
  %narrow = add nuw nsw i8 %i.m, 12
  %i.n = zext nneg i8 %narrow to i16              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03445, i64 2
  store i16 %.02848, ptr %.03445, align 2, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %.03246, i64 2
  store i16 %i.n, ptr %.03246, align 2, !tbaa !29
  %i.q = add i16 %.02848, %i.n
  %i.r = add nuw nsw i16 %.03047, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1.ph = phi i16 [ %i.l, %bb.e ], [ %i.i, %bb.c ] ; 2 uses
  %.0.ph = and i8 %i.b, 15                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03445, i64 2 ; 2 uses
  store i16 %.02848, ptr %.03445, align 2, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %.03246, i64 2 ; 2 uses
  store i16 %.1.ph, ptr %.03246, align 2, !tbaa !29
  %i.u = add i16 %.1.ph, %.02848                  ; 3 uses
  %i.v = add nuw nsw i16 %.03047, 1
  %i.w = zext nneg i8 %.0.ph to i16               ; 4 uses
  %i.x = icmp samesign ult i8 %.0.ph, 12
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.03445, i64 4
  store i16 %i.u, ptr %i.s, align 2, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %.03246, i64 4
  store i16 %i.w, ptr %i.t, align 2, !tbaa !29
  %i.aa = add i16 %i.u, %i.w
  %i.ab = add nuw nsw i16 %.03047, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.135 = phi ptr [ %i.y, %bb.h ], [ %i.s, %bb.g ], [ %i.o, %bb.f ]
  %.133 = phi ptr [ %i.z, %bb.h ], [ %i.t, %bb.g ], [ %i.p, %bb.f ]
  %.131 = phi i16 [ %i.ab, %bb.h ], [ %i.v, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %.129 = phi i16 [ %i.aa, %bb.h ], [ %i.u, %bb.g ], [ %i.q, %bb.f ]
  %.2 = phi i16 [ %i.w, %bb.h ], [ %i.w, %bb.g ], [ 0, %bb.f ]
  %i.ac = icmp ult i16 %.131, 32
  br i1 %i.ac, label %bb.b, label %bb.j, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare ptr @udata_openChoice_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZN6icu_78L12isAcceptableEPvPKcS2_PK9UDataInfo(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #8 {
bb.a:
  %i.a = load i16, ptr %3, align 2, !tbaa !107
  %i.b = icmp ugt i16 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i8, ptr %i.c, align 2, !tbaa !108
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !109
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i8, ptr %i.i, align 2, !tbaa !25
  %i.k = icmp eq i8 %i.j, 117
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !25
  %i.n = icmp eq i8 %i.m, 110
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !25
  %i.q = icmp eq i8 %i.p, 97
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.s = load i8, ptr %i.r, align 1, !tbaa !25
  %i.t = icmp eq i8 %i.s, 109
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = load i8, ptr %i.u, align 2, !tbaa !25
  %i.w = icmp eq i8 %i.v, 1
  %i.x = zext i1 %i.w to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.y = phi i8 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.h ]
  ret i8 %i.y
}

declare ptr @udata_getMemory_78(ptr noundef) local_unnamed_addr #2

declare void @ucln_common_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef signext i8 @_ZN6icu_78L14unames_cleanupEv() #0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6icu_78L14uCharNamesDataE, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @udata_close_78(ptr noundef nonnull %i.a)
  store ptr null, ptr @_ZN6icu_78L14uCharNamesDataE, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13
  %.not1 = icmp eq ptr %i.b, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store atomic i32 0, ptr @_ZN6icu_78L18gCharNamesInitOnceE seq_cst, align 4
  store i32 0, ptr @_ZN6icu_78L14gMaxNameLengthE, align 4, !tbaa !16
  ret i8 1
}

declare void @udata_close_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i16 @_ZN6icu_78L17writeFactorSuffixEPKttPKcjPtPS3_S5_Pct(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext range(i16 0, 256) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef writeonly captures(address) %5, ptr nofree noundef writeonly captures(address) %6, ptr nofree noundef writeonly captures(none) %7, i16 noundef zeroext %8) unnamed_addr #3 {
bb.a:
  %i.a = add nsw i16 %1, -1                       ; 3 uses
  %.not73 = icmp eq i16 %i.a, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i16 %i.a to i64                     ; 6 uses
  %xtraiter = and i16 %i.a, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !29
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = urem i32 %3, %i.e
  %i.g = trunc nuw i32 %i.f to i16
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.b
  store i16 %i.g, ptr %i.h, align 2, !tbaa !29
  %i.i = udiv i32 %3, %i.e                        ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.b, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa120.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.05674.unr = phi i32 [ %3, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = icmp eq i16 %1, 2
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.05674 = phi i32 [ %i.x, %.lr.ph ], [ %.05674.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !29
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = urem i32 %.05674, %i.m
  %i.o = trunc nuw i32 %i.n to i16
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %i.o, ptr %i.p, align 2, !tbaa !29
  %i.q = udiv i32 %.05674, %i.m                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = urem i32 %i.q, %i.t
  %i.v = trunc nuw i32 %i.u to i16
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  store i16 %i.v, ptr %i.w, align 2, !tbaa !29
  %i.x = udiv i32 %i.q, %i.t                      ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.y = and i64 %indvars.iv.next.1, 65535
  %.not.1 = icmp eq i64 %i.y, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %wide.trip.count.pre-phi = phi i64 [ 0, %bb.a ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph.prol.loopexit ]
  %.056.lcssa = phi i32 [ %3, %bb.a ], [ %.lcssa120.unr, %.lr.ph.prol.loopexit ], [ %i.x, %.lr.ph ]
  %i.z = trunc i32 %.056.lcssa to i16
  store i16 %i.z, ptr %4, align 2, !tbaa !29
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge95, %._crit_edge
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge95 ], [ 0, %._crit_edge ] ; 4 uses
  %.057 = phi ptr [ %.4.lcssa, %._crit_edge95 ], [ %2, %._crit_edge ] ; 3 uses
  %.054 = phi ptr [ %.155, %._crit_edge95 ], [ %5, %._crit_edge ] ; 3 uses
  %.052 = phi ptr [ %.153, %._crit_edge95 ], [ %6, %._crit_edge ] ; 3 uses
  %.049 = phi ptr [ %.150.lcssa, %._crit_edge95 ], [ %7, %._crit_edge ] ; 2 uses
  %.047 = phi i16 [ %.148.lcssa, %._crit_edge95 ], [ %8, %._crit_edge ] ; 2 uses
  %.0 = phi i16 [ %.1.lcssa, %._crit_edge95 ], [ 0, %._crit_edge ] ; 2 uses
  %.not60 = icmp eq ptr %.054, null
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store ptr %.057, ptr %.054, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.155 = phi ptr [ %i.aa, %bb.c ], [ null, %bb.b ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv106 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29 ; 2 uses
  %.not6176 = icmp eq i16 %i.ac, 0
  br i1 %.not6176, label %._crit_edge79, label %.preheader70

.preheader70:                                     ; preds = %bb.d, %.preheader70
  %.04378 = phi i16 [ %i.ad, %.preheader70 ], [ %i.ac, %bb.d ]
  %.15877 = phi ptr [ %scevgep102, %.preheader70 ], [ %.057, %bb.d ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.15877)
  %scevgep = getelementptr i8, ptr %.15877, i64 1
  %scevgep102 = getelementptr i8, ptr %scevgep, i64 %strlen ; 2 uses
  %i.ad = add i16 %.04378, -1                     ; 2 uses
  %.not61 = icmp eq i16 %i.ad, 0
  br i1 %.not61, label %._crit_edge79, label %.preheader70, !llvm.loop !111

._crit_edge79:                                    ; preds = %.preheader70, %bb.d
  %.158.lcssa = phi ptr [ %.057, %bb.d ], [ %scevgep102, %.preheader70 ] ; 3 uses
  %.not62 = icmp eq ptr %.052, null
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge79
  %i.ae = getelementptr inbounds nuw i8, ptr %.052, i64 8
  store ptr %.158.lcssa, ptr %.052, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge79
  %.153 = phi ptr [ %i.ae, %bb.e ], [ null, %._crit_edge79 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.158.lcssa, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.158.lcssa, align 1, !tbaa !25 ; 2 uses
  %.not6381 = icmp eq i8 %i.ag, 0
  br i1 %.not6381, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.f, %bb.h
  %i.ah = phi i8 [ %i.an, %bb.h ], [ %i.ag, %bb.f ]
  %i.ai = phi ptr [ %i.am, %bb.h ], [ %i.af, %bb.f ] ; 2 uses
  %.184 = phi i16 [ %i.al, %bb.h ], [ %.0, %bb.f ]
  %.14883 = phi i16 [ %.2, %bb.h ], [ %.047, %bb.f ] ; 2 uses
  %.15082 = phi ptr [ %.251, %bb.h ], [ %.049, %bb.f ] ; 3 uses
  %.not68 = icmp eq i16 %.14883, 0
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph86
  %i.aj = getelementptr inbounds nuw i8, ptr %.15082, i64 1
  store i8 %i.ah, ptr %.15082, align 1, !tbaa !25
  %i.ak = add i16 %.14883, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph86
  %.251 = phi ptr [ %i.aj, %bb.g ], [ %.15082, %.lr.ph86 ] ; 2 uses
  %.2 = phi i16 [ %i.ak, %bb.g ], [ 0, %.lr.ph86 ] ; 2 uses
  %i.al = add i16 %.184, 1                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !25  ; 2 uses
  %.not63 = icmp eq i8 %i.an, 0
  br i1 %.not63, label %._crit_edge87, label %.lr.ph86, !llvm.loop !112

._crit_edge87:                                    ; preds = %bb.h, %bb.f
  %.150.lcssa = phi ptr [ %.049, %bb.f ], [ %.251, %bb.h ] ; 2 uses
  %.148.lcssa = phi i16 [ %.047, %bb.f ], [ %.2, %bb.h ] ; 2 uses
  %.1.lcssa = phi i16 [ %.0, %bb.f ], [ %i.al, %bb.h ] ; 2 uses
  %.lcssa71 = phi ptr [ %i.af, %bb.f ], [ %i.am, %bb.h ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv106, %wide.trip.count.pre-phi
  br i1 %exitcond.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge87
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv106
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = load i16, ptr %i.ab, align 2, !tbaa !29
  %i.ar = xor i16 %i.aq, -1
  %i.as = add i16 %i.ap, %i.ar                    ; 2 uses
  %.not6592 = icmp eq i16 %i.as, 0
  br i1 %.not6592, label %._crit_edge95, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.14494 = phi i16 [ %i.at, %.preheader ], [ %i.as, %bb.i ]
  %.493 = phi ptr [ %scevgep105, %.preheader ], [ %.lcssa71, %bb.i ] ; 2 uses
  %strlen103 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.493)
  %scevgep104 = getelementptr i8, ptr %.493, i64 1
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %strlen103 ; 2 uses
  %i.at = add i16 %.14494, -1                     ; 2 uses
  %.not65 = icmp eq i16 %i.at, 0
  br i1 %.not65, label %._crit_edge95, label %.preheader, !llvm.loop !113

._crit_edge95:                                    ; preds = %.preheader, %bb.i
  %.4.lcssa = phi ptr [ %.lcssa71, %bb.i ], [ %scevgep105, %.preheader ]
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %bb.b, !llvm.loop !114

bb.j:                                             ; preds = %._crit_edge87
  %.not67 = icmp eq i16 %.148.lcssa, 0
  br i1 %.not67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %.150.lcssa, align 1, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret i16 %.1.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i16 @_ZN6icu_78L10expandNameEPNS_10UCharNamesEPKht15UCharNameChoicePct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i32 noundef range(i32 -2147483648, 4) %3, ptr nofree noundef writeonly captures(none) %4, i16 noundef zeroext %5) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 6 uses
  %i.c = load i16, ptr %i.a, align 2, !tbaa !29   ; 4 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !36
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = and i32 %3, -3
  %or.cond.not = icmp eq i32 %i.g, 0
  br i1 %or.cond.not, label %.loopexit102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i16 %i.c, 60
  br i1 %i.h, label %.preheader361, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load i16, ptr %i.i, align 4, !tbaa !29
  %i.k = icmp eq i16 %i.j, -1
  br i1 %i.k, label %.preheader361, label %.loopexit99

.preheader361:                                    ; preds = %bb.b, %bb.c
  %.old5.not = icmp eq i16 %2, 0
  br i1 %.old5.not, label %.loopexit101, label %.preheader

.preheader:                                       ; preds = %.preheader361, %.preheader
  %.179 = phi i16 [ %i.l, %.preheader ], [ %2, %.preheader361 ]
  %.173 = phi ptr [ %i.m, %.preheader ], [ %1, %.preheader361 ] ; 2 uses
  %i.l = add i16 %.179, -1                        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.173, i64 1 ; 2 uses
  %i.n = load i8, ptr %.173, align 1, !tbaa !25
  %i.o = icmp ne i8 %i.n, 59
  %i.p = icmp ne i16 %i.l, 0
  %or.cond6 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond6, label %.preheader, label %.loopexit101, !llvm.loop !115

.loopexit101:                                     ; preds = %.preheader, %.preheader361
  %.280 = phi i16 [ 0, %.preheader361 ], [ %i.l, %.preheader ] ; 3 uses
  %.274 = phi ptr [ %1, %.preheader361 ], [ %i.m, %.preheader ] ; 3 uses
  %i.q = icmp sgt i32 %3, 1
  br i1 %i.q, label %bb.d, label %.loopexit102

bb.d:                                             ; preds = %.loopexit101
  %.old5.not.1 = icmp eq i16 %.280, 0
  br i1 %.old5.not.1, label %.loopexit101.1, label %.preheader.1

.preheader.1:                                     ; preds = %bb.d, %.preheader.1
  %.179.1 = phi i16 [ %i.r, %.preheader.1 ], [ %.280, %bb.d ]
  %.173.1 = phi ptr [ %i.s, %.preheader.1 ], [ %.274, %bb.d ] ; 2 uses
  %i.r = add i16 %.179.1, -1                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.173.1, i64 1 ; 2 uses
  %i.t = load i8, ptr %.173.1, align 1, !tbaa !25
  %i.u = icmp ne i8 %i.t, 59
  %i.v = icmp ne i16 %i.r, 0
  %or.cond6.1 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond6.1, label %.preheader.1, label %.loopexit101.1, !llvm.loop !115

.loopexit101.1:                                   ; preds = %.preheader.1, %bb.d
  %.280.1 = phi i16 [ 0, %bb.d ], [ %i.r, %.preheader.1 ] ; 3 uses
  %.274.1 = phi ptr [ %.274, %bb.d ], [ %i.s, %.preheader.1 ] ; 3 uses
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %.loopexit102, label %bb.e

bb.e:                                             ; preds = %.loopexit101.1
  %.old5.not.2 = icmp eq i16 %.280.1, 0
  br i1 %.old5.not.2, label %.loopexit102, label %.preheader.2

.preheader.2:                                     ; preds = %bb.e, %.preheader.2
  %.179.2 = phi i16 [ %i.w, %.preheader.2 ], [ %.280.1, %bb.e ]
  %.173.2 = phi ptr [ %i.x, %.preheader.2 ], [ %.274.1, %bb.e ] ; 2 uses
  %i.w = add i16 %.179.2, -1                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.173.2, i64 1 ; 2 uses
  %i.y = load i8, ptr %.173.2, align 1, !tbaa !25
  %i.z = icmp ne i8 %i.y, 59
  %i.aa = icmp ne i16 %i.w, 0
  %or.cond6.2 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond6.2, label %.preheader.2, label %.loopexit102, !llvm.loop !115

.loopexit102:                                     ; preds = %.loopexit101, %.loopexit101.1, %.preheader.2, %bb.e, %bb.a
  %.381 = phi i16 [ %2, %bb.a ], [ %.280, %.loopexit101 ], [ %.280.1, %.loopexit101.1 ], [ 0, %bb.e ], [ %i.w, %.preheader.2 ] ; 3 uses
  %.375 = phi ptr [ %1, %bb.a ], [ %.274, %.loopexit101 ], [ %.274.1, %.loopexit101.1 ], [ %.274.1, %bb.e ], [ %i.x, %.preheader.2 ] ; 2 uses
  %.not124179 = icmp eq i16 %.381, 0
  br i1 %.not124179, label %.loopexit99, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.loopexit102
  %i.ab = icmp eq i32 %3, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  br i1 %i.ab, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.outer.us
  %.061.ph184.us = phi i16 [ %.2.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 5 uses
  %.063.ph183.us = phi i16 [ %.5.us, %.outer.us ], [ %5, %.lr.ph.lr.ph ] ; 10 uses
  %.066.ph182.us = phi ptr [ %.571.us, %.outer.us ], [ %4, %.lr.ph.lr.ph ] ; 12 uses
  %.476.ph181.us = phi ptr [ %.6.us, %.outer.us ], [ %.375, %.lr.ph.lr.ph ] ; 3 uses
  %.482.ph180.us = phi i16 [ %.684.us, %.outer.us ], [ %.381, %.lr.ph.lr.ph ] ; 2 uses
  %i.ad = add i16 %.482.ph180.us, -1              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.476.ph181.us, i64 1 ; 3 uses
  %i.af = load i8, ptr %.476.ph181.us, align 1, !tbaa !25 ; 5 uses
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = zext i8 %i.af to i16
  %.not91.us189.peel = icmp ugt i16 %i.c, %i.ah
  br i1 %.not91.us189.peel, label %bb.f, label %.split.us195

bb.f:                                             ; preds = %.lr.ph.us
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ag
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !29 ; 2 uses
  %i.ak = icmp eq i16 %i.aj, -2
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.476.ph181.us, i64 2
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.an = zext i8 %i.am to i64
  %.idx.us190.peel = shl nuw nsw i64 %i.ag, 9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.us190.peel
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !29
  %i.ar = add i16 %.482.ph180.us, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.583.us191.peel = phi i16 [ %i.ar, %bb.g ], [ %i.ad, %bb.f ] ; 4 uses
  %.577.us192.peel = phi ptr [ %i.al, %bb.g ], [ %i.ae, %bb.f ] ; 3 uses
  %.062.us193.peel = phi i16 [ %i.aq, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.as = icmp eq i16 %.062.us193.peel, -1
  br i1 %i.as, label %bb.i, label %.split145.us196

bb.i:                                             ; preds = %bb.h
  %.not94.us194.peel = icmp eq i8 %i.af, 59
  br i1 %.not94.us194.peel, label %bb.j, label %.split151.us197

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq i16 %.061.ph184.us, 0
  br i1 %i.at, label %bb.k, label %.loopexit99

bb.k:                                             ; preds = %bb.j
  %i.au = load i16, ptr %i.ac, align 4, !tbaa !29
  %i.av = icmp ne i16 %i.au, -1
  %.not.us.peel = icmp eq i16 %.583.us191.peel, 0
  %or.cond = or i1 %i.av, %.not.us.peel
  br i1 %or.cond, label %.loopexit99, label %.peel.next

.peel.next:                                       ; preds = %bb.k, %bb.p
  %.476126.us = phi ptr [ %.577.us192, %bb.p ], [ %.577.us192.peel, %bb.k ] ; 3 uses
  %.482125.us = phi i16 [ %.583.us191, %bb.p ], [ %.583.us191.peel, %bb.k ] ; 2 uses
  %i.aw = add i16 %.482125.us, -1                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.476126.us, i64 1 ; 3 uses
  %i.ay = load i8, ptr %.476126.us, align 1, !tbaa !25 ; 5 uses
  %i.az = zext i8 %i.ay to i64                    ; 2 uses
  %i.ba = zext i8 %i.ay to i16
  %.not91.us189 = icmp ugt i16 %i.c, %i.ba
  br i1 %.not91.us189, label %bb.l, label %.split.us195

bb.l:                                             ; preds = %.peel.next
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.az
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29 ; 2 uses
  %i.bd = icmp eq i16 %i.bc, -2
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.476126.us, i64 2
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !25
  %i.bg = zext i8 %i.bf to i64
  %.idx.us190 = shl nuw nsw i64 %i.az, 9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.us190
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !29
  %i.bk = add i16 %.482125.us, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.583.us191 = phi i16 [ %i.bk, %bb.m ], [ %i.aw, %bb.l ] ; 4 uses
  %.577.us192 = phi ptr [ %i.be, %bb.m ], [ %i.ax, %bb.l ] ; 3 uses
  %.062.us193 = phi i16 [ %i.bj, %bb.m ], [ %i.bc, %bb.l ] ; 2 uses
  %i.bl = icmp eq i16 %.062.us193, -1
  br i1 %i.bl, label %bb.o, label %.split145.us196

bb.o:                                             ; preds = %bb.n
  %.not94.us194 = icmp eq i8 %i.ay, 59
  br i1 %.not94.us194, label %bb.p, label %.split151.us197

bb.p:                                             ; preds = %bb.o
  %.not.us = icmp eq i16 %.583.us191, 0
  br i1 %.not.us, label %.loopexit99, label %.peel.next, !llvm.loop !116

.split.us195:                                     ; preds = %.peel.next, %.lr.ph.us
  %.061127.us.lcssa = phi i16 [ %.061.ph184.us, %.lr.ph.us ], [ 0, %.peel.next ] ; 2 uses
  %.lcssa230 = phi i16 [ %i.ad, %.lr.ph.us ], [ %i.aw, %.peel.next ]
  %.lcssa226 = phi ptr [ %i.ae, %.lr.ph.us ], [ %i.ax, %.peel.next ]
  %.lcssa = phi i8 [ %i.af, %.lr.ph.us ], [ %i.ay, %.peel.next ] ; 2 uses
  %.not96.us = icmp eq i8 %.lcssa, 59
  br i1 %.not96.us, label %.loopexit99, label %bb.q

bb.q:                                             ; preds = %.split.us195
  %.not98.us = icmp eq i16 %.063.ph183.us, 0
  br i1 %.not98.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.066.ph182.us, i64 1
  store i8 %.lcssa, ptr %.066.ph182.us, align 1, !tbaa !25
  %i.bn = add i16 %.063.ph183.us, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.167.us = phi ptr [ %i.bm, %bb.r ], [ %.066.ph182.us, %bb.q ]
  %.164.us = phi i16 [ %i.bn, %bb.r ], [ 0, %bb.q ]
  %i.bo = add i16 %.061127.us.lcssa, 1
  br label %.outer.us

.split145.us196:                                  ; preds = %bb.n, %bb.h
  %.583.us191.lcssa = phi i16 [ %.583.us191.peel, %bb.h ], [ %.583.us191, %bb.n ] ; 2 uses
  %.577.us192.lcssa = phi ptr [ %.577.us192.peel, %bb.h ], [ %.577.us192, %bb.n ] ; 2 uses
  %.062.us193.lcssa = phi i16 [ %.062.us193.peel, %bb.h ], [ %.062.us193, %bb.n ]
  %.061127.us.lcssa234 = phi i16 [ %.061.ph184.us, %bb.h ], [ 0, %bb.n ] ; 2 uses
  %i.bp = zext i16 %.062.us193.lcssa to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25  ; 2 uses
  %.not92171.us = icmp eq i8 %i.br, 0
  br i1 %.not92171.us, label %.outer.us, label %.lr.ph175.us

.lr.ph175.us:                                     ; preds = %.split145.us196, %bb.u
  %i.bs = phi i8 [ %i.bx, %bb.u ], [ %i.br, %.split145.us196 ]
  %.pn216 = phi ptr [ %i.bt, %bb.u ], [ %i.bq, %.split145.us196 ]
  %.1174.us = phi i16 [ %i.bw, %bb.u ], [ %.061127.us.lcssa234, %.split145.us196 ]
  %.3173.us = phi i16 [ %.4.us, %bb.u ], [ %.063.ph183.us, %.split145.us196 ] ; 2 uses
  %.369172.us = phi ptr [ %.470.us, %bb.u ], [ %.066.ph182.us, %.split145.us196 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn216, i64 1 ; 2 uses
  %.not93.us = icmp eq i16 %.3173.us, 0
  br i1 %.not93.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph175.us
  %i.bu = getelementptr inbounds nuw i8, ptr %.369172.us, i64 1
  store i8 %i.bs, ptr %.369172.us, align 1, !tbaa !25
  %i.bv = add i16 %.3173.us, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph175.us
  %.470.us = phi ptr [ %i.bu, %bb.t ], [ %.369172.us, %.lr.ph175.us ] ; 2 uses
  %.4.us = phi i16 [ %i.bv, %bb.t ], [ 0, %.lr.ph175.us ] ; 2 uses
  %i.bw = add i16 %.1174.us, 1                    ; 2 uses
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !25  ; 2 uses
  %.not92.us = icmp eq i8 %i.bx, 0
  br i1 %.not92.us, label %.outer.us, label %.lr.ph175.us, !llvm.loop !117

.split151.us197:                                  ; preds = %bb.o, %bb.i
  %.583.us191.lcssa241 = phi i16 [ %.583.us191.peel, %bb.i ], [ %.583.us191, %bb.o ]
  %.577.us192.lcssa239 = phi ptr [ %.577.us192.peel, %bb.i ], [ %.577.us192, %bb.o ]
  %.061127.us.lcssa235 = phi i16 [ %.061.ph184.us, %bb.i ], [ 0, %bb.o ]
  %.lcssa224 = phi i8 [ %i.af, %bb.i ], [ %i.ay, %bb.o ]
  %.not95.us = icmp eq i16 %.063.ph183.us, 0
  br i1 %.not95.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split151.us197
  %i.by = getelementptr inbounds nuw i8, ptr %.066.ph182.us, i64 1
  store i8 %.lcssa224, ptr %.066.ph182.us, align 1, !tbaa !25
  %i.bz = add i16 %.063.ph183.us, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.split151.us197
  %.268.us = phi ptr [ %i.by, %bb.v ], [ %.066.ph182.us, %.split151.us197 ]
  %.265.us = phi i16 [ %i.bz, %bb.v ], [ 0, %.split151.us197 ]
  %i.ca = add i16 %.061127.us.lcssa235, 1
  br label %.outer.us

.outer.us:                                        ; preds = %bb.u, %.split145.us196, %bb.w, %bb.s
  %.684.us = phi i16 [ %.lcssa230, %bb.s ], [ %.583.us191.lcssa241, %bb.w ], [ %.583.us191.lcssa, %.split145.us196 ], [ %.583.us191.lcssa, %bb.u ] ; 2 uses
  %.6.us = phi ptr [ %.lcssa226, %bb.s ], [ %.577.us192.lcssa239, %bb.w ], [ %.577.us192.lcssa, %.split145.us196 ], [ %.577.us192.lcssa, %bb.u ]
  %.571.us = phi ptr [ %.167.us, %bb.s ], [ %.268.us, %bb.w ], [ %.066.ph182.us, %.split145.us196 ], [ %.470.us, %bb.u ] ; 2 uses
  %.5.us = phi i16 [ %.164.us, %bb.s ], [ %.265.us, %bb.w ], [ %.063.ph183.us, %.split145.us196 ], [ %.4.us, %bb.u ] ; 2 uses
  %.2.us = phi i16 [ %i.bo, %bb.s ], [ %i.ca, %bb.w ], [ %.061127.us.lcssa234, %.split145.us196 ], [ %i.bw, %bb.u ] ; 2 uses
  %.not124.us = icmp eq i16 %.684.us, 0
  br i1 %.not124.us, label %.loopexit99, label %.lr.ph.us, !llvm.loop !118

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.061.ph184 = phi i16 [ %.2, %.outer ], [ 0, %.lr.ph.lr.ph ] ; 6 uses
  %.063.ph183 = phi i16 [ %.5, %.outer ], [ %5, %.lr.ph.lr.ph ] ; 8 uses
  %.066.ph182 = phi ptr [ %.571, %.outer ], [ %4, %.lr.ph.lr.ph ] ; 10 uses
  %.476.ph181 = phi ptr [ %.6, %.outer ], [ %.375, %.lr.ph.lr.ph ] ; 3 uses
  %.482.ph180 = phi i16 [ %.684, %.outer ], [ %.381, %.lr.ph.lr.ph ] ; 2 uses
  %i.cb = add i16 %.482.ph180, -1                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.476.ph181, i64 1 ; 3 uses
  %i.cd = load i8, ptr %.476.ph181, align 1, !tbaa !25 ; 6 uses
  %i.ce = zext i8 %i.cd to i64                    ; 2 uses
  %i.cf = zext i8 %i.cd to i16
  %.not91.us = icmp ugt i16 %i.c, %i.cf
  br i1 %.not91.us, label %bb.x, label %.split.us

bb.x:                                             ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ce
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !29 ; 2 uses
  %i.ci = icmp eq i16 %i.ch, -2
  br i1 %i.ci, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %.476.ph181, i64 2
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !25
  %i.cl = zext i8 %i.ck to i64
  %.idx.us = shl nuw nsw i64 %i.ce, 9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.us
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !29
  %i.cp = add i16 %.482.ph180, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.583.us = phi i16 [ %i.cp, %bb.y ], [ %i.cb, %bb.x ] ; 3 uses
  %.577.us = phi ptr [ %i.cj, %bb.y ], [ %i.cc, %bb.x ] ; 3 uses
  %.062.us = phi i16 [ %i.co, %bb.y ], [ %i.ch, %bb.x ] ; 2 uses
  %i.cq = icmp eq i16 %.062.us, -1
  br i1 %i.cq, label %bb.aa, label %.split145.us

bb.aa:                                            ; preds = %bb.z
  %.not94.us = icmp eq i8 %i.cd, 59
  br i1 %.not94.us, label %.loopexit99, label %.split151.us

.split.us:                                        ; preds = %.lr.ph
  %.not96 = icmp eq i8 %i.cd, 59
  br i1 %.not96, label %.loopexit99, label %bb.ab

.split145.us:                                     ; preds = %bb.z
  %i.cr = zext i16 %.062.us to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cr ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25  ; 2 uses
  %.not92171 = icmp eq i8 %i.ct, 0
  br i1 %.not92171, label %.outer, label %.lr.ph175

.split151.us:                                     ; preds = %bb.aa
  %.not95 = icmp eq i16 %.063.ph183, 0
  br i1 %.not95, label %bb.af, label %bb.ae

bb.ab:                                            ; preds = %.split.us
  %.not98 = icmp eq i16 %.063.ph183, 0
  br i1 %.not98, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %.066.ph182, i64 1
  store i8 %i.cd, ptr %.066.ph182, align 1, !tbaa !25
  %i.cv = add i16 %.063.ph183, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.167 = phi ptr [ %i.cu, %bb.ac ], [ %.066.ph182, %bb.ab ]
  %.164 = phi i16 [ %i.cv, %bb.ac ], [ 0, %bb.ab ]
  %i.cw = add i16 %.061.ph184, 1
  br label %.outer

bb.ae:                                            ; preds = %.split151.us
  %i.cx = getelementptr inbounds nuw i8, ptr %.066.ph182, i64 1
  store i8 %i.cd, ptr %.066.ph182, align 1, !tbaa !25
  %i.cy = add i16 %.063.ph183, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split151.us
  %.268 = phi ptr [ %i.cx, %bb.ae ], [ %.066.ph182, %.split151.us ]
  %.265 = phi i16 [ %i.cy, %bb.ae ], [ 0, %.split151.us ]
  %i.cz = add i16 %.061.ph184, 1
  br label %.outer

.lr.ph175:                                        ; preds = %.split145.us, %bb.ah
  %i.da = phi i8 [ %i.df, %bb.ah ], [ %i.ct, %.split145.us ]
  %.pn = phi ptr [ %i.db, %bb.ah ], [ %i.cs, %.split145.us ]
  %.1174 = phi i16 [ %i.de, %bb.ah ], [ %.061.ph184, %.split145.us ]
  %.3173 = phi i16 [ %.4, %bb.ah ], [ %.063.ph183, %.split145.us ] ; 2 uses
  %.369172 = phi ptr [ %.470, %bb.ah ], [ %.066.ph182, %.split145.us ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %.not93 = icmp eq i16 %.3173, 0
  br i1 %.not93, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph175
  %i.dc = getelementptr inbounds nuw i8, ptr %.369172, i64 1
  store i8 %i.da, ptr %.369172, align 1, !tbaa !25
  %i.dd = add i16 %.3173, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph175
  %.470 = phi ptr [ %i.dc, %bb.ag ], [ %.369172, %.lr.ph175 ] ; 2 uses
  %.4 = phi i16 [ %i.dd, %bb.ag ], [ 0, %.lr.ph175 ] ; 2 uses
  %i.de = add i16 %.1174, 1                       ; 2 uses
  %i.df = load i8, ptr %i.db, align 1, !tbaa !25  ; 2 uses
  %.not92 = icmp eq i8 %i.df, 0
  br i1 %.not92, label %.outer, label %.lr.ph175, !llvm.loop !117

.outer:                                           ; preds = %bb.ah, %.split145.us, %bb.af, %bb.ad
  %.684 = phi i16 [ %i.cb, %bb.ad ], [ %.583.us, %bb.af ], [ %.583.us, %.split145.us ], [ %.583.us, %bb.ah ] ; 2 uses
  %.6 = phi ptr [ %i.cc, %bb.ad ], [ %.577.us, %bb.af ], [ %.577.us, %.split145.us ], [ %.577.us, %bb.ah ]
  %.571 = phi ptr [ %.167, %bb.ad ], [ %.268, %bb.af ], [ %.066.ph182, %.split145.us ], [ %.470, %bb.ah ] ; 2 uses
  %.5 = phi i16 [ %.164, %bb.ad ], [ %.265, %bb.af ], [ %.063.ph183, %.split145.us ], [ %.4, %bb.ah ] ; 2 uses
  %.2 = phi i16 [ %i.cw, %bb.ad ], [ %i.cz, %bb.af ], [ %.061.ph184, %.split145.us ], [ %i.de, %bb.ah ] ; 2 uses
  %.not124 = icmp eq i16 %.684, 0
  br i1 %.not124, label %.loopexit99, label %.lr.ph, !llvm.loop !118

.loopexit99:                                      ; preds = %.split.us, %.outer, %bb.aa, %.split.us195, %.outer.us, %bb.j, %bb.k, %bb.p, %bb.c, %.loopexit102
  %.066.ph121 = phi ptr [ %4, %bb.c ], [ %4, %.loopexit102 ], [ %.066.ph182.us, %.split.us195 ], [ %.066.ph182.us, %bb.p ], [ %.571.us, %.outer.us ], [ %.066.ph182.us, %bb.j ], [ %.066.ph182.us, %bb.k ], [ %.066.ph182, %.split.us ], [ %.571, %.outer ], [ %.066.ph182, %bb.aa ]
  %.063.ph119 = phi i16 [ %5, %bb.c ], [ %5, %.loopexit102 ], [ %.063.ph183.us, %.split.us195 ], [ %.063.ph183.us, %bb.p ], [ %.5.us, %.outer.us ], [ %.063.ph183.us, %bb.j ], [ %.063.ph183.us, %bb.k ], [ %.063.ph183, %.split.us ], [ %.5, %.outer ], [ %.063.ph183, %bb.aa ]
  %.061117 = phi i16 [ 0, %bb.c ], [ 0, %.loopexit102 ], [ %.061127.us.lcssa, %.split.us195 ], [ 0, %bb.p ], [ %.2.us, %.outer.us ], [ %.061.ph184.us, %bb.j ], [ 0, %bb.k ], [ %.061.ph184, %.split.us ], [ %.2, %.outer ], [ %.061.ph184, %bb.aa ]
  %.not97 = icmp eq i16 %.063.ph119, 0
  br i1 %.not97, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit99
  store i8 0, ptr %.066.ph121, align 1, !tbaa !25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit99
  ret i16 %.061117
}

declare signext i8 @u_charType_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L14enumGroupNamesEPNS_10UCharNamesEPKtiiPFaPvi15UCharNameChoicePKciES4_S5_(ptr nofree noundef readonly captures(none) %0, i16 %.2.val, i16 %.4.val, i32 noundef %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, i32 noundef range(i32 -2147483648, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [34 x i16], align 16              ; 6 uses
  %i.b = alloca [34 x i16], align 16              ; 6 uses
  %i.c = alloca [200 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = zext i16 %.2.val to i32
  %i.i = shl nuw i32 %i.h, 16
  %i.j = zext i16 %.4.val to i32
  %i.k = or disjoint i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.02749.i = phi i16 [ 0, %bb.a ], [ %.2.i, %bb.i ] ; 2 uses
  %.02848.i = phi i16 [ 0, %bb.a ], [ %.129.i, %bb.i ] ; 4 uses
  %.03047.i = phi i16 [ 0, %bb.a ], [ %.131.i, %bb.i ] ; 3 uses
  %.03246.i = phi ptr [ %i.b, %bb.a ], [ %.133.i, %bb.i ] ; 5 uses
  %.03445.i = phi ptr [ %i.a, %bb.a ], [ %.135.i, %bb.i ] ; 5 uses
  %.03644.i = phi ptr [ %i.m, %bb.a ], [ %i.n, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03644.i, i64 1 ; 4 uses
  %i.o = load i8, ptr %.03644.i, align 1, !tbaa !25 ; 5 uses
  %i.p = icmp samesign ugt i16 %.02749.i, 11
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i16 %.02749.i, 4
  %i.r = and i16 %i.q, 48
  %i.s = lshr i8 %i.o, 4
  %i.t = zext nneg i8 %i.s to i16
  %i.u = or disjoint i16 %i.r, 12
  %i.v = add nuw nsw i16 %i.u, %i.t
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.w = icmp ugt i8 %i.o, -65
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i8 %i.o, 4
  %i.y = zext nneg i8 %i.x to i16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = and i8 %i.o, 63
  %narrow.i = add nuw nsw i8 %i.z, 12
  %i.aa = zext nneg i8 %narrow.i to i16           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03445.i, i64 2
  store i16 %.02848.i, ptr %.03445.i, align 2, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.03246.i, i64 2
  store i16 %i.aa, ptr %.03246.i, align 2, !tbaa !29
  %i.ad = add i16 %.02848.i, %i.aa
  %i.ae = add nuw nsw i16 %.03047.i, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %.1.ph.i = phi i16 [ %i.y, %bb.e ], [ %i.v, %bb.c ] ; 2 uses
  %.0.ph.i = and i8 %i.o, 15                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03445.i, i64 2 ; 2 uses
  store i16 %.02848.i, ptr %.03445.i, align 2, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %.03246.i, i64 2 ; 2 uses
  store i16 %.1.ph.i, ptr %.03246.i, align 2, !tbaa !29
  %i.ah = add i16 %.1.ph.i, %.02848.i             ; 3 uses
  %i.ai = add nuw nsw i16 %.03047.i, 1
  %i.aj = zext nneg i8 %.0.ph.i to i16            ; 4 uses
  %i.ak = icmp samesign ult i8 %.0.ph.i, 12
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.03445.i, i64 4
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %.03246.i, i64 4
  store i16 %i.aj, ptr %i.ag, align 2, !tbaa !29
  %i.an = add i16 %i.ah, %i.aj
  %i.ao = add nuw nsw i16 %.03047.i, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.135.i = phi ptr [ %i.al, %bb.h ], [ %i.af, %bb.g ], [ %i.ab, %bb.f ]
  %.133.i = phi ptr [ %i.am, %bb.h ], [ %i.ag, %bb.g ], [ %i.ac, %bb.f ]
  %.131.i = phi i16 [ %i.ao, %bb.h ], [ %i.ai, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %.129.i = phi i16 [ %i.an, %bb.h ], [ %i.ah, %bb.g ], [ %i.ad, %bb.f ]
  %.2.i = phi i16 [ %i.aj, %bb.h ], [ %i.aj, %bb.g ], [ 0, %bb.f ]
  %i.ap = icmp ult i16 %.131.i, 32
  br i1 %i.ap, label %bb.b, label %_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit, !llvm.loop !1

_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit:    ; preds = %bb.i
  %.not = icmp eq ptr %3, null
  %.not4630 = icmp sgt i32 %1, %2                 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  br i1 %.not4630, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.aq = icmp eq i32 %5, 2
  br i1 %i.aq, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.04229.us = phi i32 [ %i.bc, %bb.l ], [ %1, %.lr.ph ] ; 4 uses
  %i.ar = and i32 %.04229.us, 31
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.as
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !29
  %i.az = call fastcc noundef zeroext i16 @_ZN6icu_78L10expandNameEPNS_10UCharNamesEPKht15UCharNameChoicePct(ptr noundef %0, ptr noundef nonnull %i.aw, i16 noundef zeroext %i.ay, i32 noundef %5, ptr noundef nonnull %i.c, i16 noundef zeroext 200) ; 2 uses
  %.not49.us = icmp eq i16 %i.az, 0
  br i1 %.not49.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.ba = zext i16 %i.az to i32
  %i.bb = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.04229.us, i32 noundef %5, ptr noundef nonnull %i.c, i32 noundef %i.ba)
  %.not50.us = icmp eq i8 %i.bb, 0
  br i1 %.not50.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.us
  %i.bc = add i32 %.04229.us, 1
  %exitcond.not = icmp eq i32 %.04229.us, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !120

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.04229 = phi i32 [ %i.bs, %bb.n ], [ %1, %.lr.ph ] ; 5 uses
  %i.bd = and i32 %.04229, 31
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !29
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !29
  %i.bl = call fastcc noundef zeroext i16 @_ZN6icu_78L10expandNameEPNS_10UCharNamesEPKht15UCharNameChoicePct(ptr noundef %0, ptr noundef nonnull %i.bi, i16 noundef zeroext %i.bk, i32 noundef 2, ptr noundef nonnull %i.c, i16 noundef zeroext 200) ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %.thread

bb.m:                                             ; preds = %.lr.ph.split
  %i.bn = call fastcc noundef zeroext i16 @_ZN6icu_78L10getExtNameEjPct(i32 noundef %.04229, ptr noundef nonnull %i.c, i16 noundef zeroext 200) ; 3 uses
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bo
  store i8 0, ptr %i.bp, align 1, !tbaa !25
  %.not49 = icmp eq i16 %i.bn, 0
  br i1 %.not49, label %bb.n, label %.thread

.thread:                                          ; preds = %.lr.ph.split, %bb.m
  %.03981 = phi i16 [ %i.bn, %bb.m ], [ %i.bl, %.lr.ph.split ]
  %i.bq = zext i16 %.03981 to i32
  %i.br = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.04229, i32 noundef 2, ptr noundef nonnull %i.c, i32 noundef %i.bq)
  %.not50 = icmp eq i8 %i.br, 0
  br i1 %.not50, label %.split.us, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %i.bs = add i32 %.04229, 1
  %exitcond60.not = icmp eq i32 %.04229, %2
  br i1 %exitcond60.not, label %.critedge, label %.lr.ph.split, !llvm.loop !120

.split.us:                                        ; preds = %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge52

bb.o:                                             ; preds = %_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit
  %i.bt = load ptr, ptr %4, align 8, !tbaa !34    ; 5 uses
  br i1 %.not4630, label %.critedge52, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.bw = load i16, ptr %i.bu, align 4, !tbaa !29 ; 3 uses
  %i.bx = load i32, ptr %0, align 4, !tbaa !36
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = and i32 %5, -3
  %or.cond.not.i = icmp eq i32 %i.ca, 0
  %i.cb = icmp ult i16 %i.bw, 60
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cd = icmp eq i32 %5, 2
  %i.ce = icmp sgt i32 %5, 1
  %.not160 = icmp eq i32 %5, 2
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph33, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread
  %.14331 = phi i32 [ %1, %.lr.ph33 ], [ %i.ez, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread ] ; 4 uses
  %i.cf = and i32 %.14331, 31
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !29
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cg
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !29 ; 3 uses
  br i1 %or.cond.not.i, label %.loopexit90.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.cb, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = load i16, ptr %i.cc, align 4, !tbaa !29
  %i.co = icmp eq i16 %i.cn, -1
  br i1 %i.co, label %.preheader, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit

.preheader:                                       ; preds = %bb.q, %bb.r
  %.old5.not.i = icmp eq i16 %i.cm, 0
  br i1 %.old5.not.i, label %.loopexit89.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader, %.preheader.i
  %.166.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.ck, %.preheader ] ; 2 uses
  %.162.i = phi i16 [ %i.cp, %.preheader.i ], [ %i.cm, %.preheader ]
  %i.cp = add i16 %.162.i, -1                     ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.166.i, i64 1 ; 2 uses
  %i.cr = load i8, ptr %.166.i, align 1, !tbaa !25
  %i.cs = icmp ne i8 %i.cr, 59
  %i.ct = icmp ne i16 %i.cp, 0
  %or.cond6.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond6.i, label %.preheader.i, label %.loopexit89.i, !llvm.loop !121

.loopexit89.i:                                    ; preds = %.preheader.i, %.preheader
  %.267.i = phi ptr [ %i.ck, %.preheader ], [ %i.cq, %.preheader.i ] ; 3 uses
  %.263.i = phi i16 [ 0, %.preheader ], [ %i.cp, %.preheader.i ] ; 3 uses
  br i1 %i.ce, label %bb.s, label %.loopexit90.i

bb.s:                                             ; preds = %.loopexit89.i
  %.old5.not.i.1 = icmp eq i16 %.263.i, 0
  br i1 %.old5.not.i.1, label %.loopexit89.i.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.s, %.preheader.i.1
  %.166.i.1 = phi ptr [ %i.cv, %.preheader.i.1 ], [ %.267.i, %bb.s ] ; 2 uses
  %.162.i.1 = phi i16 [ %i.cu, %.preheader.i.1 ], [ %.263.i, %bb.s ]
  %i.cu = add i16 %.162.i.1, -1                   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.166.i.1, i64 1 ; 2 uses
  %i.cw = load i8, ptr %.166.i.1, align 1, !tbaa !25
  %i.cx = icmp ne i8 %i.cw, 59
  %i.cy = icmp ne i16 %i.cu, 0
  %or.cond6.i.1 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond6.i.1, label %.preheader.i.1, label %.loopexit89.i.1, !llvm.loop !121

.loopexit89.i.1:                                  ; preds = %.preheader.i.1, %bb.s
  %.267.i.1 = phi ptr [ %.267.i, %bb.s ], [ %i.cv, %.preheader.i.1 ] ; 3 uses
  %.263.i.1 = phi i16 [ 0, %bb.s ], [ %i.cu, %.preheader.i.1 ] ; 3 uses
  br i1 %.not160, label %.loopexit90.i, label %bb.t

bb.t:                                             ; preds = %.loopexit89.i.1
  %.old5.not.i.2 = icmp eq i16 %.263.i.1, 0
  br i1 %.old5.not.i.2, label %.loopexit90.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.t, %.preheader.i.2
  %.166.i.2 = phi ptr [ %i.da, %.preheader.i.2 ], [ %.267.i.1, %bb.t ] ; 2 uses
  %.162.i.2 = phi i16 [ %i.cz, %.preheader.i.2 ], [ %.263.i.1, %bb.t ]
  %i.cz = add i16 %.162.i.2, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.166.i.2, i64 1 ; 2 uses
  %i.db = load i8, ptr %.166.i.2, align 1, !tbaa !25
  %i.dc = icmp ne i8 %i.db, 59
  %i.dd = icmp ne i16 %i.cz, 0
  %or.cond6.i.2 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond6.i.2, label %.preheader.i.2, label %.loopexit90.i, !llvm.loop !121

.loopexit90.i:                                    ; preds = %.loopexit89.i, %.loopexit89.i.1, %.preheader.i.2, %bb.t, %bb.p
  %.368.i = phi ptr [ %i.ck, %bb.p ], [ %.267.i, %.loopexit89.i ], [ %.267.i.1, %.loopexit89.i.1 ], [ %.267.i.1, %bb.t ], [ %i.da, %.preheader.i.2 ]
  %.364.i = phi i16 [ %i.cm, %bb.p ], [ %.263.i, %.loopexit89.i ], [ %.263.i.1, %.loopexit89.i.1 ], [ 0, %bb.t ], [ %i.cz, %.preheader.i.2 ] ; 2 uses
  %.not109138.i = icmp eq i16 %.364.i, 0
  br i1 %.not109138.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit90.i, %.thread.i
  %.056.ph141.i = phi ptr [ %.3.i, %.thread.i ], [ %i.bt, %.loopexit90.i ] ; 8 uses
  %.4.ph140.i = phi i16 [ %.6.i, %.thread.i ], [ %.364.i, %.loopexit90.i ] ; 3 uses
  %.469.ph139.i = phi ptr [ %.671.i, %.thread.i ], [ %.368.i, %.loopexit90.i ] ; 4 uses
  %i.de = icmp eq ptr %.056.ph141.i, %i.bt
  %or.cond3.i = and i1 %i.cd, %i.de
  br i1 %or.cond3.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.y
  %.4111.us.i = phi i16 [ %.5.us.i, %bb.y ], [ %.4.ph140.i, %.lr.ph.i ] ; 2 uses
  %.469110.us.i = phi ptr [ %.570.us.i, %bb.y ], [ %.469.ph139.i, %.lr.ph.i ] ; 3 uses
  %i.df = add i16 %.4111.us.i, -1                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.469110.us.i, i64 1 ; 3 uses
  %i.dh = load i8, ptr %.469110.us.i, align 1, !tbaa !25 ; 5 uses
  %i.di = zext i8 %i.dh to i64                    ; 2 uses
  %i.dj = zext i8 %i.dh to i16
  %.not78.us.i = icmp ugt i16 %i.bw, %i.dj
  br i1 %.not78.us.i, label %bb.u, label %.split.us.i

bb.u:                                             ; preds = %.lr.ph.split.us.i
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.di
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !29 ; 2 uses
  %i.dm = icmp eq i16 %i.dl, -2
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.469110.us.i, i64 2
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !25
  %i.dp = zext i8 %i.do to i64
  %.idx.us.i = shl nuw nsw i64 %i.di, 9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.us.i
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !29
  %i.dt = add i16 %.4111.us.i, -2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.570.us.i = phi ptr [ %i.dn, %bb.v ], [ %i.dg, %bb.u ] ; 3 uses
  %.5.us.i = phi i16 [ %i.dt, %bb.v ], [ %i.df, %bb.u ] ; 4 uses
  %.055.us.i = phi i16 [ %i.ds, %bb.v ], [ %i.dl, %bb.u ] ; 2 uses
  %i.du = icmp eq i16 %.055.us.i, -1
  br i1 %i.du, label %bb.x, label %.split121.us.i

bb.x:                                             ; preds = %bb.w
  %.not81.us.i = icmp eq i8 %i.dh, 59
  br i1 %.not81.us.i, label %bb.y, label %.split126.us.i

bb.y:                                             ; preds = %bb.x
  %i.dv = load i16, ptr %i.cc, align 4, !tbaa !29
  %i.dw = icmp ne i16 %i.dv, -1
  %.not.us.i = icmp eq i16 %.5.us.i, 0
  %or.cond.i = select i1 %i.dw, i1 true, i1 %.not.us.i
  br i1 %or.cond.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.lr.ph.split.us.i, !llvm.loop !122

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dx = add i16 %.4.ph140.i, -1                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.469.ph139.i, i64 1 ; 3 uses
  %i.dz = load i8, ptr %.469.ph139.i, align 1, !tbaa !25 ; 5 uses
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = zext i8 %i.dz to i16
  %.not78.i = icmp ugt i16 %i.bw, %i.eb
  br i1 %.not78.i, label %bb.aa, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph.split.i
  %.us-phi.i = phi i16 [ %i.dx, %.lr.ph.split.i ], [ %i.df, %.lr.ph.split.us.i ]
  %.us-phi117.i = phi ptr [ %i.dy, %.lr.ph.split.i ], [ %i.dg, %.lr.ph.split.us.i ]
  %.us-phi118.i = phi i8 [ %i.dz, %.lr.ph.split.i ], [ %i.dh, %.lr.ph.split.us.i ] ; 2 uses
  %.not83.i = icmp eq i8 %.us-phi118.i, 59
  br i1 %.not83.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %bb.z

bb.z:                                             ; preds = %.split.us.i
  %i.ec = getelementptr i8, ptr %.056.ph141.i, i64 1
  %i.ed = load i8, ptr %.056.ph141.i, align 1, !tbaa !25
  %.not84.i = icmp eq i8 %.us-phi118.i, %i.ed
  br i1 %.not84.i, label %.thread.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread

bb.aa:                                            ; preds = %.lr.ph.split.i
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ea
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !29 ; 2 uses
  %i.eg = icmp eq i16 %i.ef, -2
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %.469.ph139.i, i64 2
  %i.ei = load i8, ptr %i.dy, align 1, !tbaa !25
  %i.ej = zext i8 %i.ei to i64
  %.idx.i = shl nuw nsw i64 %i.ea, 9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load i16, ptr %i.el, align 2, !tbaa !29
  %i.en = add i16 %.4.ph140.i, -2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.570.i = phi ptr [ %i.eh, %bb.ab ], [ %i.dy, %bb.aa ] ; 2 uses
  %.5.i = phi i16 [ %i.en, %bb.ab ], [ %i.dx, %bb.aa ] ; 2 uses
  %.055.i = phi i16 [ %i.em, %bb.ab ], [ %i.ef, %bb.aa ] ; 2 uses
  %i.eo = icmp eq i16 %.055.i, -1
  br i1 %i.eo, label %bb.ad, label %.split121.us.i

bb.ad:                                            ; preds = %bb.ac
  %.not81.i = icmp eq i8 %i.dz, 59
  br i1 %.not81.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.split126.us.i

.split126.us.i:                                   ; preds = %bb.x, %bb.ad
  %.us-phi127.i = phi ptr [ %.570.i, %bb.ad ], [ %.570.us.i, %bb.x ]
  %.us-phi128.i = phi i16 [ %.5.i, %bb.ad ], [ %.5.us.i, %bb.x ]
  %.us-phi129.i = phi i8 [ %i.dz, %bb.ad ], [ %i.dh, %bb.x ]
  %i.ep = getelementptr i8, ptr %.056.ph141.i, i64 1
  %i.eq = load i8, ptr %.056.ph141.i, align 1, !tbaa !25
  %.not82.i = icmp eq i8 %.us-phi129.i, %i.eq
  br i1 %.not82.i, label %.thread.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread

.split121.us.i:                                   ; preds = %bb.w, %bb.ac
  %.us-phi122.i = phi ptr [ %.570.i, %bb.ac ], [ %.570.us.i, %bb.w ]
  %.us-phi123.i = phi i16 [ %.5.i, %bb.ac ], [ %.5.us.i, %bb.w ]
  %.us-phi124.i = phi i16 [ %.055.i, %bb.ac ], [ %.055.us.i, %bb.w ]
  %i.er = zext i16 %.us-phi124.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.er
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.split121.us.i
  %.1.i = phi ptr [ %.056.ph141.i, %.split121.us.i ], [ %i.ev, %bb.af ] ; 3 uses
  %.0.i = phi ptr [ %i.es, %.split121.us.i ], [ %i.eu, %bb.af ] ; 2 uses
  %i.et = load i8, ptr %.0.i, align 1, !tbaa !25  ; 2 uses
  %.not79.i = icmp eq i8 %i.et, 0
  br i1 %.not79.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ev = getelementptr i8, ptr %.1.i, i64 1
  %i.ew = load i8, ptr %.1.i, align 1, !tbaa !25
  %.not80.i = icmp eq i8 %i.et, %i.ew
  br i1 %.not80.i, label %bb.ae, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread, !llvm.loop !123

.thread.i:                                        ; preds = %bb.ae, %.split126.us.i, %bb.z
  %.671.i = phi ptr [ %.us-phi117.i, %bb.z ], [ %.us-phi127.i, %.split126.us.i ], [ %.us-phi122.i, %bb.ae ]
  %.6.i = phi i16 [ %.us-phi.i, %bb.z ], [ %.us-phi128.i, %.split126.us.i ], [ %.us-phi123.i, %bb.ae ] ; 2 uses
  %.3.i = phi ptr [ %i.ec, %bb.z ], [ %i.ep, %.split126.us.i ], [ %.1.i, %bb.ae ] ; 2 uses
  %.not109.i = icmp eq i16 %.6.i, 0
  br i1 %.not109.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.lr.ph.i, !llvm.loop !122

_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit: ; preds = %.split.us.i, %bb.ad, %.thread.i, %bb.y, %bb.r, %.loopexit90.i
  %.056.ph106.i = phi ptr [ %i.bt, %bb.y ], [ %i.bt, %.loopexit90.i ], [ %i.bt, %bb.r ], [ %.056.ph141.i, %.split.us.i ], [ %.3.i, %.thread.i ], [ %.056.ph141.i, %bb.ad ]
  %i.ex = load i8, ptr %.056.ph106.i, align 1, !tbaa !25
  %.not3 = icmp eq i8 %i.ex, 0
  br i1 %.not3, label %bb.ag, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread

bb.ag:                                            ; preds = %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.14331, ptr %i.ey, align 8, !tbaa !35
  br label %.critedge52

_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread: ; preds = %.split126.us.i, %bb.z, %bb.af, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit
  %i.ez = add i32 %.14331, 1
  %exitcond61.not = icmp eq i32 %.14331, %2
  br i1 %exitcond61.not, label %.critedge52, label %bb.p, !llvm.loop !124

.critedge:                                        ; preds = %bb.l, %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge52

.critedge52:                                      ; preds = %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread, %bb.o, %.critedge, %bb.ag, %.split.us
  %.2 = phi i8 [ 0, %bb.ag ], [ 0, %.split.us ], [ 1, %.critedge ], [ 1, %bb.o ], [ 1, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i8 %.2
}

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { allocsize(0) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS10UErrorCode", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN6icu_7810UCharNamesE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!15 = !{!14, !7, i64 12}
!16 = !{!7, !7, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{!"_ZTSN6icu_7816AlgorithmicRangeE", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 9, !17, i64 10}
!19 = !{!18, !7, i64 0}
!20 = !{!18, !7, i64 4}
!21 = !{!18, !17, i64 10}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"p1 _ZTS11UDataMemory", !12, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!6, !6, i64 0}
!26 = !{!18, !6, i64 8}
!27 = !{!18, !6, i64 9}
!28 = !{!14, !7, i64 4}
!29 = !{!17, !17, i64 0}
!30 = !{!14, !7, i64 8}
!31 = !{!"p1 omnipotent char", !12, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSN6icu_788FindNameE", !31, i64 0, !7, i64 8}
!34 = !{!33, !31, i64 0}
!35 = !{!33, !7, i64 8}
!36 = !{!14, !7, i64 0}
!37 = !{!"_ZTS12UDataSwapper", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!38 = !{!37, !6, i64 1}
!39 = !{!37, !6, i64 3}
!40 = !{!37, !12, i64 72}
!41 = distinct !{!41, !22}
!42 = !{!"_ZTSSt13__atomic_baseIiE", !7, i64 0}
!43 = !{!"_ZTSSt6atomicIiE", !42, i64 0}
!44 = !{!"_ZTSN6icu_789UInitOnceE", !43, i64 0, !10, i64 4}
!45 = !{!44, !10, i64 4}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = distinct !{null}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{null}
!84 = distinct !{!84, !22}
!85 = !{!"char16_t", !6, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"p1 _ZTS4USet", !12, i64 0}
!88 = !{!"_ZTS9USetAdder", !87, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!89 = !{!88, !12, i64 8}
!90 = !{!88, !87, i64 0}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !22}
!98 = distinct !{!98, !22}
!99 = !{!37, !12, i64 16}
!100 = !{!37, !12, i64 8}
!101 = !{!37, !12, i64 56}
!102 = !{!37, !12, i64 48}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !22}
!105 = distinct !{!105, !22}
!106 = !{!"_ZTS9UDataInfo", !17, i64 0, !17, i64 2, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 12, !6, i64 16}
!107 = !{!106, !17, i64 0}
!108 = !{!106, !6, i64 4}
!109 = !{!106, !6, i64 5}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22, !119}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22}
!119 = !{!"llvm.loop.peeled.count", i32 1}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, !22}
!122 = distinct !{!122, !22}
!123 = distinct !{!123, !22}
!124 = distinct !{!124, !22}
end_hunk_1
