Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/fuji_compressed?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN6LibRaw17fuji_decode_stripEP22fuji_compressed_paramsixjPh:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !137
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 2800 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !113
  %i.cb = mul nuw nsw i32 %i.o, 6
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ca, i8 0, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 2792 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !113 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !137
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !113 ; 2 uses
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !137
  %i.ci = load i16, ptr %i.k, align 4, !tbaa !98
  %i.cj = zext i16 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !137
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i16 %i.cl, ptr %i.cn, align 2, !tbaa !137
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 2864 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cp, i8 0, i64 %i.bn, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 2856 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !113 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !137
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !113 ; 2 uses
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !137
  %i.cv = load i16, ptr %i.k, align 4, !tbaa !98
  %i.cw = zext i16 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !137
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i16 %i.cy, ptr %i.da, align 2, !tbaa !137
  %i.db = load i32, ptr %i.aa, align 4, !tbaa !141
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.m, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 1, %bb.m ] ; 4 uses
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !95
  %.not58 = icmp eq i32 %i.dd, 0
  br i1 %.not58, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.peel.next
  br i1 %.not59, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = zext i8 %i.df to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dh = phi i32 [ %i.dg, %bb.o ], [ 0, %bb.n ]
  %i.di = load i32, ptr %i.ad, align 8, !tbaa !28
  %.not61 = icmp eq i32 %i.dh, %i.di
  br i1 %.not61, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  call void @_Z16init_main_qtableP22fuji_compressed_paramsh(ptr noundef nonnull %.054, i8 noundef zeroext %i.dk)
  call void @_Z15init_main_gradsPK22fuji_compressed_paramsP21fuji_compressed_block(ptr noundef nonnull %.054, ptr noundef nonnull %6)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.peel.next
  %i.dl = load i32, ptr %i.ae, align 4, !tbaa !97
  %i.dm = icmp eq i32 %i.dl, 16
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN6LibRaw19xtrans_decode_blockEP21fuji_compressed_blockPK22fuji_compressed_paramsi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %6, ptr noundef nonnull %.054, i32 poison)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @_ZN6LibRaw23fuji_bayer_decode_blockEP21fuji_compressed_blockPK22fuji_compressed_paramsi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %6, ptr noundef nonnull %.054, i32 poison)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dn = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.do = load ptr, ptr %i.an, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.dn, ptr noundef nonnull align 2 dereferenceable(1) %i.do, i64 %i.ag, i1 false)
  %i.dp = load ptr, ptr %i.ap, align 8, !tbaa !113
  %i.dq = load ptr, ptr %i.ar, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.dp, ptr noundef nonnull align 2 dereferenceable(1) %i.dq, i64 %i.ag, i1 false)
  %i.dr = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.ds = load ptr, ptr %i.av, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.dr, ptr noundef nonnull align 2 dereferenceable(1) %i.ds, i64 %i.ag, i1 false)
  %i.dt = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.du = load ptr, ptr %i.az, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.dt, ptr noundef nonnull align 2 dereferenceable(1) %i.du, i64 %i.ag, i1 false)
  %i.dv = load ptr, ptr %i.bb, align 8, !tbaa !113
  %i.dw = load ptr, ptr %i.bd, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.dv, ptr noundef nonnull align 2 dereferenceable(1) %i.dw, i64 %i.ag, i1 false)
  %i.dx = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.dy = load ptr, ptr %i.bh, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.dx, ptr noundef nonnull align 2 dereferenceable(1) %i.dy, i64 %i.ag, i1 false)
  %i.dz = load i32, ptr %i.ae, align 4, !tbaa !97
  %i.ea = icmp eq i32 %i.dz, 16
  %i.eb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ea, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN6LibRaw19copy_line_to_xtransEP21fuji_compressed_blockiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %6, i32 noundef %i.eb, i32 noundef %2, i32 noundef %.053)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @_ZN6LibRaw18copy_line_to_bayerEP21fuji_compressed_blockiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %6, i32 noundef %i.eb, i32 noundef %2, i32 noundef %.053)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ec = load ptr, ptr %i.ah, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ec, i8 0, i64 %i.bn, i1 false)
  %i.ed = load ptr, ptr %i.bo, align 8, !tbaa !113 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !137
  %i.eg = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !137
  %i.eh = load i16, ptr %i.k, align 4, !tbaa !98
  %i.ei = zext i16 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !137
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store i16 %i.ek, ptr %i.em, align 2, !tbaa !137
  %i.en = load ptr, ptr %i.bz, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.en, i8 0, i64 %i.cc, i1 false)
  %i.eo = load ptr, ptr %i.cd, align 8, !tbaa !113 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !137
  %i.er = load ptr, ptr %i.bz, align 8, !tbaa !113 ; 2 uses
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !137
  %i.es = load i16, ptr %i.k, align 4, !tbaa !98
  %i.et = zext i16 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !137
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.et
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  store i16 %i.ev, ptr %i.ex, align 2, !tbaa !137
  %i.ey = load ptr, ptr %i.co, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ey, i8 0, i64 %i.bn, i1 false)
  %i.ez = load ptr, ptr %i.cq, align 8, !tbaa !113 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !137
  %i.fc = load ptr, ptr %i.co, align 8, !tbaa !113 ; 2 uses
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !137
  %i.fd = load i16, ptr %i.k, align 4, !tbaa !98
  %i.fe = zext i16 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !137
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i16 %i.fg, ptr %i.fi, align 2, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fj = load i32, ptr %i.aa, align 4, !tbaa !141
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next, %i.fk
  br i1 %i.fl, label %.peel.next, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.x, %bb.m, %bb.e
  %i.fm = load i32, ptr %i.a, align 8, !tbaa !95
  %.not57 = icmp eq i32 %i.fm, 0
  br i1 %.not57, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %.054)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 2736
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !101
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !114
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw24fuji_compressed_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) #3 align 2 {
bb.a:
  %1 = alloca %struct.fuji_compressed_params, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN6LibRaw15init_fuji_comprEP22fuji_compressed_params(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381888 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !140
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 4, i64 noundef %i.d) ; 14 uses
  %i.f = load i32, ptr %i.b, align 8, !tbaa !140
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 8, i64 noundef %i.g) ; 14 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !142
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.k, i32 noundef 0), !call_target !125 ; 0 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !140
  %i.q = shl i32 %i.p, 2                          ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.e, i64 noundef 1, i64 noundef %i.s), !call_target !132
  %.not = icmp eq i32 %i.w, %i.q
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.e)
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.h)
  %i.x = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 4, ptr %i.x, align 16, !tbaa !134
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.b, align 8, !tbaa !140  ; 3 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = add nsw i64 %i.aa, 12
  %i.ac = and i64 %i.ab, -16                      ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 381904
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !95
  %.not38 = icmp eq i32 %i.ae, 0
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 381884
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !141
  %i.ah = add nsw i32 %i.ag, 15
  %i.ai = and i32 %i.ah, -16
  %i.aj = mul nsw i32 %i.ai, %i.y
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ak, i64 noundef 1) ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %i.an = load i64, ptr %i.j, align 8, !tbaa !142
  %i.ao = add nsw i64 %i.an, %i.ac
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i64 noundef %i.ao, i32 noundef 0), !call_target !125 ; 0 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.al, i64 noundef 1, i64 noundef %i.ak), !call_target !132 ; 0 uses
  %i.ay = add nsw i64 %i.ac, %i.ak
  %.pre = load i32, ptr %i.b, align 8, !tbaa !140
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = phi i32 [ %i.y, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.036 = phi ptr [ null, %bb.c ], [ %i.al, %bb.d ] ; 2 uses
  %.035 = phi i64 [ %i.ac, %bb.c ], [ %i.ay, %bb.d ]
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !142
  %i.bb = add nsw i64 %i.ba, %.035
  store i64 %i.bb, ptr %i.h, align 8, !tbaa !143
  %i.bc = icmp sgt i32 %i.az, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %.lr.ph
  %i.bd = icmp sgt i32 %i.bz, 1
  br i1 %i.bd, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bz to i64
  %load_initial = load i64, ptr %i.h, align 8     ; 2 uses
  %i.be = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.be, 7                    ; 3 uses
  %i.bf = add nsw i32 %i.bz, -2
  %i.bg = icmp ult i32 %i.bf, 7
  br i1 %i.bg, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

.lr.ph42.preheader.new:                           ; preds = %.lr.ph42.preheader
  %unroll_iter = and i64 %i.be, -8
  br label %.lr.ph42

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bk, 16
  %i.bp = shl nuw nsw i32 %i.bn, 8
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  %i.bv = shl nuw i32 %i.bu, 8
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  store i32 %i.by, ptr %i.bh, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.b, align 8, !tbaa !140 ; 7 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %.lr.ph, label %.preheader, !llvm.loop !190

.lr.ph42:                                         ; preds = %.lr.ph42, %.lr.ph42.preheader.new
  %i.cc = phi i64 [ %load_initial, %.lr.ph42.preheader.new ], [ %i.dx, %.lr.ph42 ]
  %indvars.iv45 = phi i64 [ 1, %.lr.ph42.preheader.new ], [ %indvars.iv.next46.7, %.lr.ph42 ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter.next.7, %.lr.ph42 ]
  %i.cd = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv45
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nsw i64 %i.cc, %i.cg                ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv45
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !143
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.next46
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !15
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add nsw i64 %i.ch, %i.cm                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next46
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !143
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.next46.1
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !15
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add nsw i64 %i.cn, %i.cs                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next46.1
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !143
  %indvars.iv.next46.2 = add nuw nsw i64 %indvars.iv45, 3 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.next46.2
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !15
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nsw i64 %i.ct, %i.cy                ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next46.2
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !143
  %indvars.iv.next46.3 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.next46.3
  %i.dc = getelementptr i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !15
  %i.de = zext i32 %i.dd to i64
  %i.df = add nsw i64 %i.cz, %i.de                ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next46.3
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !143
  %indvars.iv.next46.4 = add nuw nsw i64 %indvars.iv45, 5 ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.next46.4
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !15
  %i.dk = zext i32 %i.dj to i64
  %i.dl = add nsw i64 %i.df, %i.dk                ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next46.4
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !143
  %indvars.iv.next46.5 = add nuw nsw i64 %indvars.iv45, 6 ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.next46.5
  %i.do = getelementptr i8, ptr %i.dn, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !15
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nsw i64 %i.dl, %i.dq                ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next46.5
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !143
  %indvars.iv.next46.6 = add nuw nsw i64 %indvars.iv45, 7 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.next46.6
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !15
  %i.dw = zext i32 %i.dv to i64
  %i.dx = add nsw i64 %i.dr, %i.dw                ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next46.6
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !143
  %indvars.iv.next46.7 = add nuw nsw i64 %indvars.iv45, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph42, !llvm.loop !191

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph42
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph42.epil.preheader

.lr.ph42.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph42.preheader
  %.epil.init = phi i64 [ %load_initial, %.lr.ph42.preheader ], [ %i.dx, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv45.epil.init = phi i64 [ 1, %.lr.ph42.preheader ], [ %indvars.iv.next46.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph42.epil

.lr.ph42.epil:                                    ; preds = %.lr.ph42.epil, %.lr.ph42.epil.preheader
  %i.dz = phi i64 [ %.epil.init, %.lr.ph42.epil.preheader ], [ %i.ee, %.lr.ph42.epil ]
  %indvars.iv45.epil = phi i64 [ %indvars.iv45.epil.init, %.lr.ph42.epil.preheader ], [ %indvars.iv.next46.epil, %.lr.ph42.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph42.epil.preheader ], [ %epil.iter.next, %.lr.ph42.epil ]
  %i.ea = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv45.epil
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !15
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nsw i64 %i.dz, %i.ed                ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv45.epil
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !143
  %indvars.iv.next46.epil = add nuw nsw i64 %indvars.iv45.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph42.epil, !llvm.loop !192

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph42.epil, %bb.e, %.preheader
  %.lcssa3949 = phi i32 [ %i.az, %bb.e ], [ %i.bz, %.preheader ], [ %i.bz, %.lr.ph42.epil ], [ %i.bz, %._crit_edge.loopexit.unr-lcssa ]
  %i.eg = load ptr, ptr %0, align 8, !tbaa !104
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef %.lcssa3949, ptr noundef nonnull %i.h, ptr noundef %i.e, ptr noundef %.036), !call_target !207
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.036)
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.e)
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.h)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !96
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16fuji_decode_loopEP22fuji_compressed_paramsiPxPjPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381884
  %i.b = load i32, ptr %i.a, align 4, !tbaa !141
  %i.c = add nsw i32 %i.b, 15
  %i.d = and i32 %i.c, -16
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.f = sext i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count23 = zext nneg i32 %2 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.b
  %indvars.iv20 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next21, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv20
  %i.h = load i64, ptr %i.g, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = trunc nuw nsw i64 %indvars.iv20 to i32
  invoke void @_ZN6LibRaw17fuji_decode_stripEP22fuji_compressed_paramsixjPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1, i32 noundef %i.k, i64 noundef %i.h, i32 noundef %i.j, ptr noundef null)
          to label %bb.b unwind label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count23
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !233

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !143
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %i.q = mul nsw i64 %indvars.iv, %i.f
  %i.r = getelementptr inbounds i8, ptr %5, i64 %i.q
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN6LibRaw17fuji_decode_stripEP22fuji_compressed_paramsixjPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1, i32 noundef %i.s, i64 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.r)
          to label %bb.f unwind label %.split

.split:                                           ; preds = %.lr.ph.split
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.t, %.split ], [ %i.l, %.split.us ]
  %i.u = extractvalue { ptr, i32 } %.us-phi, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #14 ; 0 uses
  invoke void @__cxa_rethrow() #15
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.f, %bb.b, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #16
  unreachable

bb.h:                                             ; preds = %bb.c
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw28parse_fuji_compressed_headerEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !142
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e, i32 noundef 0), !call_target !125 ; 0 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16), !call_target !132
  %.not = icmp eq i32 %i.n, 16
  br i1 %.not, label %.lr.ph.i.preheader, label %bb.j

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.a, align 16, !tbaa !16
  %i.q = load i8, ptr %i.o, align 1, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.s = load i8, ptr %i.r, align 2, !tbaa !16    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !16    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.z = load i8, ptr %i.x, align 1, !tbaa !16
  %i.aa = load i8, ptr %i.y, align 2, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ae = load i8, ptr %i.ac, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ai = load i8, ptr %i.ag, align 2, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 11
end_hunk_0
