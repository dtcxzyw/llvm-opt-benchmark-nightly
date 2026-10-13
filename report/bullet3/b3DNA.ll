Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3DNA?download=true
inline.NumInlined: 405
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6bParse4bDNA12initCmpFlagsEPS0_:bb.a

bb.f:                                             ; preds = %.lr.ph57, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 3 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !83 ; 2 uses
  %i.by = sext i16 %i.bx to i32                   ; 3 uses
  %i.bz = shl nsw i32 %i.by, 15
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add nsw i32 %i.ca, %i.by                ; 2 uses
  %i.cc = ashr i32 %i.cb, 10
  %i.cd = xor i32 %i.cc, %i.cb
  %i.ce = mul i32 %i.cd, 9                        ; 2 uses
  %i.cf = ashr i32 %i.ce, 6
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = shl i32 %i.cg, 11
  %i.ci = xor i32 %i.ch, -1
  %i.cj = add nsw i32 %i.cg, %i.ci                ; 2 uses
  %i.ck = ashr i32 %i.cj, 16
  %i.cl = xor i32 %i.ck, %i.cj
  %i.cm = load i32, ptr %i.be, align 8, !tbaa !21
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = and i32 %i.cl, %i.cn                    ; 2 uses
  %i.cp = load i32, ptr %i.bf, align 4, !tbaa !20
  %.not.i.i.i44 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i.i.i44, label %bb.g, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  %.012.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !84 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.g
  %i.ct = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.cu = load ptr, ptr %i.bi, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i45
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i45 ], [ %.0.i.i.i, %bb.i ]
  %i.cv = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !86
  %i.cy = icmp eq i32 %i.cx, %i.by
  br i1 %i.cy, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  %.0.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !84 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.h, !llvm.loop !1

_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i:     ; preds = %bb.h
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %_ZN6bParse4bDNA14getReverseTypeEs.exit

_ZN6bParse4bDNA14getReverseTypeEs.exit:           ; preds = %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.cv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !84 ; 3 uses
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.j

_ZN6bParse4bDNA14getReverseTypeEs.exit.thread:    ; preds = %bb.i, %bb.g, %bb.f, %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  store i32 0, ptr %i.df, align 4, !tbaa !84
  br label %.loopexit

bb.j:                                             ; preds = %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.dg = load i32, ptr %i.bk, align 4, !tbaa !42
  %i.dh = icmp slt i32 %i.dc, %i.dg
  br i1 %i.dh, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !81 ; 3 uses
  %i.dm = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  store i32 1, ptr %i.dn, align 4, !tbaa !84
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !83 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !83
  %i.ds = icmp eq i16 %i.dp, %i.dr
  br i1 %i.ds, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.dt = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.du = sext i16 %i.bx to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !83
  %i.dx = load i16, ptr %i.dl, align 2, !tbaa !83
  %i.dy = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.dz = sext i16 %i.dx to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !83
  %i.ec = icmp eq i16 %i.dw, %i.eb
  br i1 %i.ec, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ed = sext i16 %i.dp to i32
  %.not4350 = icmp sgt i16 %i.dp, 0
  br i1 %.not4350, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.m
  %i.ee = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.ef = load ptr, ptr %i.bq, align 8, !tbaa !34
  br label %bb.o

bb.n:                                             ; preds = %bb.p
  %i.eg = add nuw nsw i32 %.053, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %i.ed
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !102

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %.053 = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.n ]
  %.pn52 = phi ptr [ %i.dl, %.lr.ph ], [ %.03755, %bb.n ] ; 2 uses
  %.pn4251 = phi ptr [ %i.bw, %.lr.ph ], [ %.03854, %bb.n ] ; 2 uses
  %.03854 = getelementptr inbounds nuw i8, ptr %.pn4251, i64 4 ; 2 uses
  %.03755 = getelementptr inbounds nuw i8, ptr %.pn52, i64 4 ; 2 uses
  %i.eh = load i16, ptr %.03854, align 2, !tbaa !83
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !80
  %i.el = load i16, ptr %.03755, align 2, !tbaa !83
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !80
  %i.ep = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ek, ptr noundef nonnull dereferenceable(1) %i.eo) #26
  %.not = icmp eq i32 %i.ep, 0
  br i1 %.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn4251, i64 6
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !83
  %i.es = load ptr, ptr %i.br, align 8, !tbaa !26
  %i.et = sext i16 %i.er to i64
  %i.eu = getelementptr inbounds [24 x i8], ptr %i.es, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !79
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn52, i64 6
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !83
  %i.ey = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.ez = sext i16 %i.ex to i64
  %i.fa = getelementptr inbounds [24 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !79
  %i.fc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ev, ptr noundef nonnull dereferenceable(1) %i.fb) #26
  %.not41 = icmp eq i32 %i.fc, 0
  br i1 %.not41, label %bb.n, label %.loopexit

.critedge:                                        ; preds = %bb.n, %bb.m
  store i32 2, ptr %i.dn, align 4, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.p, %bb.j, %.critedge, %bb.l, %bb.k, %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = load i32, ptr %i.a, align 4, !tbaa !42  ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp slt i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %bb.f, label %.preheader, !llvm.loop !103

bb.q:                                             ; preds = %.lr.ph59, %bb.s
  %i.fg = phi i32 [ %i.fd, %.lr.ph59 ], [ %i.fm, %bb.s ]
  %i.fh = phi ptr [ %.pre67, %.lr.ph59 ], [ %i.fn, %bb.s ] ; 2 uses
  %indvars.iv62 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next63, %bb.s ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv62
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !84
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fl = trunc nuw nsw i64 %indvars.iv62 to i32
  tail call void @_ZN6bParse4bDNA19initRecurseCmpFlagsEi(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %i.fl)
  %.pre66 = load ptr, ptr %i.bu, align 8, !tbaa !19
  %.pre68 = load i32, ptr %i.a, align 4, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.fm = phi i32 [ %i.fg, %bb.q ], [ %.pre68, %bb.r ] ; 2 uses
  %i.fn = phi ptr [ %i.fh, %bb.q ], [ %.pre66, %bb.r ]
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.fo = sext i32 %i.fm to i64
  %i.fp = icmp slt i64 %indvars.iv.next63, %i.fo
  br i1 %i.fp, label %bb.q, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.s, %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse4bDNA4initEPcib(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %4 = alloca %"struct.bParse::bNameInfo", align 8 ; 7 uses
  %5 = alloca %class.b3HashInt, align 4           ; 4 uses
  %6 = alloca %struct.b3HashString, align 8       ; 14 uses
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str, i64 noundef 4) #26
  %i.d = icmp eq i32 %i.c, 0
  %spec.select.idx = select i1 %i.d, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 3 uses
  %.pre = load i32, ptr %spec.select, align 4, !tbaa !84 ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %.pre) ; 2 uses
  store i32 %i.e, ptr %spec.select, align 4, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %i.e, %bb.b ], [ %.pre, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !84
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZL13name_is_arrayPcPiS0_.exit
  %i.m = phi i32 [ 0, %.lr.ph ], [ %i.bg, %_ZL13name_is_arrayPcPiS0_.exit ]
  %.0114 = phi ptr [ %i.g, %.lr.ph ], [ %i.bf, %_ZL13name_is_arrayPcPiS0_.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %.0114, ptr %4, align 8, !tbaa !79
  %i.n = load i8, ptr %.0114, align 1, !tbaa !75
  %i.o = icmp eq i8 %i.n, 42
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0114, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !75
  %i.r = icmp eq i8 %i.q, 42
  %i.s = zext i1 %i.r to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i8 [ 1, %bb.d ], [ %i.s, %bb.e ]
  store i8 %i.t, ptr %i.i, align 8, !tbaa !93
  %i.u = ptrtoaddr ptr %.0114 to i64              ; 2 uses
  %i.v = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0114) #26
  store i32 1, ptr %i.j, align 4, !tbaa !84
  store i32 1, ptr %i.k, align 8, !tbaa !84
  %i.w = call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %.0114, i32 noundef 91) #26 ; 4 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZL13name_is_arrayPcPiS0_.exit, label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.f
  %i.y = shl i64 %i.v, 32
  %i.z = ashr exact i64 %i.y, 32                  ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.0114, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.ad = icmp ult ptr %i.ac, %i.ab
  br i1 %i.ad, label %.lr.ph.preheader.i, label %.thread73.i

.lr.ph.preheader.i:                               ; preds = %.preheader84.i
  %i.ae = xor i64 %i.x, -1
  %i.af = getelementptr i8, ptr %i.w, i64 %i.z
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.u
  %scevgep.i = getelementptr i8, ptr %i.ag, i64 %i.ae ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %i.ah = phi ptr [ %i.ao, %bb.h ], [ %i.ac, %.lr.ph.preheader.i ] ; 3 uses
  %.04790.i = phi i32 [ %i.an, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !75  ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 93
  br i1 %i.aj, label %.thread73.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = add i8 %i.ai, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.ak, 10
  br i1 %or.cond.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %_ZL13name_is_arrayPcPiS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.al = mul nsw i32 %.04790.i, 10
  %i.am = zext nneg i8 %i.ak to i32
  %i.an = add nsw i32 %i.al, %i.am                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ao, %scevgep.i
  br i1 %exitcond.not.i, label %.thread73.i, label %.lr.ph.i

.thread73.i:                                      ; preds = %bb.h, %.lr.ph.i, %.preheader84.i
  %i.ap = phi i32 [ 0, %.preheader84.i ], [ %i.an, %bb.h ], [ %.04790.i, %.lr.ph.i ] ; 2 uses
  %.lcssa87.i = phi ptr [ %i.ac, %.preheader84.i ], [ %scevgep.i, %bb.h ], [ %i.ah, %.lr.ph.i ]
  store i32 %i.ap, ptr %i.k, align 8, !tbaa !84
  %i.aq = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.lcssa87.i, i32 noundef 91) #26 ; 4 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %.not68.i = icmp eq ptr %i.aq, null
  br i1 %.not68.i, label %_ZL13name_is_arrayPcPiS0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread73.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.ab
  br i1 %i.at, label %.lr.ph98.preheader.i, label %.thread80.i

.lr.ph98.preheader.i:                             ; preds = %.preheader.i
  %i.au = xor i64 %i.ar, -1
  %i.av = getelementptr i8, ptr %i.aq, i64 %i.z
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.u
  %scevgep102.i = getelementptr i8, ptr %i.aw, i64 %i.au
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.j, %.lr.ph98.preheader.i
  %i.ax = phi ptr [ %i.be, %bb.j ], [ %i.as, %.lr.ph98.preheader.i ] ; 2 uses
  %.397.i = phi i32 [ %i.bd, %bb.j ], [ 0, %.lr.ph98.preheader.i ] ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !75  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 93
  br i1 %i.az, label %.thread80.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph98.i
  %i.ba = add i8 %i.ay, -48                       ; 2 uses
  %or.cond5.i = icmp ult i8 %i.ba, 10
  br i1 %or.cond5.i, label %bb.j, label %.thread76.i

.thread76.i:                                      ; preds = %bb.i
  %puts69.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %_ZL13name_is_arrayPcPiS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = mul nsw i32 %.397.i, 10
  %i.bc = zext nneg i8 %i.ba to i32
  %i.bd = add nsw i32 %i.bb, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %exitcond103.not.i = icmp eq ptr %i.be, %scevgep102.i
  br i1 %exitcond103.not.i, label %.thread80.i, label %.lr.ph98.i

.thread80.i:                                      ; preds = %bb.j, %.lr.ph98.i, %.preheader.i
  %.3.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bd, %bb.j ], [ %.397.i, %.lr.ph98.i ]
  store i32 %i.ap, ptr %i.j, align 4, !tbaa !84
  store i32 %.3.lcssa.i, ptr %i.k, align 8, !tbaa !84
  br label %_ZL13name_is_arrayPcPiS0_.exit

_ZL13name_is_arrayPcPiS0_.exit:                   ; preds = %bb.f, %.thread.i, %.thread73.i, %.thread76.i, %.thread80.i
  call void @_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %.0114)
  %scevgep = getelementptr i8, ptr %.0114, i64 %strlen
  %i.bf = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bg = add nuw nsw i32 %i.m, 1                 ; 3 uses
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !84
  %i.bh = icmp slt i32 %i.bg, %i.f
  br i1 %i.bh, label %bb.d, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZL13name_is_arrayPcPiS0_.exit, %bb.c
  %.0.lcssa = phi ptr [ %i.g, %bb.c ], [ %i.bf, %_ZL13name_is_arrayPcPiS0_.exit ]
  %i.bi = ptrtoint ptr %.0.lcssa to i64
  %i.bj = add i64 %i.bi, 3
  %i.bk = and i64 %i.bj, -4
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %.pre143 = load i32, ptr %i.bm, align 4, !tbaa !84 ; 2 uses
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bn = call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %.pre143) ; 2 uses
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.bo = phi i32 [ %i.bn, %bb.k ], [ %.pre143, %._crit_edge ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bq = icmp sgt i32 %i.bo, 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  br i1 %i.bq, label %.lr.ph117, label %.._crit_edge118_crit_edge

.._crit_edge118_crit_edge:                        ; preds = %bb.l
  %.pre148 = load i32, ptr %i.br, align 4, !tbaa !35
  br label %._crit_edge118

.lr.ph117:                                        ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.pre144 = load i32, ptr %i.br, align 4, !tbaa !35
  %.pre145 = load i32, ptr %i.bs, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph117, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit
  %i.bv = phi i32 [ 0, %.lr.ph117 ], [ %i.dr, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ]
  %i.bw = phi i32 [ %.pre145, %.lr.ph117 ], [ %i.dk, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ] ; 7 uses
  %i.bx = phi i32 [ %.pre144, %.lr.ph117 ], [ %i.dp, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ] ; 2 uses
  %.2115 = phi ptr [ %i.bp, %.lr.ph117 ], [ %i.dq, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ] ; 3 uses
  %i.by = icmp eq i32 %i.bx, %i.bw
  br i1 %i.by, label %bb.n, label %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.bw, 0
  %i.bz = shl nsw i32 %i.bw, 1
  %i.ca = select i1 %.not.i.i, i32 1, i32 %i.bz   ; 7 uses
  %i.cb = icmp slt i32 %i.bw, %i.ca
  br i1 %i.cb, label %bb.o, label %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i: ; preds = %bb.o
  %i.cc = sext i32 %i.ca to i64
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cd, i32 noundef 16) ; 12 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64
  %i.cg = icmp eq ptr %i.ce, null
  br i1 %i.cg, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i
  %i.ch = load i32, ptr %i.br, align 4, !tbaa !35 ; 7 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %.pre147 = load ptr, ptr %i.bt, align 8, !tbaa !34 ; 11 uses
  br i1 %i.ci, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %.pre147234 = ptrtoaddr ptr %.pre147 to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ch to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ch, 4
  %i.cj = sub i64 %.pre147234, %i.cf
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !80
  %wide.load235 = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x ptr> %wide.load, ptr %i.ck, align 8, !tbaa !80
  store <2 x ptr> %wide.load235, ptr %i.cn, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i.prol
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.i.i.i.prol
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !80
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !107

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cs = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !80
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.next.i.i.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !80
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i.1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.next.i.i.i.1
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !80
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i.2
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.next.i.i.i.2
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !80
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph, !llvm.loop !108

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i, %bb.o
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.br, align 4, !tbaa !35
  %.pre146 = load ptr, ptr %i.bt, align 8, !tbaa !34
  br label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i: ; preds = %.split7.i.i, %.split.i.i
  %i.dg = phi ptr [ %.pre146, %.split7.i.i ], [ %.pre147, %.split.i.i ] ; 2 uses
  %.pre3.i = phi i32 [ 0, %.split7.i.i ], [ %i.ch, %.split.i.i ] ; 2 uses
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.ce, %.split.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.ca, %.split.i.i ] ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i
  %.0.i.i206 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %i.ca, %middle.block ], [ %i.ca, %scalar.ph ], [ %i.ca, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i12.i.i204 = phi ptr [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %i.ce, %middle.block ], [ %i.ce, %scalar.ph ], [ %i.ce, %scalar.ph.prol.loopexit ] ; 2 uses
  %.pre3.i203 = phi i32 [ %.pre3.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %i.ch, %middle.block ], [ %i.ch, %scalar.ph ], [ %i.ch, %scalar.ph.prol.loopexit ]
  %i.dh = phi ptr [ %i.dg, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %.pre147, %middle.block ], [ %.pre147, %scalar.ph ], [ %.pre147, %scalar.ph.prol.loopexit ]
  %i.di = load i8, ptr %i.bu, align 8, !tbaa !33, !range !69, !noundef !77
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.p, label %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i

bb.p:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.dh)
  %.pre.pre.i = load i32, ptr %i.br, align 4, !tbaa !35
  br label %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i: ; preds = %bb.p, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i
  %.0.i.i207 = phi i32 [ %.0.i.i206, %bb.p ], [ %.0.i.i206, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ] ; 2 uses
  %.0.i12.i.i205 = phi ptr [ %.0.i12.i.i204, %bb.p ], [ %.0.i12.i.i204, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ]
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.p ], [ %.pre3.i203, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread ], [ %.pre3.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ]
  store i8 1, ptr %i.bu, align 8, !tbaa !33
  store ptr %.0.i12.i.i205, ptr %i.bt, align 8, !tbaa !34
  store i32 %.0.i.i207, ptr %i.bs, align 8, !tbaa !36
  br label %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit: ; preds = %bb.m, %bb.n, %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i
  %i.dk = phi i32 [ %.0.i.i207, %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i ], [ %i.bw, %bb.n ], [ %i.bw, %bb.m ]
  %i.dl = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i ], [ %i.bw, %bb.n ], [ %i.bx, %bb.m ] ; 2 uses
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !34
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn
  store ptr %.2115, ptr %i.do, align 8, !tbaa !80
  %i.dp = add nsw i32 %i.dl, 1                    ; 3 uses
  store i32 %i.dp, ptr %i.br, align 4, !tbaa !35
  %strlen141 = call i64 @strlen(ptr nonnull dereferenceable(1) %.2115)
  %scevgep142 = getelementptr i8, ptr %.2115, i64 %strlen141
  %i.dq = getelementptr inbounds nuw i8, ptr %scevgep142, i64 1 ; 2 uses
  %i.dr = add nuw nsw i32 %i.bv, 1                ; 3 uses
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !84
  %i.ds = icmp slt i32 %i.dr, %i.bo
  br i1 %i.ds, label %bb.m, label %._crit_edge118, !llvm.loop !109

._crit_edge118:                                   ; preds = %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit, %.._crit_edge118_crit_edge
  %i.dt = phi i32 [ %.pre148, %.._crit_edge118_crit_edge ], [ %i.dp, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ] ; 3 uses
  %.2.lcssa = phi ptr [ %i.bp, %.._crit_edge118_crit_edge ], [ %i.dq, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ]
  %i.du = ptrtoint ptr %.2.lcssa to i64
  %i.dv = add i64 %i.du, 3
  %i.dw = and i64 %i.dv, -4
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  %i.dz = icmp sgt i32 %i.dt, 0
  br i1 %i.dz, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %._crit_edge118
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph122, %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit
  %i.ee = phi i32 [ 0, %.lr.ph122 ], [ %i.gf, %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit ]
  %.0106120 = phi ptr [ %i.dy, %.lr.ph122 ], [ %i.gg, %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit ] ; 4 uses
  br i1 %3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = load i16, ptr %.0106120, align 2, !tbaa !83
  %i.eg = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.ef)
  store i16 %i.eg, ptr %.0106120, align 2, !tbaa !83
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eh = load i32, ptr %i.ea, align 4, !tbaa !49 ; 6 uses
  %i.ei = load i32, ptr %i.eb, align 8, !tbaa !50
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.t, label %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i52 = icmp eq i32 %i.eh, 0
  %i.ek = shl nsw i32 %i.eh, 1
  %i.el = select i1 %.not.i.i52, i32 1, i32 %i.ek ; 8 uses
  %i.em = icmp slt i32 %i.eh, %i.el
  br i1 %i.em, label %bb.u, label %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i53 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i53, label %.split7.i.i66, label %_ZN20b3AlignedObjectArrayIsE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIsE8allocateEi.exit.i.i: ; preds = %bb.u
  %i.en = sext i32 %i.el to i64
  %i.eo = shl nsw i64 %i.en, 1
  %i.ep = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.eo, i32 noundef 16) ; 14 uses
  %i.eq = ptrtoaddr ptr %i.ep to i64
  %i.er = icmp eq ptr %i.ep, null
  br i1 %i.er, label %.split7.i.i66, label %.split.i.i54

.split.i.i54:                                     ; preds = %_ZN20b3AlignedObjectArrayIsE8allocateEi.exit.i.i
  %i.es = load i32, ptr %i.ea, align 4, !tbaa !49 ; 9 uses
  %i.et = icmp sgt i32 %i.es, 0
  %.pre150 = load ptr, ptr %i.ec, align 8, !tbaa !48 ; 13 uses
  br i1 %i.et, label %iter.check, label %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i

iter.check:                                       ; preds = %.split.i.i54
  %.pre150237 = ptrtoaddr ptr %.pre150 to i64
  %wide.trip.count.i.i.i62 = zext nneg i32 %i.es to i64 ; 8 uses
  %min.iters.check240 = icmp ult i32 %i.es, 4
  %i.eu = sub i64 %.pre150237, %i.eq
  %diff.check238 = icmp ugt i64 %i.eu, -32
  %or.cond272 = select i1 %min.iters.check240, i1 true, i1 %diff.check238
  br i1 %or.cond272, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check241 = icmp ult i32 %i.es, 16
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph242

vector.ph242:                                     ; preds = %vector.main.loop.iter.check
  %i.ev = and i64 %wide.trip.count.i.i.i62, 12
  %n.vec243 = and i64 %wide.trip.count.i.i.i62, 2147483632 ; 4 uses
  br label %vector.body244

vector.body244:                                   ; preds = %vector.ph242, %vector.body244
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next248, %vector.body244 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %index245 ; 2 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.pre150, i64 %index245 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load246 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !83
  %wide.load247 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <8 x i16> %wide.load246, ptr %i.ew, align 2, !tbaa !83
  store <8 x i16> %wide.load247, ptr %i.ez, align 2, !tbaa !83
  %index.next248 = add nuw i64 %index245, 16      ; 2 uses
  %i.fa = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.fa, label %middle.block249, label %vector.body244, !llvm.loop !110

middle.block249:                                  ; preds = %vector.body244
  %cmp.n250 = icmp eq i64 %n.vec243, %wide.trip.count.i.i.i62
  br i1 %cmp.n250, label %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block249
  %min.epilog.iters.check = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !122

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec243, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec251 = and i64 %wide.trip.count.i.i.i62, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index252 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next254, %vec.epilog.vector.body ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %index252
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.pre150, i64 %index252
  %wide.load253 = load <4 x i16>, ptr %i.fc, align 2, !tbaa !83
  store <4 x i16> %wide.load253, ptr %i.fb, align 2, !tbaa !83
  %index.next254 = add nuw i64 %index252, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next254, %n.vec251
  br i1 %i.fd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n255 = icmp eq i64 %n.vec251, %wide.trip.count.i.i.i62
  br i1 %cmp.n255, label %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i63.ph = phi i64 [ 0, %iter.check ], [ %n.vec243, %vec.epilog.iter.check ], [ %n.vec251, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter278 = and i64 %wide.trip.count.i.i.i62, 3 ; 2 uses
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i63.prol = phi i64 [ %indvars.iv.next.i.i.i64.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i63.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter280 = phi i64 [ %prol.iter280.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv.i.i.i63.prol
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.pre150, i64 %indvars.iv.i.i.i63.prol
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !83
  store i16 %i.fg, ptr %i.fe, align 2, !tbaa !83
  %indvars.iv.next.i.i.i64.prol = add nuw nsw i64 %indvars.iv.i.i.i63.prol, 1 ; 2 uses
  %prol.iter280.next = add i64 %prol.iter280, 1   ; 2 uses
  %prol.iter280.cmp.not = icmp eq i64 %prol.iter280.next, %xtraiter278
  br i1 %prol.iter280.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !112

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i63.unr = phi i64 [ %indvars.iv.i.i.i63.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i64.prol, %vec.epilog.scalar.ph.prol ]
  %i.fh = sub nsw i64 %indvars.iv.i.i.i63.ph, %wide.trip.count.i.i.i62
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i63 = phi i64 [ %indvars.iv.next.i.i.i64.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i63.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv.i.i.i63
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.pre150, i64 %indvars.iv.i.i.i63
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !83
  store i16 %i.fl, ptr %i.fj, align 2, !tbaa !83
  %indvars.iv.next.i.i.i64 = add nuw nsw i64 %indvars.iv.i.i.i63, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv.next.i.i.i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %.pre150, i64 %indvars.iv.next.i.i.i64
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !83
  store i16 %i.fo, ptr %i.fm, align 2, !tbaa !83
  %indvars.iv.next.i.i.i64.1 = add nuw nsw i64 %indvars.iv.i.i.i63, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv.next.i.i.i64.1
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.pre150, i64 %indvars.iv.next.i.i.i64.1
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !83
  store i16 %i.fr, ptr %i.fp, align 2, !tbaa !83
  %indvars.iv.next.i.i.i64.2 = add nuw nsw i64 %indvars.iv.i.i.i63, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv.next.i.i.i64.2
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %.pre150, i64 %indvars.iv.next.i.i.i64.2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !83
  store i16 %i.fu, ptr %i.fs, align 2, !tbaa !83
  %indvars.iv.next.i.i.i64.3 = add nuw nsw i64 %indvars.iv.i.i.i63, 4 ; 2 uses
  %exitcond.not.i.i.i65.3 = icmp eq i64 %indvars.iv.next.i.i.i64.3, %wide.trip.count.i.i.i62
  br i1 %exitcond.not.i.i.i65.3, label %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread, label %vec.epilog.scalar.ph, !llvm.loop !113

.split7.i.i66:                                    ; preds = %_ZN20b3AlignedObjectArrayIsE8allocateEi.exit.i.i, %bb.u
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.ea, align 4, !tbaa !49
  %.pre149 = load ptr, ptr %i.ec, align 8, !tbaa !48
  br label %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i

_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i: ; preds = %.split7.i.i66, %.split.i.i54
  %i.fv = phi ptr [ %.pre149, %.split7.i.i66 ], [ %.pre150, %.split.i.i54 ] ; 2 uses
  %.pre3.i55 = phi i32 [ 0, %.split7.i.i66 ], [ %i.es, %.split.i.i54 ] ; 2 uses
  %.0.i12.i.i56 = phi ptr [ null, %.split7.i.i66 ], [ %i.ep, %.split.i.i54 ] ; 2 uses
  %.0.i.i57 = phi i32 [ 0, %.split7.i.i66 ], [ %i.el, %.split.i.i54 ] ; 2 uses
  %.not.i10.i.i58 = icmp eq ptr %i.fv, null
  br i1 %.not.i10.i.i58, label %_ZN20b3AlignedObjectArrayIsE10deallocateEv.exit.i.i, label %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block249, %vec.epilog.middle.block, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i
  %.0.i.i57215 = phi i32 [ %.0.i.i57, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i ], [ %i.el, %middle.block249 ], [ %i.el, %vec.epilog.middle.block ], [ %i.el, %vec.epilog.scalar.ph ], [ %i.el, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i12.i.i56213 = phi ptr [ %.0.i12.i.i56, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i ], [ %i.ep, %middle.block249 ], [ %i.ep, %vec.epilog.middle.block ], [ %i.ep, %vec.epilog.scalar.ph ], [ %i.ep, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.pre3.i55212 = phi i32 [ %.pre3.i55, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i ], [ %i.es, %middle.block249 ], [ %i.es, %vec.epilog.middle.block ], [ %i.es, %vec.epilog.scalar.ph ], [ %i.es, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.fw = phi ptr [ %i.fv, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i ], [ %.pre150, %middle.block249 ], [ %.pre150, %vec.epilog.middle.block ], [ %.pre150, %vec.epilog.scalar.ph ], [ %.pre150, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.fx = load i8, ptr %i.ed, align 8, !tbaa !47, !range !69, !noundef !77
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.v, label %_ZN20b3AlignedObjectArrayIsE10deallocateEv.exit.i.i

bb.v:                                             ; preds = %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.fw)
  %.pre.pre.i60 = load i32, ptr %i.ea, align 4, !tbaa !49
  br label %_ZN20b3AlignedObjectArrayIsE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIsE10deallocateEv.exit.i.i: ; preds = %bb.v, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i
  %.0.i.i57216 = phi i32 [ %.0.i.i57215, %bb.v ], [ %.0.i.i57215, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread ], [ %.0.i.i57, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i ]
  %.0.i12.i.i56214 = phi ptr [ %.0.i12.i.i56213, %bb.v ], [ %.0.i12.i.i56213, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread ], [ %.0.i12.i.i56, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i ]
  %.pre.i59 = phi i32 [ %.pre.pre.i60, %bb.v ], [ %.pre3.i55212, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i.thread ], [ %.pre3.i55, %_ZNK20b3AlignedObjectArrayIsE4copyEiiPs.exit.i.i ]
  store i8 1, ptr %i.ed, align 8, !tbaa !47
  store ptr %.0.i12.i.i56214, ptr %i.ec, align 8, !tbaa !48
  store i32 %.0.i.i57216, ptr %i.eb, align 8, !tbaa !50
  br label %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit

_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit:  ; preds = %bb.s, %bb.t, %_ZN20b3AlignedObjectArrayIsE10deallocateEv.exit.i.i
  %i.fz = phi i32 [ %.pre.i59, %_ZN20b3AlignedObjectArrayIsE10deallocateEv.exit.i.i ], [ %i.eh, %bb.t ], [ %i.eh, %bb.s ] ; 2 uses
  %i.ga = load ptr, ptr %i.ec, align 8, !tbaa !48
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds [2 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load i16, ptr %.0106120, align 2, !tbaa !83
  store i16 %i.gd, ptr %i.gc, align 2, !tbaa !83
  %i.ge = add nsw i32 %i.fz, 1
  store i32 %i.ge, ptr %i.ea, align 4, !tbaa !49
  %i.gf = add nuw nsw i32 %i.ee, 1                ; 3 uses
  store i32 %i.gf, ptr %i.b, align 4, !tbaa !84
  %i.gg = getelementptr inbounds nuw i8, ptr %.0106120, i64 2 ; 2 uses
  %i.gh = icmp slt i32 %i.gf, %i.dt
  br i1 %i.gh, label %bb.q, label %._crit_edge123, !llvm.loop !114

._crit_edge123:                                   ; preds = %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit, %._crit_edge118
  %.0106.lcssa = phi ptr [ %i.dy, %._crit_edge118 ], [ %i.gg, %_ZN20b3AlignedObjectArrayIsE9push_backERKs.exit ]
  %i.gi = shl i32 %i.dt, 1
  %i.gj = and i32 %i.gi, 2
  %spec.select110.idx = zext nneg i32 %i.gj to i64
  %spec.select110 = getelementptr inbounds nuw i8, ptr %.0106.lcssa, i64 %spec.select110.idx ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %spec.select110, i64 4 ; 2 uses
  %.pre151 = load i32, ptr %i.gk, align 4, !tbaa !84 ; 2 uses
  br i1 %3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge123
  %i.gl = call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %.pre151) ; 2 uses
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !84
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge123
  %i.gm = phi i32 [ %i.gl, %bb.w ], [ %.pre151, %._crit_edge123 ] ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph134, label %.preheader

.lr.ph134:                                        ; preds = %bb.x
  %i.go = getelementptr inbounds nuw i8, ptr %spec.select110, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.y

.preheader:                                       ; preds = %.loopexit, %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !84
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !42
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %.preheader
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.ae

bb.y:                                             ; preds = %.lr.ph134, %.loopexit
  %i.hf = phi i32 [ 0, %.lr.ph134 ], [ %i.jt, %.loopexit ]
  %.2108132 = phi ptr [ %i.go, %.lr.ph134 ], [ %.3109, %.loopexit ] ; 8 uses
  %i.hg = load i32, ptr %i.gp, align 4, !tbaa !42 ; 6 uses
  %i.hh = load i32, ptr %i.gq, align 8, !tbaa !43
  %i.hi = icmp eq i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.z, label %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit

bb.z:                                             ; preds = %bb.y
  %.not.i.i67 = icmp eq i32 %i.hg, 0
  %i.hj = shl nsw i32 %i.hg, 1
  %i.hk = select i1 %.not.i.i67, i32 1, i32 %i.hj ; 7 uses
  %i.hl = icmp slt i32 %i.hg, %i.hk
  br i1 %i.hl, label %bb.aa, label %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i68 = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i.i68, label %.split7.i.i81, label %_ZN20b3AlignedObjectArrayIPsE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIPsE8allocateEi.exit.i.i: ; preds = %bb.aa
  %i.hm = sext i32 %i.hk to i64
  %i.hn = shl nsw i64 %i.hm, 3
  %i.ho = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.hn, i32 noundef 16) ; 12 uses
  %i.hp = ptrtoaddr ptr %i.ho to i64
  %i.hq = icmp eq ptr %i.ho, null
  br i1 %i.hq, label %.split7.i.i81, label %.split.i.i69

.split.i.i69:                                     ; preds = %_ZN20b3AlignedObjectArrayIPsE8allocateEi.exit.i.i
  %i.hr = load i32, ptr %i.gp, align 4, !tbaa !42 ; 7 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  %.pre153 = load ptr, ptr %i.gr, align 8, !tbaa !41 ; 11 uses
  br i1 %i.hs, label %.lr.ph.i.i.i76, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i76:                                   ; preds = %.split.i.i69
  %.pre153258 = ptrtoaddr ptr %.pre153 to i64
  %wide.trip.count.i.i.i77 = zext nneg i32 %i.hr to i64 ; 5 uses
  %min.iters.check261 = icmp ult i32 %i.hr, 4
  %i.ht = sub i64 %.pre153258, %i.hp
  %diff.check259 = icmp ugt i64 %i.ht, -32
  %or.cond273 = select i1 %min.iters.check261, i1 true, i1 %diff.check259
  br i1 %or.cond273, label %scalar.ph260.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph.i.i.i76
  %n.vec263 = and i64 %wide.trip.count.i.i.i77, 2147483644 ; 3 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next268, %vector.body264 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %index265 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %index265 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %wide.load266 = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !81
  %wide.load267 = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !81
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <2 x ptr> %wide.load266, ptr %i.hu, align 8, !tbaa !81
  store <2 x ptr> %wide.load267, ptr %i.hx, align 8, !tbaa !81
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.hy, label %middle.block269, label %vector.body264, !llvm.loop !115

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count.i.i.i77
  br i1 %cmp.n270, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph260.preheader

scalar.ph260.preheader:                           ; preds = %.lr.ph.i.i.i76, %middle.block269
  %indvars.iv.i.i.i78.ph = phi i64 [ 0, %.lr.ph.i.i.i76 ], [ %n.vec263, %middle.block269 ] ; 3 uses
  %xtraiter281 = and i64 %wide.trip.count.i.i.i77, 3 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %scalar.ph260.prol.loopexit, label %scalar.ph260.prol

scalar.ph260.prol:                                ; preds = %scalar.ph260.preheader, %scalar.ph260.prol
  %indvars.iv.i.i.i78.prol = phi i64 [ %indvars.iv.next.i.i.i79.prol, %scalar.ph260.prol ], [ %indvars.iv.i.i.i78.ph, %scalar.ph260.preheader ] ; 3 uses
  %prol.iter283 = phi i64 [ %prol.iter283.next, %scalar.ph260.prol ], [ 0, %scalar.ph260.preheader ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i.i.i78.prol
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.i.i.i78.prol
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !81
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.prol = add nuw nsw i64 %indvars.iv.i.i.i78.prol, 1 ; 2 uses
  %prol.iter283.next = add i64 %prol.iter283, 1   ; 2 uses
  %prol.iter283.cmp.not = icmp eq i64 %prol.iter283.next, %xtraiter281
  br i1 %prol.iter283.cmp.not, label %scalar.ph260.prol.loopexit, label %scalar.ph260.prol, !llvm.loop !116

scalar.ph260.prol.loopexit:                       ; preds = %scalar.ph260.prol, %scalar.ph260.preheader
  %indvars.iv.i.i.i78.unr = phi i64 [ %indvars.iv.i.i.i78.ph, %scalar.ph260.preheader ], [ %indvars.iv.next.i.i.i79.prol, %scalar.ph260.prol ]
  %i.ic = sub nsw i64 %indvars.iv.i.i.i78.ph, %wide.trip.count.i.i.i77
  %i.id = icmp ugt i64 %i.ic, -4
  br i1 %i.id, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph260

scalar.ph260:                                     ; preds = %scalar.ph260.prol.loopexit, %scalar.ph260
  %indvars.iv.i.i.i78 = phi i64 [ %indvars.iv.next.i.i.i79.3, %scalar.ph260 ], [ %indvars.iv.i.i.i78.unr, %scalar.ph260.prol.loopexit ] ; 6 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i.i.i78
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.i.i.i78
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !81
  store ptr %i.ig, ptr %i.ie, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79 = add nuw nsw i64 %indvars.iv.i.i.i78, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i.i.i79
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.next.i.i.i79
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !81
  store ptr %i.ij, ptr %i.ih, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.1 = add nuw nsw i64 %indvars.iv.i.i.i78, 2 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i.i.i79.1
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.next.i.i.i79.1
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !81
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.2 = add nuw nsw i64 %indvars.iv.i.i.i78, 3 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i.i.i79.2
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.next.i.i.i79.2
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !81
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.3 = add nuw nsw i64 %indvars.iv.i.i.i78, 4 ; 2 uses
  %exitcond.not.i.i.i80.3 = icmp eq i64 %indvars.iv.next.i.i.i79.3, %wide.trip.count.i.i.i77
  br i1 %exitcond.not.i.i.i80.3, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph260, !llvm.loop !117

.split7.i.i81:                                    ; preds = %_ZN20b3AlignedObjectArrayIPsE8allocateEi.exit.i.i, %bb.aa
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.gp, align 4, !tbaa !42
  %.pre152 = load ptr, ptr %i.gr, align 8, !tbaa !41
  br label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i: ; preds = %.split7.i.i81, %.split.i.i69
  %i.iq = phi ptr [ %.pre152, %.split7.i.i81 ], [ %.pre153, %.split.i.i69 ] ; 2 uses
  %.pre3.i70 = phi i32 [ 0, %.split7.i.i81 ], [ %i.hr, %.split.i.i69 ] ; 2 uses
  %.0.i12.i.i71 = phi ptr [ null, %.split7.i.i81 ], [ %i.ho, %.split.i.i69 ] ; 2 uses
  %.0.i.i72 = phi i32 [ 0, %.split7.i.i81 ], [ %i.hk, %.split.i.i69 ] ; 2 uses
  %.not.i10.i.i73 = icmp eq ptr %i.iq, null
  br i1 %.not.i10.i.i73, label %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread: ; preds = %scalar.ph260.prol.loopexit, %scalar.ph260, %middle.block269, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i
  %.0.i.i72224 = phi i32 [ %.0.i.i72, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %i.hk, %middle.block269 ], [ %i.hk, %scalar.ph260 ], [ %i.hk, %scalar.ph260.prol.loopexit ] ; 2 uses
  %.0.i12.i.i71222 = phi ptr [ %.0.i12.i.i71, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %i.ho, %middle.block269 ], [ %i.ho, %scalar.ph260 ], [ %i.ho, %scalar.ph260.prol.loopexit ] ; 2 uses
  %.pre3.i70221 = phi i32 [ %.pre3.i70, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %i.hr, %middle.block269 ], [ %i.hr, %scalar.ph260 ], [ %i.hr, %scalar.ph260.prol.loopexit ]
  %i.ir = phi ptr [ %i.iq, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %.pre153, %middle.block269 ], [ %.pre153, %scalar.ph260 ], [ %.pre153, %scalar.ph260.prol.loopexit ]
  %i.is = load i8, ptr %i.gs, align 8, !tbaa !40, !range !69, !noundef !77
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.ab, label %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ir)
  %.pre.pre.i75 = load i32, ptr %i.gp, align 4, !tbaa !42
  br label %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i: ; preds = %bb.ab, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i
  %.0.i.i72225 = phi i32 [ %.0.i.i72224, %bb.ab ], [ %.0.i.i72224, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i.i72, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ]
  %.0.i12.i.i71223 = phi ptr [ %.0.i12.i.i71222, %bb.ab ], [ %.0.i12.i.i71222, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i12.i.i71, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ]
  %.pre.i74 = phi i32 [ %.pre.pre.i75, %bb.ab ], [ %.pre3.i70221, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread ], [ %.pre3.i70, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ]
  store i8 1, ptr %i.gs, align 8, !tbaa !40
  store ptr %.0.i12.i.i71223, ptr %i.gr, align 8, !tbaa !41
  store i32 %.0.i.i72225, ptr %i.gq, align 8, !tbaa !43
  br label %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit: ; preds = %bb.y, %bb.z, %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i
  %i.iu = phi i32 [ %.pre.i74, %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i ], [ %i.hg, %bb.z ], [ %i.hg, %bb.y ] ; 2 uses
  %i.iv = load ptr, ptr %i.gr, align 8, !tbaa !41
  %i.iw = sext i32 %i.iu to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.iw
  store ptr %.2108132, ptr %i.ix, align 8, !tbaa !81
  %i.iy = add nsw i32 %i.iu, 1
  store i32 %i.iy, ptr %i.gp, align 4, !tbaa !42
  br i1 %3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit
  %i.iz = load i16, ptr %.2108132, align 2, !tbaa !83
  %i.ja = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.iz)
  store i16 %i.ja, ptr %.2108132, align 2, !tbaa !83
  %i.jb = getelementptr inbounds nuw i8, ptr %.2108132, i64 2 ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !83
  %i.jd = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.jc) ; 3 uses
  store i16 %i.jd, ptr %i.jb, align 2, !tbaa !83
  %i.je = zext nneg i16 %i.jd to i32
  %storemerge49125 = getelementptr inbounds nuw i8, ptr %.2108132, i64 4 ; 2 uses
  %i.jf = icmp sgt i16 %i.jd, 0
  br i1 %i.jf, label %.lr.ph130, label %.loopexit

.lr.ph130:                                        ; preds = %bb.ac, %.lr.ph130
  %storemerge49128 = phi ptr [ %storemerge49, %.lr.ph130 ], [ %storemerge49125, %bb.ac ] ; 4 uses
  %.043127 = phi i32 [ %i.jl, %.lr.ph130 ], [ 0, %bb.ac ]
  %.pn126 = phi ptr [ %storemerge49128, %.lr.ph130 ], [ %.2108132, %bb.ac ]
  %i.jg = load i16, ptr %storemerge49128, align 2, !tbaa !83
  %i.jh = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.jg)
  store i16 %i.jh, ptr %storemerge49128, align 2, !tbaa !83
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn126, i64 6 ; 2 uses
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !83
  %i.jk = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.jj)
  store i16 %i.jk, ptr %i.ji, align 2, !tbaa !83
  %i.jl = add nuw nsw i32 %.043127, 1             ; 2 uses
  %storemerge49 = getelementptr inbounds nuw i8, ptr %storemerge49128, i64 4 ; 2 uses
  %exitcond.not = icmp eq i32 %i.jl, %i.je
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph130, !llvm.loop !118

bb.ad:                                            ; preds = %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %.2108132, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !83
  %i.jo = sext i16 %i.jn to i32
  %i.jp = shl nsw i32 %i.jo, 1
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr [2 x i8], ptr %.2108132, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph130, %bb.ac, %bb.ad
  %.3109 = phi ptr [ %i.js, %bb.ad ], [ %storemerge49125, %bb.ac ], [ %storemerge49, %.lr.ph130 ]
  %i.jt = add nuw nsw i32 %i.hf, 1                ; 2 uses
  %i.ju = icmp slt i32 %i.jt, %i.gm
  br i1 %i.ju, label %bb.y, label %.preheader, !llvm.loop !119

bb.ae:                                            ; preds = %.lr.ph136, %_ZN12b3HashStringD2Ev.exit
  %storemerge47135 = phi i32 [ 0, %.lr.ph136 ], [ %i.mq, %_ZN12b3HashStringD2Ev.exit ]
  %i.jv = load ptr, ptr %i.gw, align 8, !tbaa !41
  %i.jw = sext i32 %storemerge47135 to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !81 ; 3 uses
  %i.jz = load i32, ptr %i.gx, align 8, !tbaa !68
  %.not48 = icmp eq i32 %i.jz, 0
  br i1 %.not48, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ka = load i16, ptr %i.jy, align 2, !tbaa !83
  %i.kb = load ptr, ptr %i.gy, align 8, !tbaa !34
  %i.kc = sext i16 %i.ka to i64                   ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !80
  %i.kf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ke, ptr noundef nonnull dereferenceable(9) @.str.1) #26
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kh = load ptr, ptr %i.gz, align 8, !tbaa !48
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.kc
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !83
  %i.kk = sdiv i16 %i.kj, 2
  %i.kl = sext i16 %i.kk to i32
  store i32 %i.kl, ptr %i.gx, align 8, !tbaa !68
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.km = load i16, ptr %i.jy, align 2, !tbaa !83
  %i.kn = sext i16 %i.km to i32
  store i32 %i.kn, ptr %5, align 4, !tbaa !86
  call void @_ZN9b3HashMapI9b3HashIntiE6insertERKS0_RKi(ptr noundef nonnull align 8 dereferenceable(128) %i.ha, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ko = load i16, ptr %i.jy, align 2, !tbaa !83
  %i.kp = load ptr, ptr %i.gy, align 8, !tbaa !34
  %i.kq = sext i16 %i.ko to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !80 ; 4 uses
  store ptr %i.hc, ptr %6, align 8, !tbaa !87
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %.noexc.i, label %bb.ai

.noexc.i:                                         ; preds = %bb.ah
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #25
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.ku = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ks) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ku, ptr %i.a, align 8, !tbaa !88
  %i.kv = icmp ugt i64 %i.ku, 15
  br i1 %i.kv, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ai
  %i.kw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.kw, ptr %6, align 8, !tbaa !74
  %i.kx = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.kx, ptr %i.hc, align 8, !tbaa !75
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.ai
  %i.ky = phi ptr [ %i.kw, %.noexc.i.i ], [ %i.hc, %bb.ai ] ; 2 uses
  switch i64 %i.ku, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.kz = load i8, ptr %i.ks, align 1, !tbaa !75
  store i8 %i.kz, ptr %i.ky, align 1, !tbaa !75
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr nonnull align 1 %i.ks, i64 %i.ku, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i
  %i.la = load i64, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  store i64 %i.la, ptr %i.hd, align 8, !tbaa !89
  %i.lb = load ptr, ptr %6, align 8, !tbaa !74
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  store i8 0, ptr %i.lc, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ld = load i64, ptr %i.hd, align 8, !tbaa !89 ; 4 uses
  %i.le = trunc i64 %i.ld to i32
  %i.lf = icmp sgt i32 %i.le, 0
  br i1 %i.lf, label %.lr.ph.i82, label %_ZN12b3HashStringC2EPKc.exit

.lr.ph.i82:                                       ; preds = %bb.al
  %i.lg = load ptr, ptr %6, align 8, !tbaa !74    ; 5 uses
  %wide.trip.count.i = and i64 %i.ld, 2147483647
  %i.lh = add nsw i64 %wide.trip.count.i, -1
  %xtraiter284 = and i64 %i.ld, 3                 ; 3 uses
  %i.li = icmp ult i64 %i.lh, 3
  br i1 %i.li, label %.epil.preheader, label %.lr.ph.i82.new

.lr.ph.i82.new:                                   ; preds = %.lr.ph.i82
  %unroll_iter = and i64 %i.ld, 2147483644
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i82.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i82.new ], [ %indvars.iv.next.i.3, %bb.am ] ; 5 uses
  %.01012.i = phi i32 [ -2128831035, %.lr.ph.i82.new ], [ %i.mf, %bb.am ]
  %niter = phi i64 [ 0, %.lr.ph.i82.new ], [ %niter.next.3, %bb.am ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !75
  %i.ll = sext i8 %i.lk to i32
  %i.lm = xor i32 %.01012.i, %i.ll
  %i.ln = mul i32 %i.lm, 16777619
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !75
  %i.lr = sext i8 %i.lq to i32
  %i.ls = xor i32 %i.ln, %i.lr
  %i.lt = mul i32 %i.ls, 16777619
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !75
  %i.lx = sext i8 %i.lw to i32
  %i.ly = xor i32 %i.lt, %i.lx
  %i.lz = mul i32 %i.ly, 16777619
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 3
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !75
  %i.md = sext i8 %i.mc to i32
  %i.me = xor i32 %i.lz, %i.md
  %i.mf = mul i32 %i.me, 16777619                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, label %bb.am, !llvm.loop !2

_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa:  ; preds = %bb.am
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %_ZN12b3HashStringC2EPKc.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, %.lr.ph.i82
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i82 ], [ %indvars.iv.next.i.3, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ]
  %.01012.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i82 ], [ %i.mf, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter284, 0
  call void @llvm.assume(i1 %lcmp.mod287)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.an ] ; 2 uses
  %.01012.i.epil = phi i32 [ %.01012.i.epil.init, %.epil.preheader ], [ %i.mk, %bb.an ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.an ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i.epil
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !75
  %i.mi = sext i8 %i.mh to i32
  %i.mj = xor i32 %.01012.i.epil, %i.mi
  %i.mk = mul i32 %i.mj, 16777619                 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter284
  br i1 %epil.iter.cmp.not, label %_ZN12b3HashStringC2EPKc.exit, label %bb.an, !llvm.loop !120

_ZN12b3HashStringC2EPKc.exit:                     ; preds = %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, %bb.an, %bb.al
  %.010.lcssa.i = phi i32 [ -2128831035, %bb.al ], [ %i.mf, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ], [ %i.mk, %bb.an ]
  store i32 %.010.lcssa.i, ptr %i.he, align 8, !tbaa !92
  invoke void @_ZN9b3HashMapI12b3HashStringiE6insertERKS0_RKi(ptr noundef nonnull align 8 dereferenceable(128) %i.hb, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZN12b3HashStringC2EPKc.exit
  %i.ml = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.hc
  br i1 %i.mm, label %_ZN12b3HashStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ao
  %i.mn = load i64, ptr %i.hc, align 8, !tbaa !75
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #24
  br label %_ZN12b3HashStringD2Ev.exit

_ZN12b3HashStringD2Ev.exit:                       ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.mp = load i32, ptr %i.b, align 4, !tbaa !84
  %i.mq = add nsw i32 %i.mp, 1                    ; 3 uses
  store i32 %i.mq, ptr %i.b, align 4, !tbaa !84
  %i.mr = load i32, ptr %i.gt, align 4, !tbaa !42
  %i.ms = icmp slt i32 %i.mq, %i.mr
  br i1 %i.ms, label %bb.ae, label %._crit_edge137, !llvm.loop !121

bb.ap:                                            ; preds = %_ZN12b3HashStringC2EPKc.exit
  %i.mt = landingpad { ptr, i32 }
          cleanup
  %i.mu = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.hc
  br i1 %i.mv, label %_ZN12b3HashStringD2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.ap
  %i.mw = load i64, ptr %i.hc, align 8, !tbaa !75
  %i.mx = add i64 %i.mw, 1
end_hunk_0
