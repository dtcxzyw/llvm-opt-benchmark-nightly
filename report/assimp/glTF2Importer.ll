inline.NumInlined: 10360
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_Z19CreateMeshMorphAnimRN5glTF25AssetERNS_4NodeER17AnimationSamplers:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !noalias !192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !192
  %i.t = load ptr, ptr %3, align 8, !alias.scope !192
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !192
  %i.v = load i64, ptr %i.s, align 8              ; 5 uses
  %i.w = icmp ugt i64 %i.v, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.w, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = trunc nuw nsw i64 %i.v to i32
  store i32 %i.x, ptr %i.d, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 1 %.pre, i64 %i.v, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 0, ptr %i.z, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d
  %i.aa = icmp eq ptr %.pre, %i.i
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = load i64, ptr %i.i, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ugt i64 %i.aq, %i.aj
  br i1 %i.ar, label %bb.g, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i60 = icmp eq ptr %i.at, null
  br i1 %.not.i60, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit61

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit61: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.at, align 8
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = icmp ugt i64 %i.bd, %i.aw
  br i1 %i.be, label %bb.h, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.h:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr null, ptr %i.b, align 8
  %i.bf = load ptr, ptr %i.af, align 8
  %i.bg = load i32, ptr %i.ah, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bf, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null)
          to label %bb.i unwind label %bb.o       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr null, ptr %i.c, align 8
  %i.bm = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.bo, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef null)
          to label %bb.j unwind label %bb.p       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = zext i32 %i.bz to i64
  %i.cb = load ptr, ptr %i.bx, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 296
  %i.cf = load i64, ptr %i.ce, align 8            ; 5 uses
  %i.cg = trunc i64 %i.cf to i32                  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 1028
  store i32 %i.cg, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.cj, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 296
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = udiv i32 %i.cs, %i.cg                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = icmp eq i32 %i.cv, 2                    ; 2 uses
  %i.cx = add i32 %i.ct, -2
  %i.cy = select i1 %i.cw, i32 %i.cx, i32 %i.ct
  %.fr72 = freeze i32 %i.cy                       ; 3 uses
  %i.cz = and i64 %i.cf, 4294967295               ; 4 uses
  %i.da = shl nuw nsw i64 %i.cz, 5
  %i.db = or disjoint i64 %i.da, 8
  %i.dc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.db) #37
          to label %bb.k unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %bb.j
  store i64 %i.cz, ptr %i.dc, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 6 uses
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %i.cz
  %i.df = add nuw nsw i64 %i.cz, 576460752303423487
  %i.dg = and i64 %i.df, 576460752303423487
  %xtraiter = and i64 %i.cf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.k, %.prol.preheader
  %i.dh = phi ptr [ %i.di, %.prol.preheader ], [ %i.dd, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.k ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dh, i8 0, i64 28, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !195

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.unr = phi ptr [ %i.dd, %bb.k ], [ %i.di, %.prol.preheader ]
  %i.dj = icmp samesign ult i64 %i.dg, 7
  br i1 %i.dj, label %.lr.ph69, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.dk = phi ptr [ %i.ds, %.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dk, i8 0, i64 28, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dl, i8 0, i64 28, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dm, i8 0, i64 28, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dn, i8 0, i64 28, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.do, i8 0, i64 28, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dp, i8 0, i64 28, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dq, i8 0, i64 28, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dr, i8 0, i64 28, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 256 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.de
  br i1 %i.dt, label %.lr.ph69, label %.new

.lr.ph69:                                         ; preds = %.new, %.prol.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  store ptr %i.dd, ptr %i.du, align 8
  %i.dv = zext i1 %i.cw to i32
  %i.dw = zext i32 %.fr72 to i64                  ; 3 uses
  %i.dx = shl nuw nsw i64 %i.dw, 2                ; 2 uses
  %i.dy = shl nuw nsw i64 %i.dw, 3                ; 2 uses
  %.not73 = icmp eq i32 %.fr72, 0
  br i1 %.not73, label %.lr.ph69.split.preheader, label %.lr.ph69.split.us.preheader

.lr.ph69.split.us.preheader:                      ; preds = %.lr.ph69
  %i.dz = and i64 %i.cf, 4294967295
  br label %.lr.ph69.split.us

.lr.ph69.split.preheader:                         ; preds = %.lr.ph69
  %i.ea = load ptr, ptr %i.b, align 8
  %i.eb = and i64 %i.cf, 4294967295
  br label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69.split.us.preheader, %._crit_edge.us
  %indvars.iv76 = phi i64 [ 0, %.lr.ph69.split.us.preheader ], [ %indvars.iv.next77, %._crit_edge.us ] ; 4 uses
  %i.ec = trunc nuw i64 %indvars.iv76 to i32
  %i.ed = mul i32 %i.ct, %i.ec
  %i.ee = add i32 %i.ed, %i.dv
  %i.ef = load ptr, ptr %i.b, align 8
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv76
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = fmul float %i.eh, 1.000000e+03
  %i.ej = fpext float %i.ei to double
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %indvars.iv76 ; 4 uses
  store double %i.ej, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i32 %.fr72, ptr %i.el, align 8
  %i.em = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dx) #37
          to label %bb.l unwind label %.split.us

bb.l:                                             ; preds = %.lr.ph69.split.us
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dy) #37
          to label %.lr.ph.us unwind label %.split.us

.lr.ph.us:                                        ; preds = %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  store ptr %i.eo, ptr %i.ep, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.us, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %.05265.us = phi i32 [ %i.ee, %.lr.ph.us ], [ %i.fc, %bb.m ] ; 2 uses
  %i.eq = load ptr, ptr %i.en, align 8
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv
  %i.es = trunc nuw i64 %indvars.iv to i32
  store i32 %i.es, ptr %i.er, align 4
  %i.et = load ptr, ptr %i.c, align 8
  %i.eu = zext i32 %.05265.us to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4          ; 2 uses
  %i.ex = fcmp olt float %i.ew, 0.000000e+00
  %i.ey = fpext float %i.ew to double
  %i.ez = select i1 %i.ex, double 0.000000e+00, double %i.ey
  %i.fa = load ptr, ptr %i.ep, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv
  store double %i.ez, ptr %i.fb, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fc = add i32 %.05265.us, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dw
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.m, !llvm.loop !196

._crit_edge.us:                                   ; preds = %bb.m
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next77, %i.dz
  br i1 %i.fd, label %.lr.ph69.split.us, label %._crit_edge70, !llvm.loop !197

.split.us:                                        ; preds = %bb.l, %.lr.ph69.split.us
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

._crit_edge70:                                    ; preds = %._crit_edge.us, %bb.s
  %i.ff = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.u, label %bb.t

bb.n:                                             ; preds = %.noexc.i.i
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.z

bb.o:                                             ; preds = %bb.h
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.p:                                             ; preds = %bb.i
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.q:                                             ; preds = %bb.j
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.lr.ph69.split:                                   ; preds = %.lr.ph69.split.preheader, %bb.s
  %indvars.iv79 = phi i64 [ 0, %.lr.ph69.split.preheader ], [ %indvars.iv.next80, %bb.s ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv79
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = fmul float %i.fm, 1.000000e+03
  %i.fo = fpext float %i.fn to double
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %indvars.iv79 ; 4 uses
  store double %i.fo, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i32 0, ptr %i.fq, align 8
  %i.fr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dx) #37
          to label %bb.r unwind label %.split

bb.r:                                             ; preds = %.lr.ph69.split
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.fr, ptr %i.fs, align 8
  %i.ft = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dy) #37
          to label %bb.s unwind label %.split

bb.s:                                             ; preds = %bb.r
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr %i.ft, ptr %i.fu, align 8
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.fv = icmp samesign ult i64 %indvars.iv.next80, %i.eb
  br i1 %i.fv, label %.lr.ph69.split, label %._crit_edge70, !llvm.loop !197

.split:                                           ; preds = %bb.r, %.lr.ph69.split
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.t:                                             ; preds = %._crit_edge70
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #35
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge70
  %i.fx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.fx) #35
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.x:                                             ; preds = %.split, %.split.us, %bb.q, %bb.p
  %.pn59.pn = phi { ptr, i32 } [ %i.fj, %bb.p ], [ %i.fk, %bb.q ], [ %i.fw, %.split ], [ %i.fe, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %bb.x ], [ %i.fi, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.n
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %bb.y ], [ %i.fh, %bb.n ]
  %.4 = extractvalue { ptr, i32 } %.pn59.pn.pn.pn, 0
  %i.fz = call ptr @__cxa_begin_catch(ptr %.4) #34 ; 0 uses
  call void @_ZN15aiMeshMorphAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1040) dereferenceable(1040) %i.d) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1040) #35
  invoke void @__cxa_rethrow() #36
          to label %bb.ad unwind label %bb.aa

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread: ; preds = %bb.g, %bb.f, %bb.w, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit61, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %i.d

bb.aa:                                            ; preds = %bb.z
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  resume { ptr, i32 } %i.ga

bb.ac:                                            ; preds = %bb.aa
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #38
  unreachable

bb.ad:                                            ; preds = %bb.z
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15aiMeshMorphAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1040) dereferenceable(1040) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.idx = shl i64 %i.e, 5                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN14aiMeshMorphKeyD2Ev.exit
  %i.h = phi ptr [ %i.i, %_ZN14aiMeshMorphKeyD2Ev.exit ], [ %i.g, %.preheader.preheader ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN14aiMeshMorphKeyD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not2.i = icmp eq ptr %i.m, null
  br i1 %.not2.i, label %_ZN14aiMeshMorphKeyD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %_ZN14aiMeshMorphKeyD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #35
  %i.p = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN14aiMeshMorphKeyD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #35
  br label %_ZN14aiMeshMorphKeyD2Ev.exit

_ZN14aiMeshMorphKeyD2Ev.exit:                     ; preds = %.preheader, %bb.c, %bb.d, %bb.e, %bb.f
  %i.r = icmp eq ptr %i.i, %i.b
  br i1 %i.r, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN14aiMeshMorphKeyD2Ev.exit, %bb.b
  %i.s = or disjoint i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.s) #35
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z14GatherSamplersRN5glTF29AnimationE(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.293") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not49 = icmp eq ptr %i.h, %i.i
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %i.m = phi ptr [ %i.i, %.lr.ph ], [ %i.dw, %bb.u ]
  %i.n = phi i64 [ 0, %.lr.ph ], [ %i.du, %bb.u ]
  %.03948 = phi i32 [ 0, %.lr.ph ], [ %i.dt, %bb.u ]
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.n ; 7 uses
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = trunc i64 %i.w to i32
  %.not = icmp slt i32 %i.p, %i.x
  br i1 %.not, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.y = zext nneg i32 %i.p to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.y ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
end_hunk_0
