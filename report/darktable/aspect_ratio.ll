Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/aspect_ratio?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw11fuji_rotateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381670 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i32
  %i.d = add nsw i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.f = load i16, ptr %i.e, align 4, !tbaa !87
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = add nuw nsw i32 %i.d, %i.g
  %i.i = lshr i32 %i.h, %i.g                      ; 2 uses
  %i.j = trunc i32 %i.i to i16
  store i16 %i.j, ptr %i.a, align 2, !tbaa !86
  %i.k = and i32 %i.i, 65535                      ; 2 uses
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = fmul reassoc nnan nsz arcp contract afn double %i.l, f0x3FF6A09E667F3BCC
  %i.n = fptoui double %i.m to i16                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !73
  %i.r = zext i16 %i.q to i32
  %i.s = sub nsw i32 %i.r, %i.k
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.s to double
  %i.u = fmul reassoc nnan nsz arcp contract afn double %i.t, f0x3FF6A09E667F3BCC
  %i.v = fptoui double %i.u to i16                ; 4 uses
  %i.w = zext i16 %i.n to i64                     ; 2 uses
  %i.x = zext i16 %i.v to i64                     ; 2 uses
  %i.y = mul nuw nsw i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !88
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 17
  %i.ad = icmp samesign ugt i64 %i.y, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 4) #7 ; 2 uses
  store i32 10, ptr %i.ae, align 16, !tbaa !75
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.af = shl nuw nsw i64 %i.w, 3
  %i.ag = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.x, i64 noundef %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %.not60 = icmp eq ptr %i.ai, null
  br i1 %.not60, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !77
  %i.al = tail call noundef i32 %i.ai(ptr noundef %i.ak, i32 noundef 32768, i32 noundef 0, i32 noundef 2)
  %.not61 = icmp eq i32 %i.al, 0
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = tail call ptr @__cxa_allocate_exception(i64 4) #7 ; 2 uses
  store i32 6, ptr %i.am, align 16, !tbaa !75
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #8
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.not69 = icmp eq i16 %i.v, 0
  br i1 %.not69, label %._crit_edge68.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %.not70 = icmp eq i16 %i.n, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 540
  br i1 %.not70, label %._crit_edge68.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ap = zext i16 %i.n to i64                    ; 2 uses
  %wide.trip.count80 = zext i16 %i.v to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv77 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next78, %._crit_edge ] ; 4 uses
  %i.aq = mul nuw nsw i64 %indvars.iv77, %i.ap
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv72 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next73, %.loopexit ] ; 4 uses
  %i.ar = load i16, ptr %i.a, align 2, !tbaa !86
  %i.as = uitofp i16 %i.ar to double
  %i.at = sub nsw i64 %indvars.iv77, %indvars.iv72
  %i.au = trunc nsw i64 %i.at to i32
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.au to double
  %i.aw = fmul reassoc nnan nsz arcp contract afn double %i.av, f0x3FE6A09E667F3BCD
  %i.ax = fadd reassoc nsz arcp contract afn double %i.aw, %i.as
  %i.ay = fptrunc reassoc nsz arcp contract afn double %i.ax to float ; 2 uses
  %i.az = fptoui float %i.ay to i32               ; 3 uses
  %i.ba = add nuw nsw i64 %indvars.iv72, %indvars.iv77
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = uitofp nsz nneg i32 %i.bb to double
  %i.bd = fmul reassoc nnan nsz arcp contract afn double %i.bc, f0x3FE6A09E667F3BCD
  %i.be = fptrunc reassoc nsz arcp contract afn double %i.bd to float ; 2 uses
  %i.bf = fptoui float %i.be to i32               ; 3 uses
  %i.bg = load i16, ptr %i.p, align 4, !tbaa !73
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -2
  %i.bj = icmp ult i32 %i.bi, %i.az
  br i1 %i.bj, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load i16, ptr %i.an, align 2, !tbaa !78
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = add nsw i32 %i.bl, -2
  %i.bn = icmp ult i32 %i.bm, %i.bf
  br i1 %i.bn, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = uitofp reassoc nsz arcp contract afn i32 %i.az to float
  %i.bp = fsub reassoc nnan nsz arcp contract afn float %i.ay, %i.bo ; 3 uses
  %i.bq = uitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.br = fsub reassoc nsz arcp contract afn float %i.be, %i.bq ; 7 uses
  %i.bs = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.bt = mul i32 %i.bl, %i.az
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = zext i32 %i.bf to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw ; 7 uses
  %i.by = load i32, ptr %i.ao, align 4, !tbaa !80 ; 4 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.ca = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.br ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv72 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.by to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cc = icmp eq i32 %i.by, 1
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !81
  %i.cf = uitofp i16 %i.ce to float
  %i.cg = fmul reassoc nsz arcp contract afn float %i.ca, %i.cf
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !81
  %i.cj = uitofp i16 %i.ci to float
  %i.ck = fmul reassoc nsz arcp contract afn float %i.br, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cg ; 2 uses
  %i.cm = load i16, ptr %i.an, align 2, !tbaa !78
  %i.cn = zext i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !81
  %i.cr = uitofp i16 %i.cq to float
  %i.cs = fmul reassoc nsz arcp contract afn float %i.ca, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !81
  %i.cw = uitofp i16 %i.cv to float
  %i.cx = fmul reassoc nsz arcp contract afn float %i.br, %i.cw
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cs, %i.cl
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, %i.cx
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.bp
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, %i.cl
  %i.dc = fptoui float %i.db to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %indvars.iv
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !81
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next
  %i.df = load i16, ptr %i.de, align 2, !tbaa !81
  %i.dg = uitofp i16 %i.df to float
  %i.dh = fmul reassoc nsz arcp contract afn float %i.ca, %i.dg
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %indvars.iv.next
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !81
  %i.dk = uitofp i16 %i.dj to float
  %i.dl = fmul reassoc nsz arcp contract afn float %i.br, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dh ; 2 uses
  %i.dn = load i16, ptr %i.an, align 2, !tbaa !78
  %i.do = zext i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.next
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !81
  %i.ds = uitofp i16 %i.dr to float
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ca, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.next
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !81
  %i.dx = uitofp i16 %i.dw to float
  %i.dy = fmul reassoc nsz arcp contract afn float %i.br, %i.dx
  %i.dz = fsub reassoc nsz arcp contract afn float %i.dt, %i.dm
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dy
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.bp
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dm
  %i.ed = fptoui float %i.ec to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %indvars.iv.next
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !81
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !83

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod87 = trunc i32 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.epil.init
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !81
  %i.eh = uitofp i16 %i.eg to float
  %i.ei = fmul reassoc nsz arcp contract afn float %i.ca, %i.eh
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %indvars.iv.epil.init
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !81
  %i.el = uitofp i16 %i.ek to float
  %i.em = fmul reassoc nsz arcp contract afn float %i.br, %i.el
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ei ; 2 uses
  %i.eo = load i16, ptr %i.an, align 2, !tbaa !78
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv.epil.init
  %i.es = load i16, ptr %i.er, align 2, !tbaa !81
  %i.et = uitofp i16 %i.es to float
  %i.eu = fmul reassoc nsz arcp contract afn float %i.ca, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %indvars.iv.epil.init
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !81
  %i.ey = uitofp i16 %i.ex to float
  %i.ez = fmul reassoc nsz arcp contract afn float %i.br, %i.ey
  %i.fa = fsub reassoc nsz arcp contract afn float %i.eu, %i.en
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ez
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, %i.bp
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fc, %i.en
  %i.fe = fptoui float %i.fd to i16
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %indvars.iv.epil.init
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !81
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.j, %bb.h, %bb.i
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %i.ap
  br i1 %exitcond76.not, label %._crit_edge, label %bb.h, !llvm.loop !84

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge68.split, label %.preheader, !llvm.loop !85

._crit_edge68.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.g
  %i.fg = load ptr, ptr %i.o, align 8, !tbaa !79
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.n, ptr %i.fh, align 2, !tbaa !78
  store i16 %i.v, ptr %i.p, align 4, !tbaa !73
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !79
  store i16 0, ptr %i.a, align 2, !tbaa !86
  %i.fi = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %.not62 = icmp eq ptr %i.fi, null
  br i1 %.not62, label %bb.n, label %bb.l

bb.l:                                             ; preds = %._crit_edge68.split
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !77
  %i.fl = tail call noundef i32 %i.fi(ptr noundef %i.fk, i32 noundef 32768, i32 noundef 1, i32 noundef 2)
  %.not63 = icmp eq i32 %i.fl, 0
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fm = tail call ptr @__cxa_allocate_exception(i64 4) #7 ; 2 uses
  store i32 6, ptr %i.fm, align 16, !tbaa !75
  tail call void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #8
  unreachable

bb.n:                                             ; preds = %._crit_edge68.split, %bb.l, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw7stretchEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !93 ; 2 uses
  %i.d = fcmp reassoc nsz arcp contract afn oeq double %i.c, 1.000000e+00
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = tail call noundef i32 %i.f(ptr noundef %i.h, i32 noundef 524288, i32 noundef 0, i32 noundef 2)
  %.not76 = icmp eq i32 %i.i, 0
  br i1 %.not76, label %._crit_edge123, label %bb.d

._crit_edge123:                                   ; preds = %bb.c
  %.pre = load double, ptr %i.b, align 8, !tbaa !93
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 4) #7 ; 2 uses
  store i32 6, ptr %i.j, align 16, !tbaa !75
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #8
  unreachable

bb.e:                                             ; preds = %._crit_edge123, %bb.b
  %i.k = phi double [ %.pre, %._crit_edge123 ], [ %i.c, %bb.b ] ; 3 uses
  %i.l = fcmp reassoc nsz arcp contract afn olt double %i.k, 1.000000e+00
  br i1 %i.l, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.n = load i16, ptr %i.m, align 4, !tbaa !73
  %i.o = uitofp i16 %i.n to double
  %i.p = fdiv reassoc nsz arcp contract afn double %i.o, %i.k
  %i.q = fadd reassoc nsz arcp contract afn double %i.p, 5.000000e-01
  %i.r = fptoui double %i.q to i16                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 7 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !78
  %i.u = zext i16 %i.t to i64
  %i.v = zext i16 %i.r to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.u, i64 noundef %i.w) ; 5 uses
  %i.y = zext i16 %i.r to i32
  %.not106 = icmp eq i16 %i.r, 0
  br i1 %.not106, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.f
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ab = load double, ptr %i.b, align 8, !tbaa !93
  %.pre125 = load i16, ptr %i.s, align 2, !tbaa !78 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph102, %._crit_edge97.split
  %i.ac = phi i16 [ %.pre125, %.lr.ph102 ], [ %i.dr, %._crit_edge97.split ] ; 4 uses
  %i.ad = phi i16 [ %.pre125, %.lr.ph102 ], [ %i.ds, %._crit_edge97.split ]
  %.0100 = phi double [ 0.000000e+00, %.lr.ph102 ], [ %i.du, %._crit_edge97.split ] ; 3 uses
  %.06498 = phi i32 [ 0, %.lr.ph102 ], [ %i.dt, %._crit_edge97.split ] ; 5 uses
  %i.ae = fptosi double %.0100 to i32             ; 3 uses
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  %i.ag = fsub reassoc nsz arcp contract afn double %.0100, %i.af
  %i.ah = fptosi double %i.ag to i32
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.ah to double ; 4 uses
  %.not107 = icmp eq i16 %i.ad, 0
  br i1 %.not107, label %._crit_edge97.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !80 ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.preheader.preheader, label %._crit_edge97.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.al = zext i16 %i.ac to i32                   ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.ae
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.an ; 2 uses
  %i.ap = add nsw i32 %i.ae, 1
  %i.aq = load i16, ptr %i.m, align 4, !tbaa !73
  %i.ar = zext i16 %i.aq to i32
  %i.as = icmp slt i32 %i.ap, %i.ar
  %i.at = shl nuw nsw i32 %i.al, 2
  %narrow = select i1 %i.as, i32 %i.at, i32 0
  %.066.idx = zext nneg i32 %narrow to i64
  %.066 = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.066.idx
  %exitcond121.not = icmp eq i32 %i.aj, 1
  %exitcond121.not.1 = icmp eq i32 %i.aj, 2
  %exitcond121.not.2 = icmp eq i32 %i.aj, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge93
  %.06296 = phi i32 [ %i.dl, %._crit_edge93 ], [ 0, %.preheader.preheader ] ; 5 uses
  %.16795 = phi ptr [ %i.dn, %._crit_edge93 ], [ %.066, %.preheader.preheader ] ; 5 uses
  %.06894 = phi ptr [ %i.dm, %._crit_edge93 ], [ %i.ao, %.preheader.preheader ] ; 5 uses
  %i.au = load i16, ptr %.06894, align 2, !tbaa !81
  %i.av = uitofp i16 %i.au to double              ; 2 uses
  %i.aw = load i16, ptr %.16795, align 2, !tbaa !81
  %i.ax = uitofp i16 %i.aw to double
  %i.ay = fsub reassoc nnan nsz arcp contract afn double %i.ax, %i.av
  %i.az = fmul reassoc nsz arcp contract afn double %i.ay, %i.ai
  %i.ba = fadd reassoc nsz arcp contract afn double %i.av, 5.000000e-01
  %i.bb = fadd reassoc nsz arcp contract afn double %i.ba, %i.az
  %i.bc = fptoui double %i.bb to i16
  %i.bd = load i16, ptr %i.s, align 2, !tbaa !78
  %i.be = zext i16 %i.bd to i32
  %i.bf = mul nuw nsw i32 %.06498, %i.be
  %i.bg = add nuw nsw i32 %i.bf, %.06296
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bh
  store i16 %i.bc, ptr %i.bi, align 2, !tbaa !81
  br i1 %exitcond121.not, label %._crit_edge93, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %.06894, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !81
  %i.bl = uitofp i16 %i.bk to double              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.16795, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !81
  %i.bo = uitofp i16 %i.bn to double
  %i.bp = fsub reassoc nnan nsz arcp contract afn double %i.bo, %i.bl
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, %i.ai
  %i.br = fadd reassoc nsz arcp contract afn double %i.bl, 5.000000e-01
  %i.bs = fadd reassoc nsz arcp contract afn double %i.br, %i.bq
  %i.bt = fptoui double %i.bs to i16
  %i.bu = load i16, ptr %i.s, align 2, !tbaa !78
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw nsw i32 %.06498, %i.bv
  %i.bx = add nuw nsw i32 %i.bw, %.06296
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 %i.bt, ptr %i.ca, align 2, !tbaa !81
  br i1 %exitcond121.not.1, label %._crit_edge93, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %.06894, i64 4
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !81
  %i.cd = uitofp i16 %i.cc to double              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.16795, i64 4
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %i.cg = uitofp i16 %i.cf to double
  %i.ch = fsub reassoc nnan nsz arcp contract afn double %i.cg, %i.cd
  %i.ci = fmul reassoc nsz arcp contract afn double %i.ch, %i.ai
  %i.cj = fadd reassoc nsz arcp contract afn double %i.cd, 5.000000e-01
  %i.ck = fadd reassoc nsz arcp contract afn double %i.cj, %i.ci
  %i.cl = fptoui double %i.ck to i16
  %i.cm = load i16, ptr %i.s, align 2, !tbaa !78
  %i.cn = zext i16 %i.cm to i32
  %i.co = mul nuw nsw i32 %.06498, %i.cn
  %i.cp = add nuw nsw i32 %i.co, %.06296
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i16 %i.cl, ptr %i.cs, align 2, !tbaa !81
  br i1 %exitcond121.not.2, label %._crit_edge93, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06894, i64 6
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !81
  %i.cv = uitofp i16 %i.cu to double              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.16795, i64 6
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !81
  %i.cy = uitofp i16 %i.cx to double
  %i.cz = fsub reassoc nnan nsz arcp contract afn double %i.cy, %i.cv
  %i.da = fmul reassoc nsz arcp contract afn double %i.cz, %i.ai
  %i.db = fadd reassoc nsz arcp contract afn double %i.cv, 5.000000e-01
  %i.dc = fadd reassoc nsz arcp contract afn double %i.db, %i.da
  %i.dd = fptoui double %i.dc to i16
  %i.de = load i16, ptr %i.s, align 2, !tbaa !78
  %i.df = zext i16 %i.de to i32
  %i.dg = mul nuw nsw i32 %.06498, %i.df
  %i.dh = add nuw nsw i32 %i.dg, %.06296
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  store i16 %i.dd, ptr %i.dk, align 2, !tbaa !81
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.j, %bb.i, %bb.h, %.preheader
  %i.dl = add nuw nsw i32 %.06296, 1              ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.06894, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.16795, i64 8
  %i.do = load i16, ptr %i.s, align 2, !tbaa !78  ; 3 uses
  %i.dp = zext i16 %i.do to i32
  %i.dq = icmp samesign ult i32 %i.dl, %i.dp
  br i1 %i.dq, label %.preheader, label %._crit_edge97.split, !llvm.loop !89

._crit_edge97.split:                              ; preds = %._crit_edge93, %.preheader.lr.ph, %bb.g
  %i.dr = phi i16 [ %i.ac, %bb.g ], [ %i.ac, %.preheader.lr.ph ], [ %i.do, %._crit_edge93 ]
  %i.ds = phi i16 [ 0, %bb.g ], [ %i.ac, %.preheader.lr.ph ], [ %i.do, %._crit_edge93 ]
  %i.dt = add nuw nsw i32 %.06498, 1              ; 2 uses
  %i.du = fadd reassoc nsz arcp contract afn double %i.ab, %.0100
  %exitcond122.not = icmp eq i32 %i.dt, %i.y
  br i1 %exitcond122.not, label %._crit_edge103, label %bb.g, !llvm.loop !90

._crit_edge103:                                   ; preds = %._crit_edge97.split, %bb.f
  store i16 %i.r, ptr %i.m, align 4, !tbaa !73
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !78
  %i.dx = uitofp i16 %i.dw to double
  %i.dy = fmul reassoc nsz arcp contract afn double %i.k, %i.dx
  %i.dz = fadd reassoc nsz arcp contract afn double %i.dy, 5.000000e-01
  %i.ea = fptoui double %i.dz to i16              ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ec = load i16, ptr %i.eb, align 4, !tbaa !73
  %i.ed = zext i16 %i.ec to i64
  %i.ee = zext i16 %i.ea to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ed, i64 noundef %i.ef) ; 3 uses
  %1 = ptrtoaddr ptr %i.eg to i64
  %.not104 = icmp eq i16 %i.ea, 0
  br i1 %.not104, label %._crit_edge89, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ej = load double, ptr %i.b, align 8, !tbaa !93
  %i.ek = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ej
  %i.el = zext i16 %i.ea to i64                   ; 3 uses
  %.pre124 = load i16, ptr %i.eb, align 4, !tbaa !73
  %2 = shl nuw nsw i64 %i.el, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %._crit_edge84.split
  %i.em = phi i16 [ %.pre124, %.lr.ph ], [ %i.gt, %._crit_edge84.split ] ; 2 uses
  %indvars.iv112 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next113, %._crit_edge84.split ] ; 3 uses
  %.187 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.gu, %._crit_edge84.split ] ; 3 uses
  %3 = shl nuw nsw i64 %indvars.iv112, 3
  %4 = add i64 %3, %1
  %i.en = fptosi double %.187 to i32              ; 3 uses
  %i.eo = sitofp reassoc nsz arcp contract afn i32 %i.en to double
  %i.ep = fsub reassoc nsz arcp contract afn double %.187, %i.eo
  %i.eq = fptosi double %i.ep to i32
  %i.er = sitofp reassoc nsz arcp contract afn i32 %i.eq to double ; 5 uses
  %.not105 = icmp eq i16 %i.em, 0
  br i1 %.not105, label %._crit_edge84.split, label %.preheader79.lr.ph

.preheader79.lr.ph:                               ; preds = %bb.l
  %i.es = load i32, ptr %i.ei, align 4, !tbaa !80 ; 5 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.preheader79.preheader, label %._crit_edge84.split

.preheader79.preheader:                           ; preds = %.preheader79.lr.ph
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.es, i32 4)
  %i.eu = sext i32 %i.en to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.eu ; 2 uses
  %i.ew = add nsw i32 %i.en, 1
  %i.ex = load i16, ptr %i.dv, align 2, !tbaa !78
  %i.ey = zext i16 %i.ex to i32
  %i.ez = icmp slt i32 %i.ew, %i.ey
  %spec.select.idx = select i1 %i.ez, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ev, i64 %spec.select.idx
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv112
  %wide.trip.count = zext nneg i32 %invariant.smin to i64
  %broadcast.splatinsert140 = insertelement <4 x double> poison, double %i.er, i64 0
  %broadcast.splat141 = shufflevector <4 x double> %broadcast.splatinsert140, <4 x double> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %5 = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %exitcond.not = icmp eq i32 %i.es, 1
  %exitcond.not.1 = icmp eq i32 %i.es, 2
  %exitcond.not.2 = icmp eq i32 %i.es, 3
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader79.preheader ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %.382 = phi ptr [ %spec.select, %.preheader79.preheader ], [ %i.gp, %._crit_edge ] ; 7 uses
  %.16981 = phi ptr [ %i.ev, %.preheader79.preheader ], [ %i.go, %._crit_edge ] ; 7 uses
  %i.fa = mul nuw nsw i64 %indvars.iv109, %i.el
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.fa ; 5 uses
  %.16981138 = ptrtoaddr ptr %.16981 to i64
  %.382137 = ptrtoaddr ptr %.382 to i64
  %6 = mul nuw nsw i64 %indvars.iv109, %2
  %7 = add nuw i64 %4, %6                         ; 2 uses
  %8 = sub i64 %.382137, %7
  %diff.check = icmp ugt i64 %8, -8
  %9 = sub i64 %.16981138, %7
  %diff.check139 = icmp ugt i64 %9, -8
  %conflict.rdx = or i1 %diff.check, %diff.check139
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader79
  %wide.masked.load = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %.16981, <4 x i1> %5, <4 x i16> poison), !tbaa !81
  %10 = uitofp <4 x i16> %wide.masked.load to <4 x double> ; 2 uses
  %wide.masked.load142 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %.382, <4 x i1> %5, <4 x i16> poison), !tbaa !81
  %11 = uitofp <4 x i16> %wide.masked.load142 to <4 x double>
  %12 = fsub reassoc nnan nsz arcp contract afn <4 x double> %11, %10
  %13 = fmul reassoc nsz arcp contract afn <4 x double> %12, %broadcast.splat141
  %14 = fadd reassoc nsz arcp contract afn <4 x double> %10, splat (double 5.000000e-01)
  %15 = fadd reassoc nsz arcp contract afn <4 x double> %14, %13
  %16 = fptoui <4 x double> %15 to <4 x i16>
  tail call void @llvm.masked.store.v4i16.p0(<4 x i16> %16, ptr align 2 %gep, <4 x i1> %5), !tbaa !81
  br label %._crit_edge

scalar.ph:                                        ; preds = %.preheader79
  %17 = load i16, ptr %.16981, align 2, !tbaa !81
  %18 = uitofp i16 %17 to double                  ; 2 uses
  %19 = load i16, ptr %.382, align 2, !tbaa !81
  %20 = uitofp i16 %19 to double
  %21 = fsub reassoc nnan nsz arcp contract afn double %20, %18
  %22 = fmul reassoc nsz arcp contract afn double %21, %i.er
  %23 = fadd reassoc nsz arcp contract afn double %18, 5.000000e-01
  %24 = fadd reassoc nsz arcp contract afn double %23, %22
  %25 = fptoui double %24 to i16
  store i16 %25, ptr %gep, align 2, !tbaa !81
  br i1 %exitcond.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %scalar.ph
  %i.fb = getelementptr inbounds nuw i8, ptr %.16981, i64 2
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !81
  %i.fd = uitofp i16 %i.fc to double              ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.382, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !81
  %i.fg = uitofp i16 %i.ff to double
  %i.fh = fsub reassoc nnan nsz arcp contract afn double %i.fg, %i.fd
  %i.fi = fmul reassoc nsz arcp contract afn double %i.fh, %i.er
  %i.fj = fadd reassoc nsz arcp contract afn double %i.fd, 5.000000e-01
  %i.fk = fadd reassoc nsz arcp contract afn double %i.fj, %i.fi
  %i.fl = fptoui double %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %gep, i64 2
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !81
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fn = getelementptr inbounds nuw i8, ptr %.16981, i64 4
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !81
  %i.fp = uitofp i16 %i.fo to double              ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.382, i64 4
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !81
  %i.fs = uitofp i16 %i.fr to double
  %i.ft = fsub reassoc nnan nsz arcp contract afn double %i.fs, %i.fp
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, %i.er
  %i.fv = fadd reassoc nsz arcp contract afn double %i.fp, 5.000000e-01
  %i.fw = fadd reassoc nsz arcp contract afn double %i.fv, %i.fu
  %i.fx = fptoui double %i.fw to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %gep, i64 4
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !81
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw i8, ptr %.16981, i64 6
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !81
  %i.gb = uitofp i16 %i.ga to double              ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.382, i64 6
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !81
  %i.ge = uitofp i16 %i.gd to double
  %i.gf = fsub reassoc nnan nsz arcp contract afn double %i.ge, %i.gb
  %i.gg = fmul reassoc nsz arcp contract afn double %i.gf, %i.er
  %i.gh = fadd reassoc nsz arcp contract afn double %i.gb, 5.000000e-01
  %i.gi = fadd reassoc nsz arcp contract afn double %i.gh, %i.gg
  %i.gj = fptoui double %i.gi to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %gep, i64 6
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !81
  br label %._crit_edge

._crit_edge:                                      ; preds = %scalar.ph, %bb.m, %bb.n, %bb.o, %vector.body
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.gl = load i16, ptr %i.dv, align 2, !tbaa !78
  %i.gm = zext i16 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 2                ; 2 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.16981, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.382, i64 %i.gn
  %i.gq = load i16, ptr %i.eb, align 4, !tbaa !73 ; 2 uses
  %i.gr = zext i16 %i.gq to i64
  %i.gs = icmp samesign ult i64 %indvars.iv.next110, %i.gr
  br i1 %i.gs, label %.preheader79, label %._crit_edge84.split, !llvm.loop !91

._crit_edge84.split:                              ; preds = %._crit_edge, %.preheader79.lr.ph, %bb.l
  %i.gt = phi i16 [ 0, %bb.l ], [ %i.em, %.preheader79.lr.ph ], [ %i.gq, %._crit_edge ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.gu = fadd reassoc nsz arcp contract afn double %i.ek, %.187
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %i.el
  br i1 %exitcond116.not, label %._crit_edge89, label %bb.l, !llvm.loop !92

._crit_edge89:                                    ; preds = %._crit_edge84.split, %bb.k
  store i16 %i.ea, ptr %i.dv, align 2, !tbaa !78
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge89, %._crit_edge103
  %.070 = phi ptr [ %i.x, %._crit_edge103 ], [ %i.eg, %._crit_edge89 ]
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.gv)
  store ptr %.070, ptr %i.a, align 8, !tbaa !79
  %i.gw = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %.not77 = icmp eq ptr %i.gw, null
  br i1 %.not77, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !77
  %i.gz = tail call noundef i32 %i.gw(ptr noundef %i.gy, i32 noundef 524288, i32 noundef 1, i32 noundef 2)
  %.not78 = icmp eq i32 %i.gz, 0
  br i1 %.not78, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ha = tail call ptr @__cxa_allocate_exception(i64 4) #7 ; 2 uses
  store i32 6, ptr %i.ha, align 16, !tbaa !75
  tail call void @__cxa_throw(ptr nonnull %i.ha, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #8
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i16> @llvm.masked.load.v4i16.p0(ptr captures(none), <4 x i1>, <4 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i16.p0(<4 x i16>, ptr captures(none), <4 x i1>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold noreturn }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = !{!"_ZTS20libraw_image_sizes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !8, i64 16, !14, i64 24, !8, i64 32, !7, i64 36, !13, i64 164, !7, i64 166}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !16, i64 432}
!18 = !{!"float", !7, i64 0}
!19 = !{!"_ZTS18libraw_nikonlens_t", !18, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!20 = !{!"_ZTS16libraw_dnglens_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!21 = !{!"long long", !7, i64 0}
!22 = !{!"_ZTS24libraw_makernotes_lens_t", !21, i64 0, !7, i64 8, !13, i64 136, !13, i64 138, !21, i64 144, !13, i64 152, !13, i64 154, !7, i64 156, !13, i64 220, !7, i64 222, !7, i64 238, !18, i64 256, !18, i64 260, !18, i64 264, !18, i64 268, !18, i64 272, !18, i64 276, !18, i64 280, !18, i64 284, !18, i64 288, !18, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 312, !21, i64 320, !7, i64 328, !21, i64 456, !7, i64 464, !21, i64 592, !7, i64 600, !13, i64 728, !18, i64 732}
!23 = !{!"_ZTS17libraw_lensinfo_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !13, i64 532, !19, i64 536, !20, i64 544, !22, i64 560}
!24 = !{!"_ZTS13libraw_area_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!25 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !13, i64 52, !13, i64 54, !7, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !13, i64 64, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !8, i64 84, !18, i64 88, !13, i64 92, !13, i64 94, !13, i64 96, !13, i64 98, !8, i64 100, !13, i64 104, !8, i64 108, !8, i64 112, !13, i64 116, !8, i64 120, !24, i64 124, !24, i64 132, !24, i64 140, !24, i64 148, !24, i64 156, !7, i64 164}
!26 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!27 = !{!"_ZTS25libraw_nikon_makernotes_t", !14, i64 0, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !13, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !13, i64 170, !26, i64 172, !13, i64 180, !13, i64 182, !13, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !16, i64 256, !13, i64 264, !13, i64 266, !7, i64 268, !13, i64 270, !14, i64 272, !14, i64 280, !14, i64 288}
!28 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !14, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!29 = !{!"_ZTS18libraw_fuji_info_t", !18, i64 0, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !13, i64 16, !13, i64 18, !7, i64 20, !7, i64 53, !18, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !13, i64 100, !8, i64 104, !8, i64 108, !13, i64 112, !7, i64 114, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !13, i64 128, !8, i64 132, !13, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !13, i64 168, !8, i64 172, !13, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!30 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !13, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !13, i64 82, !7, i64 84, !13, i64 88, !13, i64 90, !7, i64 92, !7, i64 352, !13, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !13, i64 416, !13, i64 418, !13, i64 420, !13, i64 422, !14, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !13, i64 456, !13, i64 458}
!31 = !{!"_ZTS18libraw_sony_info_t", !13, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !13, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !13, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !13, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !13, i64 54, !8, i64 56, !13, i64 60, !7, i64 62, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !8, i64 80, !18, i64 84, !13, i64 88, !8, i64 92, !8, i64 96, !13, i64 100, !7, i64 102, !8, i64 124, !13, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !13, i64 138, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !8, i64 156, !13, i64 160, !7, i64 162, !18, i64 180}
!32 = !{!"_ZTS25libraw_kodak_makernotes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !18, i64 236, !18, i64 240}
!33 = !{!"_ZTS29libraw_panasonic_makernotes_t", !13, i64 0, !13, i64 2, !7, i64 4, !8, i64 36, !18, i64 40, !7, i64 44, !13, i64 56, !13, i64 58, !8, i64 60, !8, i64 64}
!34 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 12, !8, i64 16, !8, i64 20, !13, i64 24, !7, i64 26, !13, i64 30, !7, i64 32, !7, i64 33, !13, i64 34}
!35 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!36 = !{!"_ZTS25libraw_ricoh_makernotes_t", !13, i64 0, !7, i64 4, !7, i64 12, !13, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !14, i64 56, !14, i64 64}
!37 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !14, i64 88, !8, i64 96, !7, i64 100}
!38 = !{!"_ZTS24libraw_metadata_common_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !13, i64 64, !7, i64 66, !18, i64 196, !7, i64 200, !8, i64 296}
!39 = !{!"_ZTS19libraw_makernotes_t", !25, i64 0, !27, i64 168, !28, i64 464, !29, i64 848, !30, i64 1200, !31, i64 1664, !32, i64 1848, !33, i64 2092, !34, i64 2160, !35, i64 2196, !36, i64 2648, !37, i64 2720, !38, i64 2856}
!40 = !{!"_ZTS21libraw_shootinginfo_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !7, i64 14, !7, i64 78}
!41 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !18, i64 128, !18, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !18, i64 248, !18, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !18, i64 288, !18, i64 292, !8, i64 296, !8, i64 300}
!42 = !{!"any p2 pointer", !11, i64 0}
!43 = !{!"p2 omnipotent char", !42, i64 0}
!44 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !18, i64 28, !7, i64 32, !43, i64 40}
!45 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !18, i64 32}
!46 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !18, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !18, i64 32920, !18, i64 32924, !7, i64 32928}
!47 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !18, i64 147516, !18, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !45, i64 147876, !18, i64 147912, !18, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !11, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !46, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!48 = !{!"long", !7, i64 0}
!49 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !18, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!50 = !{!"_ZTS17libraw_imgother_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !48, i64 16, !8, i64 24, !7, i64 28, !49, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!51 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!52 = !{!"_ZTS18libraw_thumbnail_t", !51, i64 0, !13, i64 4, !13, i64 6, !8, i64 8, !8, i64 12, !16, i64 16}
!53 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!54 = !{!"p1 float", !11, i64 0}
!55 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 12, !13, i64 14}
!56 = !{!"_ZTS16libraw_rawdata_t", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !12, i64 56, !12, i64 64, !17, i64 72, !15, i64 512, !55, i64 696, !47, i64 712}
!57 = !{!"_ZTS13libraw_data_t", !12, i64 0, !15, i64 8, !17, i64 192, !23, i64 632, !39, i64 1928, !40, i64 5088, !41, i64 5232, !44, i64 5536, !8, i64 5584, !8, i64 5588, !47, i64 5592, !50, i64 192680, !52, i64 193480, !53, i64 193504, !56, i64 193768, !11, i64 381568}
!58 = !{!"p1 _ZTS10LibRaw_TLS", !11, i64 0}
!59 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !11, i64 0}
!60 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!61 = !{!"_ZTS15internal_data_t", !59, i64 0, !60, i64 8, !8, i64 16, !16, i64 24, !21, i64 32, !21, i64 40, !7, i64 48}
!62 = !{!"p1 int", !11, i64 0}
!63 = !{!"_ZTS13output_data_t", !62, i64 0, !62, i64 8}
!64 = !{!"_ZTS15identify_data_t", !8, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!65 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!66 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !13, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !13, i64 148, !13, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!67 = !{!"_ZTS15unpacker_data_t", !13, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !65, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !21, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !66, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !13, i64 2496, !13, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !13, i64 2608}
!68 = !{!"_ZTS22libraw_internal_data_t", !61, i64 0, !55, i64 64, !63, i64 80, !64, i64 96, !67, i64 136}
!69 = !{!"p1 _ZTS6decode", !11, i64 0}
!70 = !{!"_ZTS13libraw_memmgr", !42, i64 0, !8, i64 8}
!71 = !{!"_ZTS18libraw_callbacks_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144}
!72 = !{!"_ZTS6LibRaw", !57, i64 8, !58, i64 381584, !68, i64 381592, !7, i64 384344, !69, i64 433496, !69, i64 433504, !7, i64 433512, !70, i64 768232, !71, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !11, i64 768448, !11, i64 768456, !11, i64 768464, !48, i64 768472, !11, i64 768480, !11, i64 768488, !11, i64 768496, !11, i64 768504}
!73 = !{!72, !13, i64 20}
!74 = !{!"_ZTS17LibRaw_exceptions", !7, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!72, !11, i64 768264}
!77 = !{!72, !11, i64 768272}
!78 = !{!72, !13, i64 22}
!79 = !{!72, !12, i64 8}
!80 = !{!72, !8, i64 540}
!81 = !{!13, !13, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !82}
!86 = !{!72, !13, i64 381670}
!87 = !{!72, !13, i64 381668}
!88 = !{!72, !8, i64 5564}
!89 = distinct !{!89, !82}
!90 = distinct !{!90, !82}
!91 = distinct !{!91, !82}
!92 = distinct !{!92, !82}
!93 = !{!72, !14, i64 40}
end_hunk_0
