inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL22ucnv_getNextUChar_UTF8P23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.by = and i32 %i.m, 15
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = zext i8 %i.bx to i32                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 5
  %i.cf = shl nuw nsw i32 1, %i.ce
  %i.cg = and i32 %i.cf, %i.cc
  %.not106 = icmp eq i32 %i.cg, 0
  br i1 %.not106, label %iter.check, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1             ; 2 uses
  %i.cj = icmp slt i8 %i.ci, -64
  br i1 %i.cj, label %bb.p, label %iter.check

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store ptr %i.ck, ptr %i.d, align 8
  %i.cl = add nuw nsw i32 %i.bw, %i.cd
  %i.cm = shl nuw nsw i32 %i.cl, 6
  %i.cn = zext i8 %i.ci to i32
  %i.co = add nsw i32 %i.cm, -925824
  %i.cp = add nsw i32 %i.co, %i.cn
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  %i.cq = icmp sgt i8 %i.bx, -65
  br i1 %i.cq, label %iter.check, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store ptr %i.cr, ptr %i.d, align 8
  %i.cs = zext i8 %i.bx to i32
  %i.ct = add nsw i32 %i.bw, -12416
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  br label %bb.w

bb.s:                                             ; preds = %bb.m
  %i.cv = zext i8 %i.bx to i32                    ; 2 uses
  %i.cw = lshr i32 %i.cv, 4
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = and i32 %i.m, 7
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = and i32 %i.dc, %i.da
  %.not105 = icmp eq i32 %i.dd, 0
  br i1 %.not105, label %iter.check, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dg = icmp slt i8 %i.df, -64
  br i1 %i.dg, label %bb.u, label %iter.check

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1             ; 2 uses
  %i.dj = icmp slt i8 %i.di, -64
  br i1 %i.dj, label %bb.v, label %iter.check

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.dk, ptr %i.d, align 8
  %i.dl = add nuw nsw i32 %i.bw, %i.cv
  %i.dm = zext i8 %i.df to i32
  %i.dn = shl nuw nsw i32 %i.dl, 12
  %i.do = shl nuw nsw i32 %i.dm, 6
  %i.dp = zext i8 %i.di to i32
  %i.dq = add nsw i32 %i.dn, -63447168
  %i.dr = add nsw i32 %i.dq, %i.do
  %i.ds = add nsw i32 %i.dr, %i.dp
  br label %bb.w

iter.check:                                       ; preds = %bb.s, %bb.t, %bb.u, %bb.q, %bb.n, %bb.o
  %.7 = phi ptr [ %i.i, %bb.q ], [ %i.ch, %bb.o ], [ %i.i, %bb.n ], [ %i.i, %bb.s ], [ %i.de, %bb.t ], [ %i.dh, %bb.u ] ; 3 uses
  %.7213 = ptrtoint ptr %.7 to i64                ; 2 uses
  store ptr %.7, ptr %i.d, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  %i.du = add i64 %i.f, 1
  %umax214 = tail call i64 @llvm.umax.i64(i64 %.7213, i64 %i.du)
  %i.dv = sub i64 %umax214, %i.f                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dw = add i64 %i.f, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %.7213, i64 %i.dw)
  %i.dx = sub i64 %i.f, %umax
  %.not228 = icmp ugt i64 %i.dx, -129
  br i1 %.not228, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dy = sub i64 %i.c, %i.f
  %i.dz = add i64 %i.dy, 64
  %diff.check = icmp ult i64 %i.dz, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check215 = icmp ult i64 %i.dv, 32
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dv, 28
  %n.vec = and i64 %i.dv, -32                     ; 5 uses
  %i.ea = getelementptr i8, ptr %i.e, i64 %n.vec
  %i.eb = trunc i64 %n.vec to i8                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.e, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load216 = load <16 x i8>, ptr %i.ec, align 1
  %sext = shl i64 %index, 56
  %i.ed = ashr exact i64 %sext, 56
  %i.ee = getelementptr inbounds i8, ptr %i.dt, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <16 x i8> %wide.load, ptr %i.ee, align 1
  store <16 x i8> %wide.load216, ptr %i.ef, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.loopexit227, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec219 = and i64 %i.dv, -4                   ; 4 uses
  %i.eh = getelementptr i8, ptr %i.e, i64 %n.vec219
  %i.ei = trunc i64 %n.vec219 to i8               ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index220 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next223, %vec.epilog.vector.body ] ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.e, i64 %index220
  %wide.load222 = load <4 x i8>, ptr %next.gep221, align 1
  %sext229 = shl i64 %index220, 56
  %i.ej = ashr exact i64 %sext229, 56
  %i.ek = getelementptr inbounds i8, ptr %i.dt, i64 %i.ej
  store <4 x i8> %wide.load222, ptr %i.ek, align 1
  %index.next223 = add nuw i64 %index220, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next223, %n.vec219
  br i1 %i.el, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n224 = icmp eq i64 %i.dv, %n.vec219
  br i1 %cmp.n224, label %.loopexit227, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.089128.ph = phi ptr [ %i.e, %iter.check ], [ %i.e, %vector.scevcheck ], [ %i.e, %vector.memcheck ], [ %i.ea, %vec.epilog.iter.check ], [ %i.eh, %vec.epilog.middle.block ]
  %.398127.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.eb, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.089128 = phi ptr [ %i.em, %vec.epilog.scalar.ph ], [ %.089128.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.398127 = phi i8 [ %i.eq, %vec.epilog.scalar.ph ], [ %.398127.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.089128, i64 1 ; 2 uses
  %i.en = load i8, ptr %.089128, align 1
  %i.eo = sext i8 %.398127 to i64
  %i.ep = getelementptr inbounds i8, ptr %i.dt, i64 %i.eo
  store i8 %i.en, ptr %i.ep, align 1
  %i.eq = add i8 %.398127, 1                      ; 2 uses
  %i.er = icmp ult ptr %i.em, %.7
  br i1 %i.er, label %vec.epilog.scalar.ph, label %.loopexit227, !llvm.loop !19

.loopexit227:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa212 = phi i8 [ %i.ei, %vec.epilog.middle.block ], [ %i.eb, %middle.block ], [ %i.eq, %vec.epilog.scalar.ph ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.lcssa212, ptr %i.es, align 8
  store i32 12, ptr %1, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r, %bb.p, %.thread, %.loopexit, %.loopexit227, %bb.d, %bb.b
  %.4 = phi i32 [ 65535, %bb.b ], [ %i.l, %bb.d ], [ 65535, %.thread ], [ 65535, %.loopexit ], [ 65535, %.loopexit227 ], [ %i.cp, %bb.p ], [ %i.cu, %bb.r ], [ %i.ds, %bb.v ]
  ret i32 %.4
}

declare void @ucnv_getNonSurrogateUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 26 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 6 uses
  %i.q = load i8, ptr %i.p, align 8               ; 2 uses
  %i.r = icmp sgt i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.v = load i32, ptr %i.u, align 8
  %sext = shl i32 %i.t, 24
  %i.w = ashr exact i32 %sext, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0217 = phi i32 [ %i.w, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0213 = phi i32 [ %i.v, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %.0208 = phi i8 [ %i.q, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.x = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = zext nneg i8 %.0208 to i32              ; 3 uses
  %i.ac = add nsw i32 %i.ab, %i.aa                ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %.0217
  br i1 %i.ad, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp sgt i32 %.0217, %i.o
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -127, ptr %2, align 4
  br label %bb.bd

bb.f:                                             ; preds = %bb.d
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.o)
  %i.af = sub nsw i32 %spec.select, %i.ab         ; 14 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr i8, ptr %i.e, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1             ; 4 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = zext i8 %i.ak to i32                    ; 2 uses
  %i.an = add nsw i8 %i.ak, 62
  %i.ao = icmp ult i8 %i.an, 51
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.af, -1
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp samesign ult i8 %i.ak, -64
  br i1 %i.aq, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.af, -2                   ; 2 uses
  %.not = icmp eq i32 %i.af, 1
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 4 uses
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = add i8 %i.au, 32
  %or.cond = icmp ult i8 %i.aw, 21
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp samesign ult i8 %i.au, -16         ; 2 uses
  %i.ay = lshr i32 %i.am, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.az
  %i.bb = and i32 %i.av, 7
  %i.bc = and i32 %i.av, 15
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bd
  %i.bf = lshr i32 %i.am, 5
  %.sink492 = select i1 %i.ax, i32 %i.bf, i32 %i.bb
  %.sink491.in.in = select i1 %i.ax, ptr %i.be, ptr %i.ba
  %.sink491.in = load i8, ptr %.sink491.in.in, align 1
  %.sink491 = zext i8 %.sink491.in to i32
  %i.bg = shl nuw nsw i32 1, %.sink492
  %i.bh = and i32 %i.bg, %.sink491
  %.not245 = icmp eq i32 %i.bh, 0
  %spec.select254 = select i1 %.not245, i32 %i.af, i32 %i.ar
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bi = icmp slt i8 %i.au, -64
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.af, -3                   ; 2 uses
  %i.bk = icmp samesign ugt i32 %i.af, 2
  br i1 %i.bk, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.bo = add i8 %i.bn, 16
  %or.cond5 = icmp ult i8 %i.bo, 5
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = lshr i32 %i.av, 4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = and i8 %i.bn, 7
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = and i32 %i.bw, %i.bt
  %.not244 = icmp eq i32 %i.bx, 0
  %spec.select255 = select i1 %.not244, i32 %i.af, i32 %i.bj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.g, %bb.j, %bb.k, %bb.i, %bb.p, %bb.n, %bb.o, %bb.f
  %.3207 = phi i32 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ], [ %i.af, %bb.j ], [ 1, %bb.k ], [ %i.af, %bb.n ], [ %spec.select255, %bb.q ], [ %spec.select254, %bb.m ], [ 2, %bb.o ], [ %i.af, %bb.p ]
  %i.by = add nsw i32 %.3207, %i.ab
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.r
  %.1201 = phi i32 [ %i.ac, %bb.c ], [ %i.by, %bb.r ] ; 2 uses
  %.not246 = icmp eq i32 %.0213, 0
  br i1 %.not246, label %.preheader261, label %bb.t

.preheader261:                                    ; preds = %._crit_edge339, %bb.s
  %.2202.ph = phi i32 [ %.1201, %bb.s ], [ %i.mo, %._crit_edge339 ] ; 2 uses
  %.0196.ph = phi ptr [ %i.i, %bb.s ], [ %.3199.lcssa, %._crit_edge339 ] ; 2 uses
  %.0194.ph = phi ptr [ %i.e, %bb.s ], [ %.5.lcssa, %._crit_edge339 ] ; 2 uses
  %i.bz = icmp sgt i32 %.2202.ph, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.ca, align 8
  store i8 0, ptr %i.p, align 8
  br label %.thread260

.lr.ph:                                           ; preds = %.preheader261, %.backedge
  %.0194296 = phi ptr [ %.0194.be, %.backedge ], [ %.0194.ph, %.preheader261 ] ; 7 uses
  %.0196295 = phi ptr [ %.0196.be, %.backedge ], [ %.0196.ph, %.preheader261 ] ; 12 uses
  %.2202294 = phi i32 [ %i.cf, %.backedge ], [ %.2202.ph, %.preheader261 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0194296, i64 1 ; 4 uses
  %i.cc = load i8, ptr %.0194296, align 1         ; 10 uses
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.0196295, i64 1
  store i8 %i.cc, ptr %.0196295, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.z, %bb.ac
  %.sink = phi i32 [ -1, %bb.u ], [ -3, %bb.z ], [ -2, %bb.ac ]
  %.0196.be = phi ptr [ %i.ce, %bb.u ], [ %i.da, %bb.z ], [ %i.dg, %bb.ac ] ; 2 uses
  %.0194.be = phi ptr [ %i.cb, %bb.u ], [ %i.cx, %bb.z ], [ %i.de, %bb.ac ] ; 2 uses
  %i.cf = add nsw i32 %.2202294, %.sink           ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !20

bb.v:                                             ; preds = %.lr.ph
  %i.ch = zext i8 %i.cc to i32                    ; 2 uses
  %i.ci = icmp samesign ugt i8 %i.cc, -33         ; 2 uses
  br i1 %i.ci, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cj = icmp samesign ult i8 %i.cc, -16
  br i1 %i.cj, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ck = and i32 %i.ch, 15
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.cq = lshr i8 %i.cp, 5
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.co
  %.not252 = icmp eq i32 %i.ct, 0
  br i1 %.not252, label %.thread.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %.0194296, i64 2
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.cw = icmp slt i8 %i.cv, -64
  br i1 %i.cw, label %bb.z, label %.thread.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.0194296, i64 3
  %i.cy = getelementptr inbounds nuw i8, ptr %.0196295, i64 1
  store i8 %i.cc, ptr %.0196295, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.0196295, i64 2
  store i8 %i.cp, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.0196295, i64 3
  store i8 %i.cv, ptr %i.cz, align 1
  br label %.backedge

bb.aa:                                            ; preds = %bb.v
  %i.db = icmp samesign ugt i8 %i.cc, -63
  br i1 %i.db, label %bb.ab, label %iter.check568

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.dd = icmp slt i8 %i.dc, -64
  br i1 %i.dd, label %bb.ac, label %.thread.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.0194296, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.0196295, i64 1
  store i8 %i.cc, ptr %.0196295, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.0196295, i64 2
  store i8 %i.dc, ptr %i.df, align 1
  br label %.backedge

bb.ad:                                            ; preds = %bb.w
  %i.dh = icmp samesign ult i8 %i.cc, -11
  br i1 %i.dh, label %.thread, label %iter.check568

.thread.loopexit:                                 ; preds = %bb.ab, %bb.x, %bb.y
  %i.di = zext i1 %i.ci to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.ad
  %i.dj = phi i32 [ %i.di, %.thread.loopexit ], [ 1, %bb.ad ]
  %i.dk = icmp samesign ugt i8 %i.cc, -17
  %i.dl = select i1 %i.dk, i32 3, i32 2
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  br label %.thread260

.thread260:                                       ; preds = %.thread, %bb.t
  %.1220 = phi i8 [ %.0208, %bb.t ], [ 1, %.thread ] ; 4 uses
  %.1218 = phi i32 [ %.0217, %bb.t ], [ %i.dm, %.thread ] ; 9 uses
  %.1214 = phi i32 [ %.0213, %bb.t ], [ %i.ch, %.thread ] ; 2 uses
  %.1209 = phi i8 [ %.0208, %bb.t ], [ 0, %.thread ] ; 17 uses
  %.3203 = phi i32 [ %.1201, %bb.t ], [ %.2202294, %.thread ]
  %.1197 = phi ptr [ %i.i, %bb.t ], [ %.0196295, %.thread ] ; 24 uses
  %.1195 = phi ptr [ %i.e, %bb.t ], [ %i.cb, %.thread ] ; 4 uses
  %.1195537 = ptrtoaddr ptr %.1197 to i64
  %i.dn = zext nneg i8 %.1220 to i32              ; 4 uses
  %i.do = icmp sgt i32 %.1218, %i.dn
  br i1 %i.do, label %.lr.ph308, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph308:                                        ; preds = %.thread260
  %i.dp = icmp samesign ult i32 %.1218, 3
  %i.dq = icmp eq i32 %.1218, 3
  %3 = icmp ult ptr %.1195, %i.g
  br i1 %3, label %bb.af, label %bb.al

bb.ae:                                            ; preds = %bb.ak
  %4 = shl i32 %.2215306538, 6
  %5 = zext i8 %i.ds to i32
  %6 = add nsw i32 %4, %5                         ; 2 uses
  %i.dr = icmp ult ptr %i.ek, %i.g
  br i1 %i.dr, label %bb.af, label %bb.al, !llvm.loop !21

bb.af:                                            ; preds = %.lr.ph308, %bb.ae
  %.2221305539 = phi i8 [ %i.el, %bb.ae ], [ %.1220, %.lr.ph308 ] ; 3 uses
  %.2215306538 = phi i32 [ %6, %bb.ae ], [ %.1214, %.lr.ph308 ] ; 3 uses
  %.2307537 = phi ptr [ %i.ek, %bb.ae ], [ %.1195, %.lr.ph308 ] ; 3 uses
  %7 = phi i32 [ %9, %bb.ae ], [ %i.dn, %.lr.ph308 ]
  %i.ds = load i8, ptr %.2307537, align 1         ; 4 uses
  %8 = icmp sgt i8 %.2221305539, 1
  %or.cond.i = or i1 %i.dp, %8
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = icmp slt i8 %i.ds, -64
  %i.du = zext i1 %i.dt to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ah:                                            ; preds = %bb.af
  br i1 %i.dq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dv = and i32 %.2215306538, 15
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = lshr i8 %i.ds, 5
  %i.ea = shl nuw i8 1, %i.dz
  %i.eb = and i8 %i.dy, %i.ea
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ec = lshr i8 %i.ds, 4
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = and i32 %.2215306538, 7
  %i.eh = shl nuw nsw i32 1, %i.eg
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = and i8 %i.ef, %i.ei
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.ag, %bb.ai, %bb.aj
  %.0.i = phi i8 [ %i.du, %bb.ag ], [ %i.eb, %bb.ai ], [ %i.ej, %bb.aj ]
  %.not247 = icmp eq i8 %.0.i, 0
  br i1 %.not247, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.2307537, i64 1 ; 4 uses
  %i.el = add i8 %.2221305539, 1                  ; 4 uses
  %9 = sext i8 %i.el to i32                       ; 4 uses
  %i.em = icmp sgt i32 %.1218, %9
  br i1 %i.em, label %bb.ae, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, !llvm.loop !21

bb.al:                                            ; preds = %bb.ae, %.lr.ph308
  %.lcssa508 = phi i32 [ %i.dn, %.lr.ph308 ], [ %9, %bb.ae ] ; 2 uses
  %.2307.lcssa = phi ptr [ %.1195, %.lr.ph308 ], [ %i.ek, %bb.ae ] ; 2 uses
  %.2215306.lcssa = phi i32 [ %.1214, %.lr.ph308 ], [ %6, %bb.ae ]
  %.2221305.lcssa = phi i8 [ %.1220, %.lr.ph308 ], [ %i.el, %bb.ae ] ; 3 uses
  %.2307.lcssa545 = ptrtoaddr ptr %.2307.lcssa to i64
  %i.en = zext nneg i8 %.1209 to i32
  %.neg = sub nsw i32 %i.en, %.lcssa508
  %i.eo = sext i32 %.neg to i64
  %i.ep = getelementptr inbounds i8, ptr %.2307.lcssa, i64 %i.eo ; 7 uses
  %i.eq = icmp slt i8 %.1209, %.2221305.lcssa
  br i1 %i.eq, label %iter.check, label %._crit_edge320

iter.check:                                       ; preds = %bb.al
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.es = zext i8 %.1209 to i64                   ; 7 uses
  %i.et = zext nneg i8 %.2221305.lcssa to i64     ; 4 uses
  %i.eu = sub nsw i64 %i.et, %i.es                ; 7 uses
  %min.iters.check = icmp ult i64 %i.eu, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %10 = sext i32 %.lcssa508 to i64
  %i.ev = add i64 %i.c, %10
  %i.ew = sub i64 %i.ev, %.2307.lcssa545
  %i.ex = add i64 %i.ew, 64
  %diff.check = icmp ult i64 %i.ex, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check538 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check538, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eu, 24
  %n.vec = and i64 %i.eu, -32                     ; 5 uses
  %i.ey = add nsw i64 %n.vec, %i.es
  %i.ez = getelementptr i8, ptr %i.ep, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.er, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ep, i64 %index ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load539 = load <16 x i8>, ptr %i.fa, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1
  store <16 x i8> %wide.load539, ptr %i.fb, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %._crit_edge320, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec542 = and i64 %i.eu, -8                   ; 4 uses
  %i.fd = add nsw i64 %n.vec542, %i.es
  %i.fe = getelementptr i8, ptr %i.ep, i64 %n.vec542 ; 2 uses
  %invariant.gep759 = getelementptr i8, ptr %i.er, i64 %i.es
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index543 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next546, %vec.epilog.vector.body ] ; 3 uses
  %next.gep544 = getelementptr i8, ptr %i.ep, i64 %index543
  %wide.load545 = load <8 x i8>, ptr %next.gep544, align 1
  %gep760 = getelementptr i8, ptr %invariant.gep759, i64 %index543
  store <8 x i8> %wide.load545, ptr %gep760, align 1
  %index.next546 = add nuw i64 %index543, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next546, %n.vec542
  br i1 %i.ff, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n547 = icmp eq i64 %i.eu, %n.vec542
  br i1 %cmp.n547, label %._crit_edge320, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.es, %iter.check ], [ %i.es, %vector.memcheck ], [ %i.ey, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ] ; 4 uses
  %.3317.ph = phi ptr [ %i.ep, %iter.check ], [ %i.ep, %vector.memcheck ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ] ; 2 uses
  %i.fg = sub nsw i64 %i.et, %indvars.iv.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3317.prol = phi ptr [ %i.fh, %vec.epilog.scalar.ph.prol ], [ %.3317.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.3317.prol, i64 1 ; 3 uses
  %i.fi = load i8, ptr %.3317.prol, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.prol
  store i8 %i.fi, ptr %i.fj, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !25

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa669.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fh, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.3317.unr = phi ptr [ %.3317.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fh, %vec.epilog.scalar.ph.prol ]
  %11 = sub nsw i64 %indvars.iv.ph, %i.et
  %12 = icmp ugt i64 %11, -4
  br i1 %12, label %._crit_edge320, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.3317 = phi ptr [ %i.fv, %vec.epilog.scalar.ph ], [ %.3317.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.3317, i64 1
  %i.fl = load i8, ptr %.3317, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv
  store i8 %i.fl, ptr %i.fm, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.3317, i64 2
  %i.fo = load i8, ptr %i.fk, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store i8 %i.fo, ptr %i.fq, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.3317, i64 3
  %i.fs = load i8, ptr %i.fn, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  store i8 %i.fs, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.3317, i64 4 ; 2 uses
  %i.fw = load i8, ptr %i.fr, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  store i8 %i.fw, ptr %i.fy, align 1
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.et
  br i1 %exitcond.not.3, label %._crit_edge320, label %vec.epilog.scalar.ph, !llvm.loop !27

._crit_edge320:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.al
  %.3.lcssa = phi ptr [ %i.ep, %bb.al ], [ %i.fe, %vec.epilog.middle.block ], [ %i.ez, %middle.block ], [ %.lcssa669.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fv, %vec.epilog.scalar.ph ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.2215306.lcssa, ptr %i.fz, align 8
  store i8 %.2221305.lcssa, ptr %i.p, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %.1218, ptr %i.ga, align 4
  store ptr %.3.lcssa, ptr %i.d, align 8
  store ptr %.1197, ptr %i.h, align 8
  br label %bb.bd

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge: ; preds = %bb.ak, %_ZN6icu_784UTF812isValidTrailEihii.exit, %.thread260
  %.2221.lcssa = phi i8 [ %.1220, %.thread260 ], [ %i.el, %bb.ak ], [ %.2221305539, %_ZN6icu_784UTF812isValidTrailEihii.exit ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1195, %.thread260 ], [ %i.ek, %bb.ak ], [ %.2307537, %_ZN6icu_784UTF812isValidTrailEihii.exit ] ; 3 uses
  %.lcssa = phi i32 [ %i.dn, %.thread260 ], [ %9, %bb.ak ], [ %7, %_ZN6icu_784UTF812isValidTrailEihii.exit ] ; 2 uses
  %.2.lcssa620 = ptrtoaddr ptr %.2.lcssa to i64
  %.not248 = icmp eq i32 %.1218, %.lcssa
  br i1 %.not248, label %.preheader, label %bb.am

.preheader:                                       ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.gb = icmp sgt i8 %.1209, 0
  br i1 %i.gb, label %iter.check602, label %._crit_edge331

iter.check602:                                    ; preds = %.preheader
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 11 uses
  %wide.trip.count393 = zext nneg i8 %.1209 to i64 ; 8 uses
  %min.iters.check587 = icmp ult i8 %.1209, 4
  br i1 %min.iters.check587, label %vec.epilog.scalar.ph603.preheader, label %vector.memcheck584

vector.memcheck584:                               ; preds = %iter.check602
  %i.gd = sub i64 %.1195537, %i.c
  %i.ge = add i64 %i.gd, -66
  %diff.check586 = icmp ult i64 %i.ge, 15
  br i1 %diff.check586, label %vec.epilog.scalar.ph603.preheader, label %vector.main.loop.iter.check588

vector.main.loop.iter.check588:                   ; preds = %vector.memcheck584
  %min.iters.check589 = icmp ult i8 %.1209, 16
  br i1 %min.iters.check589, label %vec.epilog.ph606, label %vector.ph590

vector.ph590:                                     ; preds = %vector.main.loop.iter.check588
  %n.mod.vf591 = and i64 %wide.trip.count393, 12
  %n.vec592 = and i64 %wide.trip.count393, 112    ; 10 uses
  %i.gf = getelementptr i8, ptr %.1197, i64 %n.vec592 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %wide.load596 = load <8 x i8>, ptr %i.gc, align 1
  %wide.load597 = load <8 x i8>, ptr %i.gg, align 1
  %i.gh = getelementptr i8, ptr %.1197, i64 8
  store <8 x i8> %wide.load596, ptr %.1197, align 1
  store <8 x i8> %wide.load597, ptr %i.gh, align 1
  %i.gi = icmp eq i64 %n.vec592, 16
  br i1 %i.gi, label %middle.block599, label %vector.body593.1

vector.body593.1:                                 ; preds = %vector.ph590
  %next.gep595.1 = getelementptr i8, ptr %.1197, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  %wide.load596.1 = load <8 x i8>, ptr %i.gj, align 1
  %wide.load597.1 = load <8 x i8>, ptr %i.gk, align 1
  %i.gl = getelementptr i8, ptr %.1197, i64 24
  store <8 x i8> %wide.load596.1, ptr %next.gep595.1, align 1
  store <8 x i8> %wide.load597.1, ptr %i.gl, align 1
  %i.gm = icmp eq i64 %n.vec592, 32
  br i1 %i.gm, label %middle.block599, label %vector.body593.2

vector.body593.2:                                 ; preds = %vector.body593.1
  %next.gep595.2 = getelementptr i8, ptr %.1197, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  %wide.load596.2 = load <8 x i8>, ptr %i.gn, align 1
  %wide.load597.2 = load <8 x i8>, ptr %i.go, align 1
  %i.gp = getelementptr i8, ptr %.1197, i64 40
  store <8 x i8> %wide.load596.2, ptr %next.gep595.2, align 1
  store <8 x i8> %wide.load597.2, ptr %i.gp, align 1
  %i.gq = icmp eq i64 %n.vec592, 48
  br i1 %i.gq, label %middle.block599, label %vector.body593.3

vector.body593.3:                                 ; preds = %vector.body593.2
  %next.gep595.3 = getelementptr i8, ptr %.1197, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %wide.load596.3 = load <8 x i8>, ptr %i.gr, align 1
  %wide.load597.3 = load <8 x i8>, ptr %i.gs, align 1
  %i.gt = getelementptr i8, ptr %.1197, i64 56
  store <8 x i8> %wide.load596.3, ptr %next.gep595.3, align 1
  store <8 x i8> %wide.load597.3, ptr %i.gt, align 1
  %i.gu = icmp eq i64 %n.vec592, 64
  br i1 %i.gu, label %middle.block599, label %vector.body593.4

vector.body593.4:                                 ; preds = %vector.body593.3
  %next.gep595.4 = getelementptr i8, ptr %.1197, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %wide.load596.4 = load <8 x i8>, ptr %i.gv, align 1
  %wide.load597.4 = load <8 x i8>, ptr %i.gw, align 1
  %i.gx = getelementptr i8, ptr %.1197, i64 72
  store <8 x i8> %wide.load596.4, ptr %next.gep595.4, align 1
  store <8 x i8> %wide.load597.4, ptr %i.gx, align 1
  %i.gy = icmp eq i64 %n.vec592, 80
  br i1 %i.gy, label %middle.block599, label %vector.body593.5

vector.body593.5:                                 ; preds = %vector.body593.4
  %next.gep595.5 = getelementptr i8, ptr %.1197, i64 80
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 153
  %wide.load596.5 = load <8 x i8>, ptr %i.gz, align 1
  %wide.load597.5 = load <8 x i8>, ptr %i.ha, align 1
  %i.hb = getelementptr i8, ptr %.1197, i64 88
  store <8 x i8> %wide.load596.5, ptr %next.gep595.5, align 1
  store <8 x i8> %wide.load597.5, ptr %i.hb, align 1
  %i.hc = icmp eq i64 %n.vec592, 96
  br i1 %i.hc, label %middle.block599, label %vector.body593.6

vector.body593.6:                                 ; preds = %vector.body593.5
  %next.gep595.6 = getelementptr i8, ptr %.1197, i64 96
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 169
  %wide.load596.6 = load <8 x i8>, ptr %i.hd, align 1
  %wide.load597.6 = load <8 x i8>, ptr %i.he, align 1
  %i.hf = getelementptr i8, ptr %.1197, i64 104
  store <8 x i8> %wide.load596.6, ptr %next.gep595.6, align 1
  store <8 x i8> %wide.load597.6, ptr %i.hf, align 1
  br label %middle.block599

middle.block599:                                  ; preds = %vector.body593.6, %vector.body593.5, %vector.body593.4, %vector.body593.3, %vector.body593.2, %vector.body593.1, %vector.ph590
  %cmp.n600 = icmp eq i64 %n.vec592, %wide.trip.count393
  br i1 %cmp.n600, label %._crit_edge331, label %vec.epilog.iter.check604

vec.epilog.iter.check604:                         ; preds = %middle.block599
  %min.epilog.iters.check605 = icmp eq i64 %n.mod.vf591, 0
  br i1 %min.epilog.iters.check605, label %vec.epilog.scalar.ph603.preheader, label %vec.epilog.ph606, !prof !28

vec.epilog.ph606:                                 ; preds = %vector.main.loop.iter.check588, %vec.epilog.iter.check604
  %vec.epilog.resume.val601 = phi i64 [ %n.vec592, %vec.epilog.iter.check604 ], [ 0, %vector.main.loop.iter.check588 ]
  %n.vec608 = and i64 %wide.trip.count393, 124    ; 4 uses
  %i.hg = getelementptr i8, ptr %.1197, i64 %n.vec608 ; 2 uses
  br label %vec.epilog.vector.body609

vec.epilog.vector.body609:                        ; preds = %vec.epilog.vector.body609, %vec.epilog.ph606
  %index610 = phi i64 [ %vec.epilog.resume.val601, %vec.epilog.ph606 ], [ %index.next613, %vec.epilog.vector.body609 ] ; 3 uses
  %next.gep611 = getelementptr i8, ptr %.1197, i64 %index610
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gc, i64 %index610
  %wide.load612 = load <4 x i8>, ptr %i.hh, align 1
  store <4 x i8> %wide.load612, ptr %next.gep611, align 1
  %index.next613 = add nuw i64 %index610, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next613, %n.vec608
  br i1 %i.hi, label %vec.epilog.middle.block614, label %vec.epilog.vector.body609, !llvm.loop !29

vec.epilog.middle.block614:                       ; preds = %vec.epilog.vector.body609
  %cmp.n615 = icmp eq i64 %n.vec608, %wide.trip.count393
  br i1 %cmp.n615, label %._crit_edge331, label %vec.epilog.scalar.ph603.preheader

vec.epilog.scalar.ph603.preheader:                ; preds = %vector.memcheck584, %iter.check602, %vec.epilog.iter.check604, %vec.epilog.middle.block614
  %indvars.iv390.ph = phi i64 [ 0, %iter.check602 ], [ 0, %vector.memcheck584 ], [ %n.vec592, %vec.epilog.iter.check604 ], [ %n.vec608, %vec.epilog.middle.block614 ] ; 4 uses
  %.2198328.ph = phi ptr [ %.1197, %iter.check602 ], [ %.1197, %vector.memcheck584 ], [ %i.gf, %vec.epilog.iter.check604 ], [ %i.hg, %vec.epilog.middle.block614 ] ; 2 uses
  %i.hj = sub nsw i64 %wide.trip.count393, %indvars.iv390.ph
  %xtraiter704 = and i64 %i.hj, 7                 ; 2 uses
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol

vec.epilog.scalar.ph603.prol:                     ; preds = %vec.epilog.scalar.ph603.preheader, %vec.epilog.scalar.ph603.prol
  %indvars.iv390.prol = phi i64 [ %indvars.iv.next391.prol, %vec.epilog.scalar.ph603.prol ], [ %indvars.iv390.ph, %vec.epilog.scalar.ph603.preheader ] ; 2 uses
  %.2198328.prol = phi ptr [ %i.hm, %vec.epilog.scalar.ph603.prol ], [ %.2198328.ph, %vec.epilog.scalar.ph603.preheader ] ; 2 uses
  %prol.iter706 = phi i64 [ %prol.iter706.next, %vec.epilog.scalar.ph603.prol ], [ 0, %vec.epilog.scalar.ph603.preheader ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv390.prol
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.2198328.prol, i64 1 ; 3 uses
  store i8 %i.hl, ptr %.2198328.prol, align 1
  %indvars.iv.next391.prol = add nuw nsw i64 %indvars.iv390.prol, 1 ; 2 uses
  %prol.iter706.next = add i64 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i64 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol, !llvm.loop !30

vec.epilog.scalar.ph603.prol.loopexit:            ; preds = %vec.epilog.scalar.ph603.prol, %vec.epilog.scalar.ph603.preheader
  %.lcssa667.unr = phi ptr [ poison, %vec.epilog.scalar.ph603.preheader ], [ %i.hm, %vec.epilog.scalar.ph603.prol ]
  %indvars.iv390.unr = phi i64 [ %indvars.iv390.ph, %vec.epilog.scalar.ph603.preheader ], [ %indvars.iv.next391.prol, %vec.epilog.scalar.ph603.prol ]
  %.2198328.unr = phi ptr [ %.2198328.ph, %vec.epilog.scalar.ph603.preheader ], [ %i.hm, %vec.epilog.scalar.ph603.prol ]
  %i.hn = sub nsw i64 %indvars.iv390.ph, %wide.trip.count393
  %i.ho = icmp ugt i64 %i.hn, -8
  br i1 %i.ho, label %._crit_edge331, label %vec.epilog.scalar.ph603

bb.am:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hp = zext nneg i8 %.1209 to i32
  %.neg253 = sub nsw i32 %i.hp, %.lcssa
  %i.hq = sext i32 %.neg253 to i64
  %i.hr = getelementptr inbounds i8, ptr %.2.lcssa, i64 %i.hq ; 2 uses
  %i.hs = icmp slt i8 %.1209, %.2221.lcssa
  br i1 %i.hs, label %iter.check568, label %._crit_edge326

iter.check568:                                    ; preds = %bb.aa, %bb.ad, %bb.am
  %i.ht = phi ptr [ %i.hr, %bb.am ], [ %.0194296, %bb.ad ], [ %.0194296, %bb.aa ] ; 7 uses
  %.1197425434450 = phi ptr [ %.1197, %bb.am ], [ %.0196295, %bb.ad ], [ %.0196295, %bb.aa ] ; 4 uses
  %.1209423435448 = phi i8 [ %.1209, %bb.am ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %.2221.lcssa436447 = phi i8 [ %.2221.lcssa, %bb.am ], [ 1, %bb.ad ], [ 1, %bb.aa ] ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.hv = zext i8 %.1209423435448 to i64          ; 8 uses
  %wide.trip.count388 = zext nneg i8 %.2221.lcssa436447 to i64 ; 4 uses
  %i.hw = sub nsw i64 %wide.trip.count388, %i.hv  ; 7 uses
  %min.iters.check552 = icmp ult i64 %i.hw, 8
  br i1 %min.iters.check552, label %vec.epilog.scalar.ph569.preheader, label %vector.memcheck550

vector.memcheck550:                               ; preds = %iter.check568
  %i.hx = ptrtoaddr ptr %i.ht to i64
  %i.hy = add i64 %i.c, %i.hv
  %i.hz = sub i64 %i.hy, %i.hx
  %i.ia = add i64 %i.hz, 64
  %diff.check551 = icmp ult i64 %i.ia, 31
  br i1 %diff.check551, label %vec.epilog.scalar.ph569.preheader, label %vector.main.loop.iter.check553

vector.main.loop.iter.check553:                   ; preds = %vector.memcheck550
  %min.iters.check554 = icmp ult i64 %i.hw, 32
  br i1 %min.iters.check554, label %vec.epilog.ph572, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check553
  %n.mod.vf556 = and i64 %i.hw, 24
  %n.vec557 = and i64 %i.hw, -32                  ; 5 uses
  %i.ib = add nsw i64 %n.vec557, %i.hv
  %i.ic = getelementptr i8, ptr %i.ht, i64 %n.vec557 ; 2 uses
  %invariant.gep761 = getelementptr i8, ptr %i.hu, i64 %i.hv
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph555
  %index559 = phi i64 [ 0, %vector.ph555 ], [ %index.next563, %vector.body558 ] ; 3 uses
  %next.gep560 = getelementptr i8, ptr %i.ht, i64 %index559 ; 2 uses
  %i.id = getelementptr i8, ptr %next.gep560, i64 16
  %wide.load561 = load <16 x i8>, ptr %next.gep560, align 1
  %wide.load562 = load <16 x i8>, ptr %i.id, align 1
  %gep762 = getelementptr i8, ptr %invariant.gep761, i64 %index559 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %gep762, i64 16
  store <16 x i8> %wide.load561, ptr %gep762, align 1
  store <16 x i8> %wide.load562, ptr %i.ie, align 1
  %index.next563 = add nuw i64 %index559, 32      ; 2 uses
end_hunk_0
