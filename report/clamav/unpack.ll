Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unpack?download=true
inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6Unpack11UnpWriteBufEv:bb.a
  %i.an = sub i64 %i.am, %.091146
  %i.ao = and i64 %i.an, %i.w
  %i.ap = icmp ult i64 %i.ao, %.087147
  br i1 %i.ap, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i64 %.091146, %i.am
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6Unpack12UnpWriteAreaEmm(ptr noundef nonnull align 8 dereferenceable(59688) %0, i64 noundef %.091146, i64 noundef %i.am)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !115
  %i.ar = sub i64 %i.aq, %i.am
  %i.as = load i64, ptr %i.f, align 8, !tbaa !117 ; 3 uses
  %i.at = and i64 %i.ar, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi i64 [ %i.as, %bb.h ], [ %i.v, %bb.g ]
  %i.av = phi i64 [ %i.as, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %.192 = phi i64 [ %i.am, %bb.h ], [ %.091146, %bb.g ] ; 6 uses
  %.188 = phi i64 [ %i.at, %bb.h ], [ %.087147, %bb.g ] ; 2 uses
  %i.aw = zext i32 %i.al to i64                   ; 9 uses
  %.not105 = icmp ult i64 %.188, %i.aw
  br i1 %.not105, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not107 = icmp eq i32 %i.al, 0
  br i1 %.not107, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add i32 %i.al, %i.af
  %i.ay = trunc i64 %i.av to i32
  %i.az = and i32 %i.ax, %i.ay                    ; 4 uses
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !165 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.aw
  store i64 %i.aw, ptr %i.n, align 8, !tbaa !163
  br i1 %i.bb, label %bb.l, label %._ZN5ArrayIhE5AllocEm.exit_crit_edge

._ZN5ArrayIhE5AllocEm.exit_crit_edge:             ; preds = %bb.k
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !164
  br label %_ZN5ArrayIhE5AllocEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !177 ; 3 uses
  %.not.i.i = icmp ne i64 %i.bc, 0
  %i.bd = icmp ult i64 %i.bc, %i.aw
  %or.cond.i.i = and i1 %.not.i.i, %i.bd
  br i1 %or.cond.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.bc)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i.i = load i64, ptr %i.m, align 8, !tbaa !165
  %.pre10.i.i = load i64, ptr %i.n, align 8, !tbaa !163
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = phi i64 [ %.pre10.i.i, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = phi i64 [ %.pre.i.i, %bb.m ], [ %i.ba, %bb.l ] ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = add i64 %i.bf, 32
  %i.bi = add i64 %i.bh, %i.bg
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %i.bi) ; 2 uses
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !164
  %i.bk = tail call ptr @realloc(ptr noundef %i.bj, i64 noundef %..i.i) #30 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.o, label %_ZN5ArrayIhE3AddEm.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %_ZN5ArrayIhE3AddEm.exit.i

_ZN5ArrayIhE3AddEm.exit.i:                        ; preds = %bb.o, %bb.n
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !164
  store i64 %..i.i, ptr %i.m, align 8, !tbaa !165
  br label %_ZN5ArrayIhE5AllocEm.exit

_ZN5ArrayIhE5AllocEm.exit:                        ; preds = %._ZN5ArrayIhE5AllocEm.exit_crit_edge, %_ZN5ArrayIhE3AddEm.exit.i
  %i.bm = phi ptr [ %.pre, %._ZN5ArrayIhE5AllocEm.exit_crit_edge ], [ %i.bk, %_ZN5ArrayIhE3AddEm.exit.i ] ; 7 uses
  %i.bn = add i32 %i.az, -1
  %or.cond.not = icmp ult i32 %i.bn, %i.af
  br i1 %or.cond.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5ArrayIhE5AllocEm.exit
  %i.bo = load i8, ptr %i.p, align 8, !tbaa !167, !range !147, !noundef !148
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i, label %bb.q

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.07.i = phi i64 [ %i.bu, %.lr.ph.i ], [ 0, %bb.p ] ; 3 uses
  %i.bq = add i64 %.07.i, %i.am
  %i.br = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN16FragmentedWindowixEm(ptr noundef nonnull readonly align 8 dereferenceable(512) %i.r, i64 noundef %i.bq)
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.07.i
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !35
  %i.bu = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.aw
  br i1 %exitcond.not.i, label %_ZN16FragmentedWindow8CopyDataEPhmm.exit, label %.lr.ph.i, !llvm.loop !6

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr align 1 %i.bw, i64 %i.aw, i1 false)
  br label %_ZN16FragmentedWindow8CopyDataEPhmm.exit

bb.r:                                             ; preds = %_ZN5ArrayIhE5AllocEm.exit
  %i.bx = load i64, ptr %i.s, align 8, !tbaa !121 ; 2 uses
  %i.by = sub i64 %i.bx, %i.am                    ; 4 uses
  %i.bz = load i8, ptr %i.p, align 8, !tbaa !167, !range !147, !noundef !148
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not.i114 = icmp eq i64 %i.bx, %i.am
  br i1 %.not.i114, label %_ZN16FragmentedWindow8CopyDataEPhmm.exit118, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %bb.s, %.lr.ph.i115
  %.07.i116 = phi i64 [ %i.cf, %.lr.ph.i115 ], [ 0, %bb.s ] ; 3 uses
  %i.cb = add i64 %.07.i116, %i.am
  %i.cc = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN16FragmentedWindowixEm(ptr noundef nonnull readonly align 8 dereferenceable(512) %i.r, i64 noundef %i.cb)
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.07.i116
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !35
  %i.cf = add nuw i64 %.07.i116, 1                ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %i.cf, %i.by
  br i1 %exitcond.not.i117, label %_ZN16FragmentedWindow8CopyDataEPhmm.exit118, label %.lr.ph.i115, !llvm.loop !6

_ZN16FragmentedWindow8CopyDataEPhmm.exit118:      ; preds = %.lr.ph.i115, %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.by
  %i.ch = zext i32 %i.az to i64
  br label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZN16FragmentedWindow8CopyDataEPhmm.exit118, %.lr.ph.i120
  %.07.i121 = phi i64 [ %i.cl, %.lr.ph.i120 ], [ 0, %_ZN16FragmentedWindow8CopyDataEPhmm.exit118 ] ; 3 uses
  %i.ci = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN16FragmentedWindowixEm(ptr noundef nonnull readonly align 8 dereferenceable(512) %i.r, i64 noundef %.07.i121)
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.07.i121
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !35
  %i.cl = add nuw i64 %.07.i121, 1                ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %i.cl, %i.ch
  br i1 %exitcond.not.i122, label %_ZN16FragmentedWindow8CopyDataEPhmm.exit, label %.lr.ph.i120, !llvm.loop !6

bb.t:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.cn, i64 %i.by, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.by
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.cq = zext i32 %i.az to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr align 1 %i.cp, i64 %i.cq, i1 false)
  br label %_ZN16FragmentedWindow8CopyDataEPhmm.exit

_ZN16FragmentedWindow8CopyDataEPhmm.exit:         ; preds = %.lr.ph.i, %.lr.ph.i120, %bb.t, %bb.q
  %i.cr = tail call noundef ptr @_ZN6Unpack11ApplyFilterEPhjP12UnpackFilter(ptr noundef nonnull align 8 dereferenceable(59688) %0, ptr noundef nonnull %i.bm, i32 noundef %i.al, ptr noundef nonnull %i.y) ; 2 uses
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.084148
  store i8 8, ptr %i.ct, align 4, !tbaa !175
  %.not108 = icmp eq ptr %i.cr, null
  br i1 %.not108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN16FragmentedWindow8CopyDataEPhmm.exit
  %i.cu = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZN11ComprDataIO8UnpWriteEPhm(ptr noundef nonnull align 8 dereferenceable(266) %i.cu, ptr noundef nonnull %i.cr, i64 noundef %i.aw)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN16FragmentedWindow8CopyDataEPhmm.exit
  store i8 1, ptr %i.t, align 2, !tbaa !118
  %i.cv = load i64, ptr %i.u, align 8, !tbaa !126
  %i.cw = add nsw i64 %i.cv, %i.aw
  store i64 %i.cw, ptr %i.u, align 8, !tbaa !126
  %i.cx = zext i32 %i.az to i64                   ; 2 uses
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !115
  %i.cz = sub i64 %i.cy, %i.cx
  %i.da = load i64, ptr %i.f, align 8, !tbaa !117 ; 3 uses
  %i.db = and i64 %i.cz, %i.da
  br label %bb.z

bb.w:                                             ; preds = %bb.i
  store i64 %.192, ptr %i.a, align 8, !tbaa !114
  %i.dc = load i64, ptr %i.j, align 8, !tbaa !123 ; 7 uses
  %i.dd = icmp ult i64 %.084148, %i.dc
  br i1 %i.dd, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.w
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !174 ; 25 uses
  %i.df = sub nuw i64 %i.dc, %.084148             ; 7 uses
  %min.iters.check = icmp ult i64 %i.df, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check216 = icmp ult i64 %i.df, 16
  br i1 %min.iters.check216, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dg = and i64 %i.df, 8
  %n.vec = and i64 %i.df, -16                     ; 4 uses
  %i.dh = add i64 %.084148, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue246, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue246 ] ; 2 uses
  %i.di = add nuw i64 %.084148, %index            ; 16 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dk = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 32
  %i.do = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 48
  %i.dq = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 64
  %i.ds = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 80
  %i.du = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 96
  %i.dw = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 112
  %i.dy = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 128
  %i.ea = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 144
  %i.ec = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 160
  %i.ee = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 176
  %i.eg = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 192
  %i.ei = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 208
  %i.ek = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 224
  %i.em = getelementptr [16 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 240
  %i.eo = load i8, ptr %i.dj, align 4, !tbaa !175
  %i.ep = load i8, ptr %i.dl, align 4, !tbaa !175
  %i.eq = load i8, ptr %i.dn, align 4, !tbaa !175
  %i.er = load i8, ptr %i.dp, align 4, !tbaa !175
  %i.es = load i8, ptr %i.dr, align 4, !tbaa !175
  %i.et = load i8, ptr %i.dt, align 4, !tbaa !175
  %i.eu = load i8, ptr %i.dv, align 4, !tbaa !175
  %i.ev = load i8, ptr %i.dx, align 4, !tbaa !175
  %i.ew = load i8, ptr %i.dz, align 4, !tbaa !175
  %i.ex = load i8, ptr %i.eb, align 4, !tbaa !175
  %i.ey = load i8, ptr %i.ed, align 4, !tbaa !175
  %i.ez = load i8, ptr %i.ef, align 4, !tbaa !175
  %i.fa = load i8, ptr %i.eh, align 4, !tbaa !175
  %i.fb = load i8, ptr %i.ej, align 4, !tbaa !175
  %i.fc = load i8, ptr %i.el, align 4, !tbaa !175
  %i.fd = load i8, ptr %i.en, align 4, !tbaa !175
  %i.fe = insertelement <16 x i8> poison, i8 %i.eo, i64 0
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 1
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 2
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 3
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 4
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 5
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 6
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 7
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 8
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 9
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 10
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 11
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 12
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 13
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 14
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 15
  %i.fu = icmp ne <16 x i8> %i.ft, splat (i8 8)   ; 16 uses
  %i.fv = extractelement <16 x i1> %i.fu, i64 0
  br i1 %i.fv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dj, i64 13
  store i8 0, ptr %i.fw, align 1, !tbaa !171
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.fx = extractelement <16 x i1> %i.fu, i64 1
  br i1 %i.fx, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue
  %i.fy = getelementptr i8, ptr %i.dk, i64 29
  store i8 0, ptr %i.fy, align 1, !tbaa !171
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue
  %i.fz = extractelement <16 x i1> %i.fu, i64 2
  br i1 %i.fz, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  %i.ga = getelementptr i8, ptr %i.dm, i64 45
  store i8 0, ptr %i.ga, align 1, !tbaa !171
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.gb = extractelement <16 x i1> %i.fu, i64 3
  br i1 %i.gb, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue220
  %i.gc = getelementptr i8, ptr %i.do, i64 61
  store i8 0, ptr %i.gc, align 1, !tbaa !171
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %i.gd = extractelement <16 x i1> %i.fu, i64 4
  br i1 %i.gd, label %pred.store.if223, label %pred.store.continue224

pred.store.if223:                                 ; preds = %pred.store.continue222
  %i.ge = getelementptr i8, ptr %i.dq, i64 77
  store i8 0, ptr %i.ge, align 1, !tbaa !171
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.if223, %pred.store.continue222
  %i.gf = extractelement <16 x i1> %i.fu, i64 5
  br i1 %i.gf, label %pred.store.if225, label %pred.store.continue226

pred.store.if225:                                 ; preds = %pred.store.continue224
  %i.gg = getelementptr i8, ptr %i.ds, i64 93
  store i8 0, ptr %i.gg, align 1, !tbaa !171
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.if225, %pred.store.continue224
  %i.gh = extractelement <16 x i1> %i.fu, i64 6
  br i1 %i.gh, label %pred.store.if227, label %pred.store.continue228

pred.store.if227:                                 ; preds = %pred.store.continue226
  %i.gi = getelementptr i8, ptr %i.du, i64 109
  store i8 0, ptr %i.gi, align 1, !tbaa !171
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.if227, %pred.store.continue226
  %i.gj = extractelement <16 x i1> %i.fu, i64 7
  br i1 %i.gj, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue228
  %i.gk = getelementptr i8, ptr %i.dw, i64 125
  store i8 0, ptr %i.gk, align 1, !tbaa !171
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue228
  %i.gl = extractelement <16 x i1> %i.fu, i64 8
  br i1 %i.gl, label %pred.store.if231, label %pred.store.continue232

pred.store.if231:                                 ; preds = %pred.store.continue230
  %i.gm = getelementptr i8, ptr %i.dy, i64 141
  store i8 0, ptr %i.gm, align 1, !tbaa !171
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.if231, %pred.store.continue230
  %i.gn = extractelement <16 x i1> %i.fu, i64 9
  br i1 %i.gn, label %pred.store.if233, label %pred.store.continue234

pred.store.if233:                                 ; preds = %pred.store.continue232
  %i.go = getelementptr i8, ptr %i.ea, i64 157
  store i8 0, ptr %i.go, align 1, !tbaa !171
  br label %pred.store.continue234

pred.store.continue234:                           ; preds = %pred.store.if233, %pred.store.continue232
  %i.gp = extractelement <16 x i1> %i.fu, i64 10
  br i1 %i.gp, label %pred.store.if235, label %pred.store.continue236

pred.store.if235:                                 ; preds = %pred.store.continue234
  %i.gq = getelementptr i8, ptr %i.ec, i64 173
  store i8 0, ptr %i.gq, align 1, !tbaa !171
  br label %pred.store.continue236

pred.store.continue236:                           ; preds = %pred.store.if235, %pred.store.continue234
  %i.gr = extractelement <16 x i1> %i.fu, i64 11
  br i1 %i.gr, label %pred.store.if237, label %pred.store.continue238

pred.store.if237:                                 ; preds = %pred.store.continue236
  %i.gs = getelementptr i8, ptr %i.ee, i64 189
  store i8 0, ptr %i.gs, align 1, !tbaa !171
  br label %pred.store.continue238

pred.store.continue238:                           ; preds = %pred.store.if237, %pred.store.continue236
  %i.gt = extractelement <16 x i1> %i.fu, i64 12
  br i1 %i.gt, label %pred.store.if239, label %pred.store.continue240

pred.store.if239:                                 ; preds = %pred.store.continue238
  %i.gu = getelementptr i8, ptr %i.eg, i64 205
  store i8 0, ptr %i.gu, align 1, !tbaa !171
  br label %pred.store.continue240

pred.store.continue240:                           ; preds = %pred.store.if239, %pred.store.continue238
  %i.gv = extractelement <16 x i1> %i.fu, i64 13
  br i1 %i.gv, label %pred.store.if241, label %pred.store.continue242

pred.store.if241:                                 ; preds = %pred.store.continue240
  %i.gw = getelementptr i8, ptr %i.ei, i64 221
  store i8 0, ptr %i.gw, align 1, !tbaa !171
  br label %pred.store.continue242

pred.store.continue242:                           ; preds = %pred.store.if241, %pred.store.continue240
  %i.gx = extractelement <16 x i1> %i.fu, i64 14
  br i1 %i.gx, label %pred.store.if243, label %pred.store.continue244

pred.store.if243:                                 ; preds = %pred.store.continue242
  %i.gy = getelementptr i8, ptr %i.ek, i64 237
  store i8 0, ptr %i.gy, align 1, !tbaa !171
  br label %pred.store.continue244

end_hunk_0
