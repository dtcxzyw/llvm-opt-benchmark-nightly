Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexReader?download=true
inline.NumInlined: 1655
inline.NumDeleted: 741
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Ptex4v2_410PtexReader13TiledFaceBase6reduceEPS1_NS0_3ResEPFvPKviiiPviNS0_8DataTypeEiERm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.peel.next
  %i.bb = phi i1 [ false, %bb.f ], [ false, %.peel.next ], [ %i.ba, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %i.p, align 4, !tbaa !243 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %.peel.next, label %._crit_edge, !llvm.loop !366

.critedge:                                        ; preds = %bb.d, %._crit_edge
  %i.bf = phi ptr [ undef, %bb.d ], [ %i.z, %._crit_edge ] ; 2 uses
  %i.bg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !260 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i16 0, ptr %i.bj, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %i.bg, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !234
  %i.bl = sext i32 %i.bi to i64
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #23
          to label %bb.i unwind label %bb.j, !inline_history !4 ; 2 uses

bb.i:                                             ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !235
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader12ConstantFaceE, i64 16), ptr %i.bg, align 8, !tbaa !20
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %i.bs = load i32, ptr %i.bh, align 8, !tbaa !260
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr align 1 %i.br, i64 %i.bt, i1 false)
  %i.bu = add nsw i64 %i.bt, 24
  store i64 %i.bu, ptr %4, align 8, !tbaa !94
  br label %.loopexit154thread-pre-split

bb.j:                                             ; preds = %.critedge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 24) #24
  br label %bb.ab

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.c, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !236
  %i.by = zext nneg i8 %i.bx to i32               ; 2 uses
  %i.bz = shl nuw i32 1, %i.by                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !237
  %i.cc = zext nneg i8 %i.cb to i32               ; 3 uses
  %i.cd = shl nuw i32 1, %i.cc                    ; 2 uses
  %i.ce = load i32, ptr %i.v, align 8, !tbaa !260 ; 2 uses
  %i.cf = shl i32 %i.ce, %i.by                    ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !262 ; 2 uses
  %i.ci = mul nsw i32 %i.cf, %i.ch                ; 3 uses
  %i.cj = shl i32 %i.ci, %i.cc
  %i.ck = add nsw i32 %i.ch, -1
  %i.cl = mul nsw i32 %i.ck, %i.cf
  %i.cm = sub nsw i32 %i.cj, %i.cl
  %i.cn = shl i32 %i.bz, %i.cc
  %i.co = mul i32 %i.ce, %.lcssa
  %i.cp = mul i32 %i.co, %i.cn
  %i.cq = sext i32 %i.cp to i64
  %i.cr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #23 ; 3 uses
  %i.cs = load i32, ptr %i.p, align 4, !tbaa !243
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph165, label %._crit_edge166

._crit_edge166:                                   ; preds = %bb.o, %bb.l
  %i.cu = load i32, ptr %i.v, align 8, !tbaa !260
  %.sroa.0118.0.extract.trunc.mask153 = and i16 %2, 255
  %i.cv = zext nneg i16 %.sroa.0118.0.extract.trunc.mask153 to i32 ; 2 uses
  %i.cw = shl nuw i32 1, %i.cv
  %i.cx = zext nneg i16 %.sroa.12.0.extract.shift to i32
  %i.cy = shl i32 %i.cw, %i.cx
  %i.cz = mul nsw i32 %i.cu, %i.cy
  %i.da = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 6 uses
  %i.db = load i32, ptr %i.v, align 8, !tbaa !260
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i16 %2, ptr %i.dc, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %i.da, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 %i.db, ptr %i.dd, align 4, !tbaa !234
  %i.de = sext i32 %i.cz to i64                   ; 2 uses
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #23
          to label %bb.p unwind label %bb.q, !inline_history !5 ; 2 uses

.lr.ph165:                                        ; preds = %bb.l, %bb.o
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %.097162 = phi ptr [ %i.dw, %bb.o ], [ %i.cr, %bb.l ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv175
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !259 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef ptr %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dh) ; 2 uses
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph165
  %i.dq = load i32, ptr %i.v, align 8, !tbaa !260
  tail call void @_ZN4Ptex4v2_49PtexUtils4fillEPKvPviiii(ptr noundef %i.dp, ptr noundef %.097162, i32 noundef %i.ci, i32 noundef %i.bz, i32 noundef %i.cd, i32 noundef %i.dq)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph165
  tail call void @_ZN4Ptex4v2_49PtexUtils4copyEPKviPviii(ptr noundef %i.dp, i32 noundef %i.cf, ptr noundef %.097162, i32 noundef %i.ci, i32 noundef %i.cd, i32 noundef %i.cf)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 3 uses
  %i.dr = load i32, ptr %i.cg, align 4, !tbaa !262
  %i.ds = trunc nuw nsw i64 %indvars.iv.next176 to i32
  %i.dt = srem i32 %i.ds, %i.dr
  %.not104 = icmp eq i32 %i.dt, 0
  %i.du = select i1 %.not104, i32 %i.cm, i32 %i.cf
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %.097162, i64 %i.dv
  %i.dx = load i32, ptr %i.p, align 4, !tbaa !243
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next176, %i.dy
  br i1 %i.dz, label %.lr.ph165, label %._crit_edge166, !llvm.loop !367

bb.p:                                             ; preds = %._crit_edge166
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.df, ptr %i.ea, align 8, !tbaa !235
  %i.eb = add nsw i64 %i.de, 24
  store i64 %i.eb, ptr %4, align 8, !tbaa !94
  %i.ec = load i32, ptr %i.v, align 8, !tbaa !260 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !236
  %i.ef = zext nneg i8 %i.ee to i32               ; 2 uses
  %i.eg = shl nuw i32 1, %i.ef
  %i.eh = shl i32 %i.ec, %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !237
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = shl nuw i32 1, %i.ek
  %i.em = shl i32 %i.ec, %i.cv
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !263
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !264
  tail call void %3(ptr noundef nonnull %i.cr, i32 noundef %i.eh, i32 noundef %i.eg, i32 noundef %i.el, ptr noundef nonnull %i.df, i32 noundef %i.em, i32 noundef %i.eo, i32 noundef %i.eq)
  tail call void @_ZdaPv(ptr noundef nonnull %i.cr) #24
  br label %.loopexit154thread-pre-split

bb.q:                                             ; preds = %._crit_edge166
  %i.er = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 24) #24
  br label %bb.ab

bb.r:                                             ; preds = %bb.k
  %i.es = load i32, ptr %i.v, align 8, !tbaa !260
  %.sroa.0118.0.extract.trunc.mask = and i16 %2, 255
  %i.et = zext nneg i16 %.sroa.0118.0.extract.trunc.mask to i32 ; 2 uses
  %i.eu = shl nuw i32 1, %i.et                    ; 2 uses
  %i.ev = zext nneg i16 %.sroa.12.0.extract.shift to i32 ; 3 uses
  %i.ew = shl i32 %i.eu, %i.ev
  %i.ex = mul nsw i32 %i.es, %i.ew
  %i.ey = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  %i.ez = load i32, ptr %i.v, align 8, !tbaa !260
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i16 %2, ptr %i.fa, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %i.ey, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !234
  %i.fc = sext i32 %i.ex to i64                   ; 2 uses
  %i.fd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fc) #23
          to label %bb.s unwind label %bb.t, !inline_history !5 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !235
  %i.ff = add nsw i64 %i.fc, 24
  store i64 %i.ff, ptr %4, align 8, !tbaa !94
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !236
  %i.fi = zext nneg i8 %i.fh to i32               ; 2 uses
  %i.fj = shl nuw i32 1, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !237
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = shl nuw i32 1, %i.fm
  %i.fo = load i32, ptr %i.v, align 8, !tbaa !260 ; 2 uses
  %i.fp = shl i32 %i.fo, %i.fi
  %i.fq = shl i32 %i.fo, %i.et                    ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !262 ; 2 uses
  %i.ft = sdiv i32 %i.fq, %i.fs                   ; 2 uses
  %i.fu = shl i32 %i.fq, %i.ev
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !265
  %i.fx = sdiv i32 %i.fu, %i.fw
  %i.fy = add nsw i32 %i.fs, -1
  %i.fz = mul nsw i32 %i.ft, %i.fy
  %i.ga = sub nsw i32 %i.fx, %i.fz
  %i.gb = load i32, ptr %i.p, align 4, !tbaa !243
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph161, label %.loopexit

.lr.ph161:                                        ; preds = %bb.s
  %5 = shl nuw i32 1, %i.ev
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %7 = insertelement <2 x i32> %6, i32 %5, i64 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.gf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 24) #24
  br label %bb.ab

bb.u:                                             ; preds = %.lr.ph161, %bb.x
  %indvars.iv172 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next173, %bb.x ] ; 2 uses
  %.095158 = phi ptr [ %i.fd, %.lr.ph161 ], [ %i.gy, %bb.x ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv172
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !259 ; 4 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = tail call noundef zeroext i1 %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = tail call noundef ptr %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gh) ; 2 uses
  br i1 %i.gl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %8 = load <2 x i32>, ptr %i.fr, align 4, !tbaa !102
  %9 = sdiv <2 x i32> %7, %8                      ; 2 uses
  %i.gq = load i32, ptr %i.v, align 8, !tbaa !260
  %10 = extractelement <2 x i32> %9, i64 0
  %11 = extractelement <2 x i32> %9, i64 1
  tail call void @_ZN4Ptex4v2_49PtexUtils4fillEPKvPviiii(ptr noundef %i.gp, ptr noundef %.095158, i32 noundef %i.fq, i32 noundef %10, i32 noundef %11, i32 noundef %i.gq)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gr = load i32, ptr %i.gd, align 4, !tbaa !263
  %i.gs = load i32, ptr %i.ge, align 8, !tbaa !264
  tail call void %3(ptr noundef %i.gp, i32 noundef %i.fp, i32 noundef %i.fj, i32 noundef %i.fn, ptr noundef %.095158, i32 noundef %i.fq, i32 noundef %i.gr, i32 noundef %i.gs)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 3 uses
  %i.gt = load i32, ptr %i.fr, align 4, !tbaa !262
  %i.gu = trunc nuw nsw i64 %indvars.iv.next173 to i32
  %i.gv = srem i32 %i.gu, %i.gt
  %.not = icmp eq i32 %i.gv, 0
  %i.gw = select i1 %.not, i32 %i.ga, i32 %i.ft
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %.095158, i64 %i.gx
  %i.gz = load i32, ptr %i.p, align 4, !tbaa !243 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next173, %i.ha
  br i1 %i.hb, label %bb.u, label %.loopexit154, !llvm.loop !368

.loopexit154thread-pre-split:                     ; preds = %bb.i, %bb.p
  %.0.ph = phi ptr [ %i.da, %bb.p ], [ %i.bg, %bb.i ]
  %.pr = load i32, ptr %i.p, align 4, !tbaa !243
  br label %.loopexit154

.loopexit154:                                     ; preds = %bb.x, %.loopexit154thread-pre-split
  %i.hc = phi i32 [ %.pr, %.loopexit154thread-pre-split ], [ %i.gz, %bb.x ]
  %.0 = phi ptr [ %.0.ph, %.loopexit154thread-pre-split ], [ %i.ey, %bb.x ] ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.lr.ph169, label %.loopexit

.lr.ph169:                                        ; preds = %.loopexit154, %.lr.ph169
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %.lr.ph169 ], [ 0, %.loopexit154 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv178
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !259 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  tail call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.hj = load i32, ptr %i.p, align 4, !tbaa !243
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next179, %i.hk
  br i1 %i.hl, label %.lr.ph169, label %.loopexit, !llvm.loop !369

bb.y:                                             ; preds = %bb.c
  %.sroa.10.0.insert.shift113 = shl nuw i16 %.sroa.10.0, 8
  %.sroa.0.0.insert.ext108 = zext i8 %.sroa.0.1 to i16
  %.sroa.0.0.insert.insert110 = or disjoint i16 %.sroa.10.0.insert.shift113, %.sroa.0.0.insert.ext108
  %i.hm = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23 ; 8 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !245
  invoke void @_ZN4Ptex4v2_410PtexReader13TiledFaceBaseC2EPS1_NS0_3ResES4_(ptr noundef nonnull align 8 dereferenceable(96) %i.hm, ptr noundef %i.ho, i16 %2, i16 %.sroa.0.0.insert.insert110)
          to label %bb.z unwind label %bb.aa, !inline_history !370

bb.z:                                             ; preds = %bb.y
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader16TiledReducedFaceE, i64 16), ptr %i.hm, align 8, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  store ptr %0, ptr %i.hp, align 8, !tbaa !268
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  store ptr %3, ptr %i.hq, align 8, !tbaa !269
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !230
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !159
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = add i64 %i.hv, 96
  %i.hy = sub i64 %i.hx, %i.hw
  store i64 %i.hy, ptr %4, align 8, !tbaa !94
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.hz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef 96) #24
  br label %bb.ab

.loopexit:                                        ; preds = %.lr.ph169, %bb.s, %.loopexit154, %bb.z
  %.1 = phi ptr [ %i.hm, %bb.z ], [ %.0, %.loopexit154 ], [ %i.ey, %bb.s ], [ %.0, %.lr.ph169 ]
  ret ptr %.1

bb.ab:                                            ; preds = %bb.j, %bb.q, %bb.t, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.hz, %bb.aa ], [ %i.bv, %bb.j ], [ %i.er, %bb.q ], [ %i.gf, %bb.t ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_410PtexReader13TiledFaceBase8getPixelEiiPv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !371
  %i.c = zext nneg i8 %i.b to i32
  %i.d = ashr i32 %1, %i.c                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !372
  %i.g = zext nneg i8 %i.f to i32
  %i.h = ashr i32 %2, %i.g                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !262
  %i.k = mul nsw i32 %i.h, %i.j
  %i.l = add nsw i32 %i.k, %i.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.l) ; 6 uses
  %i.q = load i8, ptr %i.a, align 8, !tbaa !371
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl i32 %i.d, %i.r
  %i.t = sub nsw i32 %1, %i.s
  %i.u = load i8, ptr %i.e, align 1, !tbaa !372
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl i32 %i.h, %i.v
  %i.x = sub nsw i32 %2, %i.w
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.t, i32 noundef %i.x, ptr noundef %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #27
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #27
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12: ; preds = %bb.d
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4Ptex4v2_410PtexReader16TiledReducedFace7getTileEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !165  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !268  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %2 = load <2 x i32>, ptr %i.h, align 4, !tbaa !102
  %3 = load <2 x i32>, ptr %i.i, align 4, !tbaa !102
  %4 = sdiv <2 x i32> %2, %3                      ; 3 uses
  %5 = extractelement <2 x i32> %4, i64 0         ; 8 uses
  %6 = extractelement <2 x i32> %4, i64 1         ; 3 uses
  %i.j = mul nsw i32 %6, %5                       ; 4 uses
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = alloca i8, i64 %i.l, align 16            ; 3 uses
  %i.n = icmp sgt i32 %i.j, 0
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %7 = load i32, ptr %i.i, align 4, !tbaa !262    ; 2 uses
  %8 = load i32, ptr %i.h, align 4, !tbaa !262    ; 2 uses
  %i.o = mul i32 %6, %8
  %i.p = sdiv i32 %1, %7
  %i.q = mul i32 %i.o, %i.p
  %i.r = srem i32 %1, %7
  %i.s = mul nsw i32 %i.r, %5
  %i.t = add nsw i32 %i.s, %i.q                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.v = add i32 %8, 1
  %i.w = sub i32 %i.v, %5                         ; 2 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.t) ; 6 uses
  store ptr %i.aa, ptr %i.m, align 16, !tbaa !259
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.j, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %i.af = srem i32 1, %5
  %.not85.peel = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not85.peel, i32 %i.w, i32 1
  %i.ah = add nsw i32 %i.ag, %i.t
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.lcssa = phi i1 [ %i.ae, %bb.c ], [ %i.bd, %bb.g ]
  br i1 %.lcssa, label %.critedge, label %bb.j

bb.d:                                             ; preds = %.peel.next, %bb.g
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.07990 = phi i32 [ %i.ah, %.peel.next ], [ %i.bh, %bb.g ] ; 2 uses
  %.08089 = phi i1 [ %i.ae, %.peel.next ], [ %i.bd, %bb.g ]
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !268 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef %.07990) ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.am, ptr %i.an, align 8, !tbaa !259
  br i1 %.08089, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %i.ba = load i32, ptr %i.u, align 8, !tbaa !260
  %i.bb = sext i32 %i.ba to i64
  %bcmp = tail call i32 @bcmp(ptr %i.av, ptr %i.az, i64 %i.bb)
  %i.bc = icmp eq i32 %bcmp, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bd = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ %i.bc, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bf = srem i32 %i.be, %5
  %.not85 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not85, i32 %i.w, i32 1
  %i.bh = add nsw i32 %i.bg, %.07990
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !373

.critedge:                                        ; preds = %bb.b, %._crit_edge
  %i.bi = phi ptr [ undef, %bb.b ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.bj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !260 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i16 0, ptr %i.bm, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %i.bj, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !234
  %i.bo = sext i32 %i.bl to i64
  %i.bp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #23
          to label %bb.h unwind label %bb.i, !inline_history !4 ; 2 uses

bb.h:                                             ; preds = %.critedge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !235
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader12ConstantFaceE, i64 16), ptr %i.bj, align 8, !tbaa !20
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !260
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
  %i.bw = load i32, ptr %i.bk, align 8, !tbaa !260
  %i.bx = sext i32 %i.bw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.bv, i64 %i.bx, i1 false)
  br label %.loopexit

bb.i:                                             ; preds = %.critedge
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %._crit_edge
  %i.bz = load i32, ptr %i.u, align 8, !tbaa !260
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !236
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !237
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = shl i32 %i.cd, %i.cg
  %i.ci = mul nsw i32 %i.ch, %i.bz                ; 2 uses
  %i.cj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %.sroa.0.0.copyload = load i16, ptr %i.ca, align 8
  %i.ck = load i32, ptr %i.u, align 8, !tbaa !260
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i16 %.sroa.0.0.copyload, ptr %i.cl, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %i.cj, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !234
  %i.cn = sext i32 %i.ci to i64
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #23
          to label %.lr.ph95 unwind label %bb.k, !inline_history !5

.lr.ph95:                                         ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !235
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !268
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.0.0.copyload.i = load i16, ptr %i.cr, align 8 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i16 %.sroa.0.0.copyload.i, 8
  %i.cs = and i16 %.sroa.0.0.copyload.i, 255
  %i.ct = zext nneg i16 %i.cs to i32              ; 2 uses
  %i.cu = shl nuw i32 1, %i.ct
  %.sroa.3.0.extract.trunc = zext nneg i16 %.sroa.4.0.extract.shift to i32
  %i.cv = shl nuw i32 1, %.sroa.3.0.extract.trunc
  %i.cw = load i32, ptr %i.u, align 8, !tbaa !260 ; 2 uses
  %i.cx = shl i32 %i.cw, %i.ct
  %i.cy = load i8, ptr %i.ca, align 8, !tbaa !236
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = shl i32 %i.cw, %i.cz                    ; 4 uses
  %i.db = load i8, ptr %i.ce, align 1, !tbaa !237
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = shl i32 %i.da, %i.dc
  %9 = insertelement <2 x i32> poison, i32 %i.da, i64 0
  %10 = insertelement <2 x i32> %9, i32 %i.dd, i64 1
  %11 = sdiv <2 x i32> %10, %4                    ; 2 uses
  %i.de = add nsw i32 %5, -1
  %12 = extractelement <2 x i32> %11, i64 0       ; 2 uses
  %i.df = mul nsw i32 %12, %i.de
  %13 = extractelement <2 x i32> %11, i64 1
  %i.dg = sub nsw i32 %13, %i.df
  %i.dh = load ptr, ptr %i.cj, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %.lr.ph95, %bb.o
  %indvars.iv97 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next98, %bb.o ] ; 2 uses
  %.07292 = phi ptr [ %i.dk, %.lr.ph95 ], [ %i.et, %bb.o ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv97
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !259 ; 6 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = tail call noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  br i1 %i.du, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call noundef ptr %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  %i.dz = load i8, ptr %i.ca, align 8, !tbaa !236
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = shl nuw i32 1, %i.ea
  %i.ec = sdiv i32 %i.eb, %5
  %i.ed = load i8, ptr %i.ce, align 1, !tbaa !237
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw i32 1, %i.ee
  %i.eg = sdiv i32 %i.ef, %6
  %i.eh = load i32, ptr %i.u, align 8, !tbaa !260
  tail call void @_ZN4Ptex4v2_49PtexUtils4fillEPKvPviiii(ptr noundef %i.dy, ptr noundef %.07292, i32 noundef %i.da, i32 noundef %i.ec, i32 noundef %i.eg, i32 noundef %i.eh)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ei = load ptr, ptr %i.dl, align 8, !tbaa !269
  %i.ej = load ptr, ptr %i.dq, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  %i.en = load i32, ptr %i.dm, align 4, !tbaa !263
  %i.eo = load i32, ptr %i.dn, align 8, !tbaa !264
  tail call void %i.ei(ptr noundef %i.em, i32 noundef %i.cx, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef %.07292, i32 noundef %i.da, i32 noundef %i.en, i32 noundef %i.eo)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 3 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv.next98 to i32
  %i.eq = srem i32 %i.ep, %5
  %.not83 = icmp eq i32 %i.eq, 0
  %i.er = select i1 %.not83, i32 %i.dg, i32 %12
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %.07292, i64 %i.es
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count
  br i1 %exitcond101.not, label %.loopexit, label %bb.l, !llvm.loop !374

.loopexit:                                        ; preds = %bb.o, %bb.h
  %.077 = phi ptr [ %i.bj, %bb.h ], [ %i.cj, %bb.o ] ; 3 uses
  %.076.in.in = phi i32 [ %i.br, %bb.h ], [ %i.ci, %bb.o ]
  %i.eu = ptrtoint ptr %.077 to i64
  %i.ev = cmpxchg ptr %i.d, i64 0, i64 %i.eu seq_cst seq_cst, align 8
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  br i1 %i.ew, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.ex = load ptr, ptr %.077, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  tail call void %i.ez(ptr noundef nonnull align 8 dereferenceable(10) %.077) #25
  br label %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit

bb.q:                                             ; preds = %.loopexit
  %.076.in = sext i32 %.076.in.in to i64
  %.076 = add nsw i64 %.076.in, 24                ; 2 uses
  %.not.i = icmp eq i64 %.076, 0
  br i1 %.not.i, label %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !245
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 688
  %i.fd = atomicrmw add ptr %i.fc, i64 %.076 seq_cst, align 8 ; 0 uses
  br label %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit

_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit: ; preds = %bb.r, %bb.q, %bb.p
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !165
  br label %bb.t

bb.s:                                             ; preds = %bb.k, %bb.i
  %.sink = phi ptr [ %i.cj, %bb.k ], [ %i.bj, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.do, %bb.k ], [ %i.by, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 24) #24
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.a, %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit
  %.073 = phi ptr [ %i.fe, %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit ], [ %i.e, %bb.a ]
  ret ptr %.073
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader10PackedFaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4Ptex4v2_410PtexReader10PackedFaceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !270
  br label %_ZN4Ptex4v2_410PtexReader10PackedFaceD2Ev.exit

_ZN4Ptex4v2_410PtexReader10PackedFaceD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader8FaceData7releaseEv(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4Ptex4v2_410PtexReader10PackedFace10isConstantEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN4Ptex4v2_410PtexReader8FaceData3resEv(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 8
  ret i16 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader10PackedFace8getPixelEiiPv(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !236
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl i32 %2, %i.e
  %i.g = add nsw i32 %i.f, %1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !234  ; 2 uses
  %i.j = mul nsw i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k
  %i.m = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.l, i64 %i.m, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4Ptex4v2_410PtexReader10PackedFace7getDataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4Ptex4v2_410PtexReader10PackedFace7isTiledEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN4Ptex4v2_410PtexReader10PackedFace7tileResEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 8
  ret i16 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4Ptex4v2_410PtexReader10PackedFace7getTileEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader10PackedFaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader12ConstantFaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader10PackedFaceE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4Ptex4v2_410PtexReader10PackedFaceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !270
  br label %_ZN4Ptex4v2_410PtexReader10PackedFaceD2Ev.exit

_ZN4Ptex4v2_410PtexReader10PackedFaceD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4Ptex4v2_410PtexReader12ConstantFace10isConstantEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader12ConstantFace8getPixelEiiPv(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !234
  %i.e = sext i32 %i.d to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.b, i64 %i.e, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader13TiledFaceBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexReader13TiledFaceBase7releaseEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

end_hunk_0
