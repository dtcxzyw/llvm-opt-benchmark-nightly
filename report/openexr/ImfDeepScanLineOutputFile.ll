Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepScanLineOutputFile?download=true
inline.NumInlined: 720
inline.NumDeleted: 345
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_114LineBufferTask7executeEv:bb.a
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !136 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 108
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !140
  %i.bx = sext i32 %i.bw to i64
  %.not.not = icmp slt i64 %indvars.iv205, %i.bx
  br i1 %.not.not, label %.lr.ph147, label %.preheader, !llvm.loop !225

bb.i:                                             ; preds = %.lr.ph147
  %i.by = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ba

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.bz = load i32, ptr %i.bo, align 8, !tbaa !236
  %i.ca = load i32, ptr %i.bp, align 4, !tbaa !237
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %indvars.iv205, %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.bn, i64 %i.cc
  %i.ce = sext i32 %i.bz to i64
  %i.cf = mul nsw i64 %indvars.iv, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !101
  %i.ci = load i32, ptr %i.bs, align 4, !tbaa !113
  %i.cj = sext i32 %i.ci to i64
  %i.ck = sub nsw i64 %indvars.iv205, %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !101
  %i.cn = add i32 %i.cm, %i.ch
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !101
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.co = load i32, ptr %i.bk, align 8, !tbaa !115
  %i.cp = sext i32 %i.co to i64
  %.not117.not = icmp slt i64 %indvars.iv, %i.cp
  br i1 %.not117.not, label %bb.j, label %._crit_edge, !llvm.loop !226

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %._crit_edge154
  %i.cq = phi ptr [ %i.df, %._crit_edge154 ], [ %.pre222, %.lr.ph157.preheader ] ; 4 uses
  %.080156 = phi i32 [ %i.dg, %._crit_edge154 ], [ %.093, %.lr.ph157.preheader ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !136 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !137
  %i.cw = sub nsw i32 %.080156, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !82
  store ptr %i.da, ptr %i.c, align 8, !tbaa !126
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 264
  %.val148 = load ptr, ptr %i.db, align 8, !tbaa !66 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cq, i64 272
  %.val123149 = load ptr, ptr %i.dc, align 8, !tbaa !67
  %.not = icmp eq ptr %.val123149, %.val148
  br i1 %.not, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph157
  %i.dd = icmp sgt i32 %.080156, -1
  %i.de = xor i32 %.080156, -1
  br label %bb.k

._crit_edge154:                                   ; preds = %bb.v, %.lr.ph157
  %i.df = phi ptr [ %i.cq, %.lr.ph157 ], [ %i.fq, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.dg = add nsw i32 %.080156, %.091             ; 2 uses
  %.not100 = icmp eq i32 %i.dg, %.092
  br i1 %.not100, label %._crit_edge158.loopexit, label %.lr.ph157, !llvm.loop !227

bb.k:                                             ; preds = %.lr.ph153, %bb.v
  %.val151 = phi ptr [ %.val148, %.lr.ph153 ], [ %.val, %bb.v ]
  %i.dh = phi ptr [ %i.cq, %.lr.ph153 ], [ %i.fq, %bb.v ] ; 9 uses
  %i.di = phi i64 [ 0, %.lr.ph153 ], [ %i.fp, %bb.v ]
  %.079150 = phi i32 [ 0, %.lr.ph153 ], [ %i.fo, %bb.v ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val151, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !86 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 44
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !238 ; 8 uses
  %i.dn = icmp sgt i32 %i.dm, -1                  ; 2 uses
  br i1 %i.dd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.dn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.do = udiv i32 %.080156, %i.dm
  br label %_ZN9Imath_3_24modpEii.exit

bb.n:                                             ; preds = %bb.l
  %i.dp = sub nsw i32 0, %i.dm
  %i.dq = udiv i32 %.080156, %i.dp
  %i.dr = sub nsw i32 0, %i.dq
  br label %_ZN9Imath_3_24modpEii.exit

bb.o:                                             ; preds = %bb.k
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = add nuw i32 %i.dm, %i.de
  %i.dt = udiv i32 %i.ds, %i.dm
  %i.du = sub nsw i32 0, %i.dt
  br label %_ZN9Imath_3_24modpEii.exit

bb.q:                                             ; preds = %bb.o
  %i.dv = sub nsw i32 0, %i.dm
  %i.dw = xor i32 %i.dm, -1
  %i.dx = sub nsw i32 %i.dw, %.080156
  %i.dy = udiv i32 %i.dx, %i.dv
  br label %_ZN9Imath_3_24modpEii.exit

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  %i.dz = phi i32 [ %i.dr, %bb.n ], [ %i.do, %bb.m ], [ %i.du, %bb.p ], [ %i.dy, %bb.q ]
  %i.ea = mul nsw i32 %i.dz, %i.dm
  %.not114 = icmp eq i32 %.080156, %i.ea
  br i1 %.not114, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !129, !range !123, !noundef !124
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 256
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !111
  %i.eg = load i32, ptr %i.dk, align 8, !tbaa !128
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dh, i64 352
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dh, i64 196
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !113
  %i.el = sub nsw i32 %.080156, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !101
  %i.ep = zext i32 %i.eo to i64
  invoke void @_ZN7Imf_3_421fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ef, i32 noundef %i.eg, i64 noundef %i.ep)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.eq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.ba

bb.u:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !130
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 328
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !125
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 336
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !236
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dh, i64 340
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !237
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 188
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !116
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dh, i64 192
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !115
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !131
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !239
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !240
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dh, i64 256
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !111
  %i.fn = load i32, ptr %i.dk, align 8, !tbaa !128
  invoke void @_ZN7Imf_3_423copyFromDeepFrameBufferERPcPKcS0_lliiiiiiilllNS_10Compressor6FormatENS_9PixelTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.es, ptr noundef %i.eu, i64 noundef %i.ex, i64 noundef %i.fa, i32 noundef %.080156, i32 noundef %i.fc, i32 noundef %i.fe, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %i.fg, i64 noundef %i.fi, i64 noundef %i.fk, i32 noundef %i.fm, i32 noundef %i.fn)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.s, %bb.u, %_ZN9Imath_3_24modpEii.exit
  %i.fo = add i32 %.079150, 1                     ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !135 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 264
  %.val = load ptr, ptr %i.fr, align 8, !tbaa !66 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 272
  %.val123 = load ptr, ptr %i.fs, align 8, !tbaa !67
  %i.ft = ptrtoint ptr %.val123 to i64
  %i.fu = ptrtoint ptr %.val to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 3
  %i.fx = icmp ugt i64 %i.fw, %i.fp
  br i1 %i.fx, label %bb.k, label %._crit_edge154, !llvm.loop !228

._crit_edge158.loopexit:                          ; preds = %._crit_edge154
  %.pre223 = load ptr, ptr %i.v, align 8, !tbaa !136
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %.preheader
  %i.fy = phi ptr [ %.pre223, %._crit_edge158.loopexit ], [ %i.ak, %.preheader ] ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !137 ; 2 uses
  %.not101 = icmp slt i32 %.092, %i.ga
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fy, i64 100
  %.pre224 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !138 ; 2 uses
  %.not102 = icmp sgt i32 %.092, %.pre224
  %or.cond = select i1 %.not101, i1 true, i1 %.not102
  br i1 %or.cond, label %._crit_edge158._crit_edge, label %bb.bl

._crit_edge158._crit_edge:                        ; preds = %._crit_edge158
  %1 = sub nsw i32 %.pre224, %i.ga                ; 3 uses
  %.not103159 = icmp slt i32 %1, 0
  br i1 %.not103159, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %._crit_edge158._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !83 ; 5 uses
  %i.gd = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %i.gd to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ge = icmp ult i32 %1, 3
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph164.new

.lr.ph164.new:                                    ; preds = %.lr.ph164
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.y

._crit_edge165.loopexit.unr-lcssa:                ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge165, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge165.loopexit.unr-lcssa, %.lr.ph164
  %indvars.iv208.epil.init = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next209.3, %._crit_edge165.loopexit.unr-lcssa ]
  %.076161.epil.init = phi i64 [ 0, %.lr.ph164 ], [ %spec.select.3, %._crit_edge165.loopexit.unr-lcssa ]
  %.078160.epil.init = phi i64 [ 0, %.lr.ph164 ], [ %i.hl, %._crit_edge165.loopexit.unr-lcssa ]
  %lcmp.mod294 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod294)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader
  %indvars.iv208.epil = phi i64 [ %indvars.iv208.epil.init, %.epil.preheader ], [ %indvars.iv.next209.epil, %bb.w ] ; 2 uses
  %.076161.epil = phi i64 [ %.076161.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.w ]
  %.078160.epil = phi i64 [ %.078160.epil.init, %.epil.preheader ], [ %i.gh, %bb.w ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv208.epil
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !121 ; 2 uses
  %i.gh = add i64 %i.gg, %.078160.epil            ; 2 uses
  %spec.select.epil = call i64 @llvm.umax.i64(i64 %i.gg, i64 %.076161.epil) ; 2 uses
  %indvars.iv.next209.epil = add nuw nsw i64 %indvars.iv208.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge165, label %bb.w, !llvm.loop !229

._crit_edge165:                                   ; preds = %._crit_edge165.loopexit.unr-lcssa, %bb.w, %._crit_edge158._crit_edge
  %.078.lcssa = phi i64 [ 0, %._crit_edge158._crit_edge ], [ %i.hl, %._crit_edge165.loopexit.unr-lcssa ], [ %i.gh, %bb.w ] ; 6 uses
  %.076.lcssa = phi i64 [ 0, %._crit_edge158._crit_edge ], [ %spec.select.3, %._crit_edge165.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.w ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.078.lcssa) #24
          to label %.noexc126 unwind label %bb.z

.noexc126:                                        ; preds = %._crit_edge165
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !82 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN7Imf_3_45ArrayIcE11resizeEraseEl.exit127, label %bb.x

bb.x:                                             ; preds = %.noexc126
  call void @_ZdaPv(ptr noundef nonnull %i.gl) #25
  br label %_ZN7Imf_3_45ArrayIcE11resizeEraseEl.exit127

_ZN7Imf_3_45ArrayIcE11resizeEraseEl.exit127:      ; preds = %.noexc126, %bb.x
  store i64 %.078.lcssa, ptr %i.gi, align 8, !tbaa !121
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !82
  %i.gn = load ptr, ptr %i.v, align 8, !tbaa !136 ; 9 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 100
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !138
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !137
  %.not104168 = icmp slt i32 %i.gp, %i.gr
  br i1 %.not104168, label %._crit_edge172.thread, label %.lr.ph171.preheader

._crit_edge172.thread:                            ; preds = %_ZN7Imf_3_45ArrayIcE11resizeEraseEl.exit127
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !82
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !141
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store i64 %.078.lcssa, ptr %i.gv, align 8, !tbaa !142
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store i64 %.078.lcssa, ptr %i.gw, align 8, !tbaa !143
  br label %._crit_edge191

.lr.ph171.preheader:                              ; preds = %_ZN7Imf_3_45ArrayIcE11resizeEraseEl.exit127
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.pre231 = load ptr, ptr %.phi.trans.insert230, align 8, !tbaa !83
  br label %.lr.ph171

bb.y:                                             ; preds = %bb.y, %.lr.ph164.new
  %indvars.iv208 = phi i64 [ 0, %.lr.ph164.new ], [ %indvars.iv.next209.3, %bb.y ] ; 5 uses
  %.076161 = phi i64 [ 0, %.lr.ph164.new ], [ %spec.select.3, %bb.y ]
  %.078160 = phi i64 [ 0, %.lr.ph164.new ], [ %i.hl, %bb.y ]
  %niter = phi i64 [ 0, %.lr.ph164.new ], [ %niter.next.3, %bb.y ]
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv208
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !121 ; 2 uses
  %i.gz = add i64 %i.gy, %.078160
  %spec.select = call i64 @llvm.umax.i64(i64 %i.gy, i64 %.076161)
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv208
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !121 ; 2 uses
  %i.hd = add i64 %i.hc, %i.gz
  %spec.select.1 = call i64 @llvm.umax.i64(i64 %i.hc, i64 %spec.select)
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv208
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !121 ; 2 uses
  %i.hh = add i64 %i.hg, %i.hd
  %spec.select.2 = call i64 @llvm.umax.i64(i64 %i.hg, i64 %spec.select.1)
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv208
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !121 ; 2 uses
  %i.hl = add i64 %i.hk, %i.hh                    ; 3 uses
  %spec.select.3 = call i64 @llvm.umax.i64(i64 %i.hk, i64 %spec.select.2) ; 3 uses
  %indvars.iv.next209.3 = add nuw nsw i64 %indvars.iv208, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge165.loopexit.unr-lcssa, label %bb.y, !llvm.loop !230

._crit_edge172:                                   ; preds = %.lr.ph171
  %i.hm = icmp sgt i32 %i.iv, %i.it
  %i.hn = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !82
  %i.hp = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !141
  %i.hq = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  store i64 %.078.lcssa, ptr %i.hq, align 8, !tbaa !142
  %i.hr = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  store i64 %.078.lcssa, ptr %i.hr, align 8, !tbaa !143
  br i1 %i.hm, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %._crit_edge172
  %i.hs = load ptr, ptr %i.e, align 8, !tbaa !135 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 188
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !116
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 192
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !115
  %i.hx = icmp sgt i32 %i.hu, %i.hw
  br i1 %i.hx, label %._crit_edge191, label %.lr.ph190.split.preheader

.lr.ph190.split.preheader:                        ; preds = %.lr.ph190
  %i.hy = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !82
  %i.ia = sext i32 %i.iv to i64
  br label %.lr.ph190.split

bb.z:                                             ; preds = %._crit_edge165
  %i.ib = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ba

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.lr.ph171
  %i.ic = phi ptr [ %.pre231, %.lr.ph171.preheader ], [ %i.io, %.lr.ph171 ]
  %indvars.iv211 = phi i64 [ 0, %.lr.ph171.preheader ], [ %indvars.iv.next212, %.lr.ph171 ] ; 4 uses
  %i.id = phi ptr [ %i.gn, %.lr.ph171.preheader ], [ %i.im, %.lr.ph171 ]
  %.074169 = phi i64 [ 0, %.lr.ph171.preheader ], [ %i.ir, %.lr.ph171 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !82
  %sext = shl i64 %.074169, 32
  %i.ig = ashr exact i64 %sext, 32                ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %indvars.iv211 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !82
  %i.il = load i64, ptr %i.ii, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ik, i64 %i.il, i1 false)
  %i.im = load ptr, ptr %i.v, align 8, !tbaa !136 ; 12 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !83 ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv211
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !121
  %i.ir = add nsw i64 %i.iq, %i.ig
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 100
  %i.it = load i32, ptr %i.is, align 4, !tbaa !138 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !137 ; 3 uses
  %i.iw = sub nsw i32 %i.it, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %.not104.not = icmp slt i64 %indvars.iv211, %i.ix
  br i1 %.not104.not, label %.lr.ph171, label %._crit_edge172, !llvm.loop !231

._crit_edge191:                                   ; preds = %._crit_edge182, %.lr.ph190, %._crit_edge172.thread, %._crit_edge172
  %.072.lcssa = phi i64 [ 0, %._crit_edge172 ], [ 0, %._crit_edge172.thread ], [ 0, %.lr.ph190 ], [ %.1.lcssa, %._crit_edge182 ] ; 3 uses
  %.lcssa = phi ptr [ %i.im, %._crit_edge172 ], [ %i.gn, %._crit_edge172.thread ], [ %i.im, %.lr.ph190 ], [ %i.jh, %._crit_edge182 ] ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.lcssa, i64 88
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !79 ; 3 uses
  %.not106 = icmp eq ptr %i.iz, null
  br i1 %.not106, label %.thread, label %bb.ab

.lr.ph190.split:                                  ; preds = %.lr.ph190.split.preheader, %._crit_edge182
  %i.ja = phi ptr [ %i.im, %.lr.ph190.split.preheader ], [ %i.jh, %._crit_edge182 ]
  %i.jb = phi ptr [ %i.hs, %.lr.ph190.split.preheader ], [ %i.ji, %._crit_edge182 ] ; 4 uses
  %indvars.iv217 = phi i64 [ %i.ia, %.lr.ph190.split.preheader ], [ %indvars.iv.next218, %._crit_edge182 ] ; 3 uses
  %.072187 = phi i64 [ 0, %.lr.ph190.split.preheader ], [ %.1.lcssa, %._crit_edge182 ] ; 2 uses
  %.0133186 = phi ptr [ %i.hz, %.lr.ph190.split.preheader ], [ %.1134.lcssa, %._crit_edge182 ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 188
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !116 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 192
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !115
  %.not111175 = icmp sgt i32 %i.jd, %i.jf
  br i1 %.not111175, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph190.split
  %i.jg = sext i32 %i.jd to i64
  br label %bb.aa

._crit_edge182.loopexit:                          ; preds = %bb.aa
  %.pre225 = load ptr, ptr %i.v, align 8, !tbaa !136
  br label %._crit_edge182

._crit_edge182:                                   ; preds = %._crit_edge182.loopexit, %.lr.ph190.split
  %i.jh = phi ptr [ %i.ja, %.lr.ph190.split ], [ %.pre225, %._crit_edge182.loopexit ] ; 3 uses
end_hunk_0
