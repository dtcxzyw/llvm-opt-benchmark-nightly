Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/kodak_decoders?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw19kodak_c603_load_rawEv:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ab = ptrtoint ptr %.sroa.037.0 to i64
  %i.ac = sub i64 %.sroa.13.0, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0, i64 noundef %i.ac) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.ad = load i16, ptr %i.p, align 2, !tbaa !11  ; 4 uses
  %.not52 = icmp eq i16 %i.ad, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = trunc i32 %.02847 to i1
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !157 ; 6 uses
  br i1 %i.af, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.ah = phi i16 [ %i.cp, %.lr.ph.split.us ], [ %i.ad, %.lr.ph ]
  %i.ai = phi i32 [ %i.cq, %.lr.ph.split.us ], [ %i.ae, %.lr.ph ] ; 2 uses
  %.02746.us = phi i32 [ %i.co, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = add nuw nsw i32 %i.aj, %.02746.us
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !87
  %i.ao = zext i8 %i.an to i32
  %i.ap = and i32 %.02746.us, 2147483646
  %i.aq = add nuw nsw i32 %i.ai, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !87
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = add nsw i32 %i.au, -128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !87
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -128                 ; 2 uses
  %i.ba = add nsw i32 %i.au, -126
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = ashr i32 %i.bb, 2
  %i.bd = sub nsw i32 %i.ao, %i.bc                ; 3 uses
  %i.be = add nsw i32 %i.bd, %i.av
  %i.bf = add nsw i32 %i.bd, %i.az
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 255)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !78
  %i.bl = zext i16 %i.ah to i32
  %i.bm = mul nuw nsw i32 %.02847, %i.bl
  %i.bn = add nuw nsw i32 %i.bm, %.02746.us
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bo
  store i16 %i.bk, ptr %i.bp, align 2, !tbaa !78
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 255)
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !78
  %i.bv = load i16, ptr %i.p, align 2, !tbaa !11
  %i.bw = zext i16 %i.bv to i32
  %i.bx = mul nuw nsw i32 %.02847, %i.bw
  %i.by = add nuw nsw i32 %i.bx, %.02746.us
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i16 %i.bu, ptr %i.cb, align 2, !tbaa !78
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 255)
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !78
  %i.ch = load i16, ptr %i.p, align 2, !tbaa !11
  %i.ci = zext i16 %i.ch to i32
  %i.cj = mul nuw nsw i32 %.02847, %i.ci
  %i.ck = add nuw nsw i32 %i.cj, %.02746.us
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i16 %i.cg, ptr %i.cn, align 2, !tbaa !78
  %i.co = add nuw nsw i32 %.02746.us, 1           ; 2 uses
  %i.cp = load i16, ptr %i.p, align 2, !tbaa !11  ; 2 uses
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = icmp samesign ult i32 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !167

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.cs = phi i16 [ %i.ex, %.lr.ph.split ], [ %i.ad, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %i.ct = phi i32 [ %i.ey, %.lr.ph.split ], [ %i.ae, %.lr.ph ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %indvars.iv
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !87
  %i.cw = zext i8 %i.cv to i32
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = and i32 %i.cx, 2147483646
  %i.cz = add nuw nsw i32 %i.ct, %i.cy
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !87
  %i.dd = zext i8 %i.dc to i32                    ; 2 uses
  %i.de = add nsw i32 %i.dd, -128
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !87
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nsw i32 %i.dh, -128                 ; 2 uses
  %i.dj = add nsw i32 %i.dd, -126
  %i.dk = add nsw i32 %i.dj, %i.di
  %i.dl = ashr i32 %i.dk, 2
  %i.dm = sub nsw i32 %i.cw, %i.dl                ; 3 uses
  %i.dn = add nsw i32 %i.dm, %i.de
  %i.do = add nsw i32 %i.dm, %i.di
  %i.dp = tail call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 255)
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !78
  %i.du = zext i16 %i.cs to i32
  %i.dv = mul nuw nsw i32 %.02847, %i.du
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store i16 %i.dt, ptr %i.dy, align 2, !tbaa !78
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 255)
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !78
  %i.ee = load i16, ptr %i.p, align 2, !tbaa !11
  %i.ef = zext i16 %i.ee to i32
  %i.eg = mul nuw nsw i32 %.02847, %i.ef
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i16 %i.ed, ptr %i.ek, align 2, !tbaa !78
  %i.el = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 0)
  %i.em = tail call i32 @llvm.umin.i32(i32 %i.el, i32 255)
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !78
  %i.eq = load i16, ptr %i.p, align 2, !tbaa !11
  %i.er = zext i16 %i.eq to i32
  %i.es = mul nuw nsw i32 %.02847, %i.er
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i16 %i.ep, ptr %i.ew, align 2, !tbaa !78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ex = load i16, ptr %i.p, align 2, !tbaa !11  ; 3 uses
  %i.ey = zext i16 %i.ex to i32
  %i.ez = zext i16 %i.ex to i64
  %i.fa = icmp samesign ult i64 %indvars.iv.next, %i.ez
  br i1 %i.fa, label %.lr.ph.split, label %._crit_edge, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.k
  %i.fb = add nuw nsw i32 %.02847, 1              ; 2 uses
  %i.fc = load i16, ptr %i.m, align 4, !tbaa !75
  %i.fd = zext i16 %i.fc to i32
  %i.fe = icmp samesign ult i32 %i.fb, %i.fd
  br i1 %i.fe, label %bb.d, label %._crit_edge50, !llvm.loop !168

._crit_edge50:                                    ; preds = %._crit_edge, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 6110
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !78
  %i.fh = zext i16 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.fh, ptr %i.fi, align 8, !tbaa !108
  %.not.i.i.i35 = icmp eq ptr %.sroa.037.0, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIhSaIhEED2Ev.exit36, label %bb.l

bb.l:                                             ; preds = %._crit_edge50
  %i.fj = ptrtoint ptr %.sroa.037.0 to i64
  %i.fk = sub i64 %.sroa.13.0, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0, i64 noundef %i.fk) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit36

_ZNSt6vectorIhSaIhEED2Ev.exit36:                  ; preds = %._crit_edge50, %bb.l
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18kodak_262_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call noundef ptr @_ZN6LibRaw12make_decoderEPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull @_ZZN6LibRaw18kodak_262_load_rawEvE10kodak_tree) ; 3 uses
  store ptr %i.b, ptr %i.a, align 16, !tbaa !169
  %i.c = tail call noundef ptr @_ZN6LibRaw12make_decoderEPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18kodak_262_load_rawEvE10kodak_tree, i64 26)) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !170
  %i.g = zext i16 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 63
  %i.i = lshr i32 %i.h, 5                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !74   ; 2 uses
  %i.l = zext i16 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 5
  %i.n = shl nuw nsw i32 %i.i, 2
  %i.o = add nuw nsw i32 %i.n, %i.m
  %i.p = zext nneg i32 %i.o to i64                ; 4 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #14 ; 8 uses
  store i8 0, ptr %i.q, align 1, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = add nsw i64 %i.p, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i8 0, i64 %i.s, i1 false)
  %i.t = zext i16 %i.k to i64
  %i.u = shl nuw nsw i64 %i.t, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 19789, ptr %i.x, align 8, !tbaa !171
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.b

.preheader95:                                     ; preds = %bb.c
  %i.y = load i16, ptr %i.e, align 8, !tbaa !170
  %.not106 = icmp eq i16 %i.y, 0
  br i1 %.not106, label %.preheader, label %.lr.ph103

.lr.ph103:                                        ; preds = %.preheader95
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 193784
  br label %bb.d

bb.b:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ab = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.c unwind label %.loopexit.split-lp86

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !154
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader95, label %bb.b, !llvm.loop !172

.loopexit85:                                      ; preds = %bb.r, %.preheader
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit76

.loopexit.split-lp86:                             ; preds = %bb.b
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit76

.preheader:                                       ; preds = %._crit_edge, %.preheader95
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.b)
          to label %bb.r unwind label %.loopexit85

bb.d:                                             ; preds = %.lr.ph103, %._crit_edge
  %.061102 = phi i32 [ 0, %.lr.ph103 ], [ %.263.lcssa, %._crit_edge ]
  %.065101 = phi i32 [ 0, %.lr.ph103 ], [ %i.cw, %._crit_edge ] ; 5 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.e unwind label %.loopexit.split-lp91

bb.e:                                             ; preds = %bb.d
  %i.ad = and i32 %.065101, 31
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !134 ; 2 uses
  %i.ag = lshr exact i32 %.065101, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !154
  %i.ak = sext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.ak, i32 noundef 0)
          to label %bb.g unwind label %.loopexit.split-lp91, !call_target !159 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ap = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null)
          to label %bb.k unwind label %.loopexit.split-lp91 ; 0 uses

.loopexit90:                                      ; preds = %bb.m, %bb.o
  %lpad.loopexit92 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp91:                             ; preds = %bb.d, %bb.f, %bb.g
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp91, %.loopexit90
  %lpad.phi94 = phi { ptr, i32 } [ %lpad.loopexit92, %.loopexit90 ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp91 ]
  %i.aq = extractvalue { ptr, i32 } %lpad.phi94, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.aq) #12 ; 0 uses
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.b)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.c)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_rethrow() #13
          to label %bb.t unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.g, %bb.e
  %.162 = phi i32 [ %.061102, %bb.e ], [ 0, %bb.g ] ; 2 uses
  %i.as = load i16, ptr %i.j, align 2, !tbaa !74  ; 2 uses
  %.not107 = icmp eq i16 %i.as, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.at = zext i16 %i.as to i32
  %i.au = sext i32 %.162 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv110 = phi i64 [ %i.au, %.lr.ph.preheader ], [ %indvars.iv.next111, %bb.p ] ; 4 uses
  %i.av = phi i32 [ %i.at, %.lr.ph.preheader ], [ %i.ct, %bb.p ] ; 3 uses
  %.06499 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cr, %bb.p ] ; 5 uses
  %i.aw = add nuw nsw i32 %.06499, %.065101
  %i.ax = and i32 %i.aw, 1                        ; 3 uses
  %.not = icmp eq i32 %i.ax, 0                    ; 2 uses
  %i.ay = xor i32 %i.av, -1
  %i.az = trunc nsw i64 %indvars.iv110 to i32     ; 3 uses
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = trunc i64 %indvars.iv110 to i32
  %i.bc = add i32 %i.bb, -2                       ; 3 uses
  %i.bd = select i1 %.not, i32 %i.ba, i32 %i.bc
  %i.be = shl nuw nsw i32 %i.av, 1
  %i.bf = sub nsw i32 %i.az, %i.be
  %i.bg = add i32 %i.az, 1
  %i.bh = sub i32 %i.bg, %i.av
  %i.bi = select i1 %.not, i32 %i.bh, i32 %i.bf   ; 3 uses
  %.not71 = icmp samesign ugt i32 %.06499, %i.ax
  %spec.select = select i1 %.not71, i32 %i.bd, i32 -1 ; 2 uses
  %i.bj = icmp slt i32 %spec.select, 0
  %.160 = select i1 %i.bj, i32 %i.bi, i32 %spec.select ; 3 uses
  %i.bk = icmp slt i32 %.160, 0
  %i.bl = icmp samesign ugt i32 %.06499, 1
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false  ; 2 uses
  %.2 = select i1 %or.cond, i32 %i.bc, i32 %.160  ; 2 uses
  %i.bm = icmp slt i32 %.2, 0
  br i1 %i.bm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bn = icmp slt i32 %i.bi, 0
  %.057 = select i1 %i.bn, i32 %.160, i32 %i.bi
  %.158 = select i1 %or.cond, i32 %i.bc, i32 %.057
  %i.bo = zext nneg i32 %.2 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !87
  %i.br = zext i8 %i.bq to i32
  %i.bs = sext i32 %.158 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !87
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bv, %i.br
  %i.bx = lshr i32 %i.bw, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi i32 [ %i.bx, %bb.l ], [ 0, %.lr.ph ]
  %i.bz = zext nneg i32 %i.ax to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !169
  %i.cc = invoke noundef i32 @_ZN6LibRaw10ljpeg_diffEPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.cb)
          to label %bb.n unwind label %.loopexit90

bb.n:                                             ; preds = %bb.m
  %i.cd = add nsw i32 %i.cc, %i.by                ; 2 uses
  %i.ce = trunc i32 %i.cd to i8                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv110 ; 2 uses
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !87
  %.not72 = icmp ult i32 %i.cd, 256
  br i1 %.not72, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %._crit_edge119 unwind label %.loopexit90

._crit_edge119:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.cf, align 1, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge119, %bb.n
  %i.cg = phi i8 [ %.pre, %._crit_edge119 ], [ %i.ce, %bb.n ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !78
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !95
  %i.cl = load i16, ptr %i.j, align 2, !tbaa !74
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %.065101, %i.cm
  %i.co = add nuw nsw i32 %i.cn, %.06499
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.cp
  store i16 %i.cj, ptr %i.cq, align 2, !tbaa !78
  %i.cr = add nuw nsw i32 %.06499, 1              ; 2 uses
  %i.cs = load i16, ptr %i.j, align 2, !tbaa !74
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = icmp samesign ult i32 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !173

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.cv = trunc nsw i64 %indvars.iv.next111 to i32
  br label %._crit_edge
end_hunk_0
